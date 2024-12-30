#define _GNU_SOURCE
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <sched.h>
#include <omp.h>

#define CACHELINE 64
#define CORES (CORES_M * CORES_N)

#define OFFSET2D(x, y, ld) ((x) * (ld) + (y))
#define OFFSET3D(x, y, z, ld1, ld2) ((x) * (ld1) * (ld2) + (y) * (ld2) + (z))

void bind_thread_to_cpu(int cpu_id) {
    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);
    CPU_SET(cpu_id, &cpuset);

    if (sched_setaffinity(0, sizeof(cpu_set_t), &cpuset) != 0) {
        perror("sched_setaffinity");
    }
}

// this program is to test the ld/st performance of GEMM workloads
// the matrix shape in MxNxK GEMM:
//     A: MxK int8 array, row major, [M, K] in memory
//     B: KxN int8 array, col major, [N, K] in memory
//     C: MxM int32 array, row major, [M, N] in memory

// to simulate the computation
int32_t cpu_gemm_i8i8i32(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const size_t M, const size_t N, const size_t K) {

    int32_t sum = 0;
    for (size_t m = 0; m < M; m++) {
        for (size_t n = 0; n < N; n += CACHELINE) {
            sum += C[OFFSET2D(m, n, N)];
        }
    }

    for (size_t m = 0; m < M; m ++) {
        for (size_t k = 0; k < K; k += CACHELINE) {
            sum += A[OFFSET2D(m, k, K)] * (N / TN);
        }
    }
    for (size_t n = 0; n < N; n++) {
        for (size_t k = 0; k < K; k += CACHELINE) {
            sum += B[OFFSET2D(n, k, K)] * (M / TM);
        }
    }

    return sum;
}

// input: A: [M, K], B: [N, K], C: [M, N]
int32_t amx_gemm_i8i8i32_omp_tiling(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const size_t M, const size_t N, const size_t K);

// input: A: [M, K], B: [N, K], C: [M, N]
int32_t amx_gemm_i8i8i32(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const size_t M, const size_t N, const size_t K) {

    return amx_gemm_i8i8i32_omp_tiling(A, B, C, M, N, K);
}

int32_t gemm_load_tile_int8(int8_t * __restrict__ ptr,
        const size_t M, const size_t N, const size_t ld) {

    volatile register int32_t sum = 0;
    for (size_t m = 0; m < M; m++) {
        for (size_t n = 0; n < N; n += CACHELINE) {
            sum += ptr[OFFSET2D(m, n, ld)];
        }
    }
    return sum;
}

int32_t gemm_load_tile_int32(int32_t * __restrict__ ptr,
        const size_t M, const size_t N, const size_t ld) {

    volatile register int32_t sum = 0;
    for (size_t m = 0; m < M; m++) {
        for (size_t n = 0; n < N; n += CACHELINE) {
            sum += ptr[OFFSET2D(m, n, ld)];
        }
    }
    return sum;
}

void gemm_store_tile_int32(int32_t * __restrict__ ptr,
        const size_t M, const size_t N, const size_t ld, const int32_t val) {

    for (size_t m = 0; m < M; m++) {
        for (size_t n = 0; n < N; n += CACHELINE) {
            ptr[OFFSET2D(m, n, ld)] = val;
        }
    }
}

// input: A: [TM, K], B: [TN, K], C: [TM, TN]
int32_t amx_gemm_i8i8i32_tile(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C, const size_t K,
        const size_t lda, const size_t ldb, const size_t ldc) {

    volatile register int32_t sum = 0;
    sum += gemm_load_tile_int32(C, TM, TN, ldc);
    for (size_t k = 0; k < K; k += TK) {
        sum += gemm_load_tile_int8(&A[k], TM, (K - k) < TK ? (K - k) : TK, lda);
        sum += gemm_load_tile_int8(&B[k], TN, (K - k) < TK ? (K - k) : TK, ldb);
    }
    gemm_store_tile_int32(C, TM, TN, ldc, sum);

    return sum;
}

// input: A: [M, K], B: [N, K], C: [M, N]
int32_t amx_gemm_i8i8i32_omp_tiling(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const size_t M, const size_t N, const size_t K) {

    int32_t result[CORES];
    #pragma omp parallel num_threads(CORES)
    {
        int thread_id = omp_get_thread_num();
        bind_thread_to_cpu(CORE_START + thread_id);

        int tm = thread_id / CORES_N * TM;
        int tn = thread_id % CORES_N * TN;

        volatile register int32_t sum = 0;
        for (size_t i = tm; i < M; i += TM * CORES_M) {
            for (size_t j = tn; j < N; j += TN * CORES_N) {
                sum += amx_gemm_i8i8i32_tile(
                    &A[OFFSET2D(i, 0, K)],
                    &B[OFFSET2D(j, 0, K)],
                    &C[OFFSET2D(i, j, N)], K, K, K, N);
            }
        }
        result[thread_id] = sum;
    }

    int32_t sum = 0;
    for (int i = 0; i < CORES; i++) {
        sum += result[i];
    }

    return sum;
}

