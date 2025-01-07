#include "amx-gemm.h"

void bind_thread_to_cpu(int cpu_id) {
    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);
    CPU_SET(cpu_id, &cpuset);

    if (sched_setaffinity(0, sizeof(cpu_set_t), &cpuset) != 0) {
        perror("sched_setaffinity");
    }
}

int32_t gemm_load_tile_int8(int8_t * __restrict__ ptr,
        const int M, const int N, const int ld) {

    volatile register int32_t sum = 0;
    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n += CACHELINE / sizeof(int8_t)) {
            sum += ptr[OFFSET2D(m, n, ld)];
        }
    }
    return sum;
}

int32_t gemm_load_tile_int32(int32_t * __restrict__ ptr,
        const int M, const int N, const int ld) {

    volatile register int32_t sum = 0;
    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n += CACHELINE / sizeof(int32_t)) {
            sum += ptr[OFFSET2D(m, n, ld)];
        }
    }
    return sum;
}

void gemm_store_tile_int32(int32_t * __restrict__ ptr,
        const int M, const int N, const int ld, const int32_t val) {

    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n += CACHELINE / sizeof(int32_t)) {
            ptr[OFFSET2D(m, n, ld)] = val;
        }
    }
}

int32_t cpu_gemm_i8i8i32(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc) {

    assert(M > 0 && N > 0 && K > 0);
    assert(lda >= K && ldb >= K && ldc >= N);

    int32_t sum = 0;
    if (LOAD_C) {
        for (size_t m = 0; m < M; m++) {
            for (size_t n = 0; n < N; n += CACHELINE / sizeof(int32_t)) {
                sum += C[OFFSET2D(m, n, ldc)];
            }
        }
    }
    if (LOAD_AB) {
        for (size_t m = 0; m < M; m ++) {
            for (size_t k = 0; k < K; k += CACHELINE / sizeof(int8_t)) {
                sum += A[OFFSET2D(m, k, lda)] * ((N + TN - 1) / TN);
            }
        }
        for (size_t n = 0; n < N; n++) {
            for (size_t k = 0; k < K; k += CACHELINE / sizeof(int8_t)) {
                sum += B[OFFSET2D(n, k, ldb)] * ((M + TM - 1) / TM);
            }
        }
    }

    return sum;
}

int32_t amx_gemm_i8i8i32(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc) {

    assert(M > 0 && N > 0 && K > 0);
    assert(lda >= K && ldb >= K && ldc >= N);

    if (SINGLE_CORE) {
        return amx_gemm_i8i8i32_single_core(A, B, C, M, N, K, lda, ldb, ldc);
    } else if (MULTI_CORE) {
        return amx_gemm_i8i8i32_multi_core(A, B, C, M, N, K, lda, ldb, ldc);
    }
    return 0;
}

int32_t amx_gemm_i8i8i32_single_core(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc) {

    volatile register int32_t sum = 0;
    for (int i = 0; i < M; i += TM) {
        for (int j = 0; j < N; j += TN) {
            sum += amx_gemm_i8i8i32_tile(
                &A[OFFSET2D(i, 0, lda)],
                &B[OFFSET2D(j, 0, ldb)],
                &C[OFFSET2D(i, j, ldc)],
                M - i < TM ? M - i : TM,
                N - j < TN ? N - j : TN,
                K, lda, ldb, ldc);
        }
    }

    return sum;
}

