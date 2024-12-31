#ifndef __AMX_GEMM_H__
#define __AMX_GEMM_H__

#define _GNU_SOURCE
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <assert.h>
#include <sched.h>
#include <omp.h>

#define OFFSET2D(x, y, ld) ((x) * (ld) + (y))
#define OFFSET3D(x, y, z, ld1, ld2) ((x) * (ld1) * (ld2) + (y) * (ld2) + (z))

// CACHELINE: cache line size
#ifndef CACHELINE
#define CACHELINE 64
#endif

// TM, TN, TK: tile size
#ifndef TM
#define TM 1024
#endif

#ifndef TN
#define TN 512
#endif

#ifndef TK
#define TK 512
#endif

// SINGLE_CORE, MULTI_CORE: test single core or multi-core performance
//     10: single core
//     01: multi-core
#ifndef SINGLE_CORE
#define SINGLE_CORE 0
#endif

#ifndef MULTI_CORE
#define MULTI_CORE 0
#endif

// CORES_M, CORES_N:
//     number of tested cores in M and N dimension under MULTI_CORE mode
#ifndef CORES_M
#define CORES_M 4
#endif

#ifndef CORES_N
#define CORES_N 4
#endif

#ifndef CORES
#define CORES (CORES_M * CORES_N)
#endif

// CORE_START, CORE_STRIDE:
//     start and stride of tested core id under MULTI_CORE mode
//     set CORE_STRIDE = 2 if core 0 and core 1 are the same phisical core
#ifndef CORE_START
#define CORE_START 0
#endif

#ifndef CORE_STRIDE
#define CORE_STRIDE 1
#endif

// LOAD_C, LOAD_AB, STORE_C:
//     111: C = A * B + C
//     011: C = A * B
//     010: A * B main loop
#ifndef LOAD_C
#define LOAD_C 1
#endif

#ifndef LOAD_AB
#define LOAD_AB 1
#endif

#ifndef STORE_C
#define STORE_C 1
#endif

// APAD, BPAD, CPAD: padding elements for A, B, C
#ifndef APAD
#define APAD 64
#endif

#ifndef BPAD
#define BPAD 64
#endif

#ifndef CPAD
#define CPAD 16
#endif

void bind_thread_to_cpu(int cpu_id);

int32_t gemm_load_tile_int8(int8_t * __restrict__ ptr,
        const int M, const int N, const int ld);

int32_t gemm_load_tile_int32(int32_t * __restrict__ ptr,
        const int M, const int N, const int ld);

void gemm_store_tile_int32(int32_t * __restrict__ ptr,
        const int M, const int N, const int ld, const int32_t val);

int32_t cpu_gemm_i8i8i32(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc);

int32_t amx_gemm_i8i8i32(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc);

int32_t amx_gemm_i8i8i32_single_core(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc);

int32_t amx_gemm_i8i8i32_multi_core(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc);

int32_t amx_gemm_i8i8i32_tile(
        int8_t * __restrict__ A, int8_t * __restrict__ B,
        int32_t * __restrict__ C,
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc);

void test_correctness(
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc,
        const size_t mem_align);

void test_performance(
        const int M, const int N, const int K,
        const int lda, const int ldb, const int ldc,
        const size_t mem_align, const int num_repeats);

#endif // __AMX_GEMM_H__