void test_correctness(
        const size_t M, const size_t N, const size_t K,
        const size_t mem_align) {

    int8_t *_A = (int8_t *)malloc(M * K * sizeof(int8_t) + mem_align);
    int8_t *_B = (int8_t *)malloc(K * N * sizeof(int8_t) + mem_align);
    int32_t *_C = (int32_t *)malloc(M * N * sizeof(int32_t) + mem_align);

    int8_t *A = (int8_t *)(((size_t)_A + mem_align) & ~(mem_align - 1));
    int8_t *B = (int8_t *)(((size_t)_B + mem_align) & ~(mem_align - 1));
    int32_t *C = (int32_t *)(((size_t)_C + mem_align) & ~(mem_align - 1));

    for (size_t i = 0; i < M * K; i++) A[i] = rand() % 256;
    for (size_t i = 0; i < K * N; i++) B[i] = rand() % 256;
    for (size_t i = 0; i < M * N; i++) C[i] = rand();

    int32_t result_cpu = cpu_gemm_i8i8i32(A, B, C, M, N, K);
    int32_t result_amx = amx_gemm_i8i8i32(A, B, C, M, N, K);

    int correct = result_cpu == result_amx;
    if (!correct) {
        printf("Test Failed: M N K = %5ld %5ld %5ld, "
               "Mismatch at Result: %d != %d\n",
               M, N, K, result_cpu, result_amx);
    } else {
        printf("Test passed: M N K = %5ld %5ld %5ld\n", M, N, K);
    }
    free(_A); free(_B); free(_C);
}

void test_performance(
        const size_t M, const size_t N, const size_t K,
        const size_t mem_align, const uint32_t num_repeats) {

    int8_t *_A = (int8_t *)malloc(M * K * sizeof(int8_t) + mem_align);
    int8_t *_B = (int8_t *)malloc(K * N * sizeof(int8_t) + mem_align);
    int32_t *_C = (int32_t *)malloc(M * N * sizeof(int32_t) + mem_align);

    int8_t *A = (int8_t *)(((size_t)_A + mem_align) & ~(mem_align - 1));
    int8_t *B = (int8_t *)(((size_t)_B + mem_align) & ~(mem_align - 1));
    int32_t *C = (int32_t *)(((size_t)_C + mem_align) & ~(mem_align - 1));

    memset(A, 1, M * K * sizeof(int8_t));
    memset(B, 1, N * K * sizeof(int8_t));
    memset(C, 1, M * N * sizeof(int32_t));

    int32_t result = amx_gemm_i8i8i32(A, B, C, M, N, K); // warm up

    struct timespec start_time, end_time;
    clock_gettime(CLOCK_MONOTONIC, &start_time);
    for (uint32_t i = 0; i < num_repeats; i++)
        result += amx_gemm_i8i8i32(A, B, C, M, N, K);
    clock_gettime(CLOCK_MONOTONIC, &end_time);

    uint64_t mac_count = (uint64_t)M * N * K * num_repeats;
    uint64_t ideal_mac_per_cycle = 1024;

    uint64_t nanoseconds = (end_time.tv_sec - start_time.tv_sec) * 1e9 +
                           (end_time.tv_nsec - start_time.tv_nsec);
    double elapsed_time = (double)nanoseconds / 1e9;

    double TOPS = (double)mac_count * 2 / 1e12 / elapsed_time;

    printf("M N K = %5ld %5ld %5ld, Elapsed time = %10.6f s, Result = %08x, "
           "Performance = %6.2f TOPS\n", M, N, K, elapsed_time, result, TOPS);

    free(_A); free(_B); free(_C);
}

int main() {
    printf("Test %d CPU Cores (%d Cores x %d Cores) (Core %d - Core %d), ",
            CORES, CORES_M, CORES_N, CORE_START, CORE_START + CORES - 1);
    printf("TM TN TK = %d %d %d\n", TM, TN, TK);

    size_t mem_align = 4096;
    const int num_repeats = 10;

    // test correctness
    srand(time(0));
    for (int i = 0; i < 5; i++) {
        const size_t M_align = 512;
        const size_t N_align = 512;
        const size_t K_align = 64;
        size_t M = (rand() % 4096 + M_align) / M_align * M_align;
        size_t N = (rand() % 4096 + N_align) / N_align * N_align;
        size_t K = (rand() % 4096 + K_align) / K_align * K_align;
        test_correctness(M, N, K, mem_align);
    }

    // test performance
    for (size_t i = 512; i <= 32768; i *= 2) {
        for (size_t j = 512; j <= 32768; j *= 2) {
            test_performance(i, i, j, mem_align, num_repeats);
            fflush(stdout);
        }
    }

    return 0;
}