int32_t amx_gemm_i8i8i32_multi_core(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc) {

    int32_t result[CORES];
    #pragma omp parallel num_threads(CORES)
    {
        int thread_id = omp_get_thread_num();
        bind_thread_to_cpu(CORE_START + thread_id * CORE_STRIDE);

        int tm = thread_id / CORES_N * TM;
        int tn = thread_id % CORES_N * TN;

        volatile register int32_t sum = 0;
        for (int i = tm; i < M; i += TM * CORES_M) {
            for (int j = tn; j < N; j += TN * CORES_N) {
                sum += amx_gemm_i8i8i32_tile(
                    &A[OFFSET2D(i, 0, lda)],
                    &B[OFFSET2D(j, 0, ldb)],
                    &C[OFFSET2D(i, j, ldc)],
                    M - i < TM ? M - i : TM,
                    N - j < TN ? N - j : TN,
                    K, lda, ldb, ldc);
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

int32_t amx_gemm_i8i8i32_tile(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc) {

    volatile register int32_t sum = 0;
    if (LOAD_C) {
        sum += gemm_load_tile_int32(C, M, N, ldc);
    }
    if (LOAD_AB) {
        for (int k = 0; k < K; k += TK) {
            sum += gemm_load_tile_int8(
                    &A[k], M, (K - k) < TK ? (K - k) : TK, lda);
            sum += gemm_load_tile_int8(
                    &B[k], N, (K - k) < TK ? (K - k) : TK, ldb);
        }
    }
    if (STORE_C) {
        gemm_store_tile_int32(C, M, N, ldc, sum);
    }

    return sum;
}

void test_correctness(
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc,
        const size_t mem_align) {

    assert(M > 0 && N > 0 && K > 0);
    assert(lda >= K && ldb >= K && ldc >= N);

    int8_t *_A = (int8_t *)malloc(M * lda * sizeof(int8_t) + mem_align);
    int8_t *_B = (int8_t *)malloc(N * ldb * sizeof(int8_t) + mem_align);
    int32_t *_C = (int32_t *)malloc(M * ldc * sizeof(int32_t) + mem_align);

    int8_t *A = (int8_t *)(((size_t)_A + mem_align) & ~(mem_align - 1));
    int8_t *B = (int8_t *)(((size_t)_B + mem_align) & ~(mem_align - 1));
    int32_t *C = (int32_t *)(((size_t)_C + mem_align) & ~(mem_align - 1));

    for (size_t i = 0; i < M * lda; i++) A[i] = rand() % 256;
    for (size_t i = 0; i < N * ldb; i++) B[i] = rand() % 256;
    for (size_t i = 0; i < M * ldc; i++) C[i] = rand();

    int32_t result_cpu = cpu_gemm_i8i8i32(A, B, C, M, N, K, lda, ldb, ldc);
    int32_t result_amx = amx_gemm_i8i8i32(A, B, C, M, N, K, lda, ldb, ldc);

    int correct = result_cpu == result_amx;
    if (!correct) {
        printf("Test Failed: M N K = %5d %5d %5d, "
               "Mismatch at Result: %d != %d\n",
               M, N, K, result_cpu, result_amx);
    } else {
        printf("Test passed: M N K = %5d %5d %5d\n", M, N, K);
    }
    free(_A); free(_B); free(_C);
}

void test_performance(
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc,
        const size_t mem_align, const int num_repeats) {

    assert(M > 0 && N > 0 && K > 0);
    assert(lda >= K && ldb >= K && ldc >= N);

    int8_t *_A = (int8_t *)malloc(M * lda * sizeof(int8_t) + mem_align);
    int8_t *_B = (int8_t *)malloc(N * ldb * sizeof(int8_t) + mem_align);
    int32_t *_C = (int32_t *)malloc(M * ldc * sizeof(int32_t) + mem_align);

    int8_t *A = (int8_t *)(((size_t)_A + mem_align) & ~(mem_align - 1));
    int8_t *B = (int8_t *)(((size_t)_B + mem_align) & ~(mem_align - 1));
    int32_t *C = (int32_t *)(((size_t)_C + mem_align) & ~(mem_align - 1));

    memset(A, 1, M * lda * sizeof(int8_t));
    memset(B, 1, N * ldb * sizeof(int8_t));
    memset(C, 1, M * ldc * sizeof(int32_t));

    int8_t *flush_cache = (int8_t *)malloc(FLUSH_CACHE_SIZE);
    int32_t result = 0; // amx_gemm_i8i8i32(A, B, C, M, N, K, lda, ldb, ldc);

    double elapsed_time = 0;
    for (uint32_t i = 0; i < num_repeats; i++) {
        if (FLUSH_CACHE) {
            if (SINGLE_CORE) {
                memset(flush_cache, 1, FLUSH_CACHE_SIZE);
            } else if (MULTI_CORE) {
                #pragma omp parallel for num_threads(CORES)
                for (int j = 0; j < CORES; j++) {
                    memset(&flush_cache[j * FLUSH_CACHE_SIZE / CORES], 1,
                           FLUSH_CACHE_SIZE / CORES);
                }
            }
        }
        struct timespec start_time, end_time;
        clock_gettime(CLOCK_MONOTONIC, &start_time);
        result += amx_gemm_i8i8i32(A, B, C, M, N, K, lda, ldb, ldc);
        clock_gettime(CLOCK_MONOTONIC, &end_time);

        uint64_t nanoseconds = (end_time.tv_sec - start_time.tv_sec) * 1e9 +
                               (end_time.tv_nsec - start_time.tv_nsec);
        elapsed_time += (double)nanoseconds / 1e9;
    }

    uint64_t mac_count = (uint64_t)M * N * K * num_repeats;
    uint64_t ideal_mac_per_cycle = 1024;

    double TOPS = (double)mac_count * 2 / 1e12 / elapsed_time;

    printf("M N K = %5d %5d %5d, Elapsed time = %10.6f s, Result = %08x, "
           "Performance = %6.2f TOPS\n", M, N, K, elapsed_time, result, TOPS);

    free(_A); free(_B); free(_C); free(flush_cache);
}

int main() {
    bind_thread_to_cpu(CORE_START);

    if (SINGLE_CORE) {
        printf("Test 1 CPU Core (Core %d), ", CORE_START);
    } else if (MULTI_CORE) {
        printf("Test %d CPU Cores (%d Cores x %d Cores)"
               "(Core %d - Core %d per %d Cores), ",
                CORES, CORES_M, CORES_N, CORE_START,
                CORE_START + CORES - 1, CORE_STRIDE);
    } else {
        printf("Error: No test selected, SINGLE_CORE == MULTI_CORE == 0\n");
        assert(0);
    }
    printf("TM TN TK = %d %d %d, ", TM, TN, TK);
    printf("LOAD_C = %d, LOAD_AB = %d, STORE_C = %d, ",
            LOAD_C, LOAD_AB, STORE_C);
    printf("A/B/C PAD = %d %d %d, ", APAD, BPAD, CPAD);
    if (FLUSH_CACHE) {
        printf("Flush Cache %d MB\n", FLUSH_CACHE_SIZE / 1024 / 1024);
    } else {
        printf("No Cache Flush\n");
    }

    size_t mem_align = 4096;
    const int num_repeats = 10;

    // test correctness
    srand(time(0));
    for (int i = 0; i < 5; i++) {
        const int K_align = CACHELINE / sizeof(int8_t);
        int M = rand() % 2048;
        int N = rand() % 2048;
        int K = (rand() % 2048 + K_align - 1) / K_align * K_align;
        test_correctness(M, N, K, K + APAD, K + BPAD, N + CPAD, mem_align);
    }

    // test performance
    for (int k = TEST_K_STRIDE; k <= TEST_K_MAX; k += TEST_K_STRIDE) {
        int m = TEST_M;
        int n = TEST_N;
        test_performance(m, n, k, k + APAD, k + BPAD, n + CPAD,
                         mem_align, num_repeats);
        fflush(stdout);
    }

    return 0;
}