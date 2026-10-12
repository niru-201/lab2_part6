// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/vec_dot_q8_0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/vec_dot_q8_0.c"




# 1 "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/vec_dot_q8_0.h" 1



# 1 "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/stddef.h" 1 3 4
# 149 "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/stddef.h" 3 4

# 149 "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 216 "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 328 "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 5 "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/vec_dot_q8_0.h" 2
# 1 "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/stdint.h" 1 3 4
# 9 "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 438 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 501 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 502 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 503 "/usr/include/sys/cdefs.h" 2 3 4
# 439 "/usr/include/features.h" 2 3 4
# 462 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 463 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 140 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 141 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 10 "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/stdint.h" 2 3 4
# 6 "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/vec_dot_q8_0.h" 2
# 15 "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/vec_dot_q8_0.h"

# 15 "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/vec_dot_q8_0.h"
typedef uint16_t ggml_half;

typedef struct {
    ggml_half d;
    int8_t qs[32];
} block_q8_0;

float ggml_compute_fp16_to_fp32(ggml_half h);

void ggml_vec_dot_q8_0_q8_0(int n, float *s, size_t bs, const void *vx, size_t bx,
                            const void *vy, size_t by, int nrc);
# 6 "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/vec_dot_q8_0.c" 2



static float fp32_from_bits(uint32_t w)
{
    union { uint32_t u; float f; } v;
    v.u = w;
    return v.f;
}

static uint32_t fp32_to_bits(float f)
{
    union { float f; uint32_t u; } v;
    v.f = f;
    return v.u;
}






float ggml_compute_fp16_to_fp32(ggml_half h)
{
    const uint32_t w = (uint32_t) h << 16;
    const uint32_t sign = w & 0x80000000U;
    const uint32_t two_w = w + w;

    const uint32_t exp_offset = 0xE0U << 23;
    const float exp_scale = fp32_from_bits(0x7800000U);
    const float normalized = fp32_from_bits((two_w >> 4) + exp_offset) * exp_scale;

    const uint32_t magic_mask = 126U << 23;
    const float denormalized = fp32_from_bits((two_w >> 17) | magic_mask) - 0.5f;

    const uint32_t denormalized_cutoff = 1U << 27;
    const uint32_t result = sign |
        (two_w < denormalized_cutoff ? fp32_to_bits(denormalized) : fp32_to_bits(normalized));
    return fp32_from_bits(result);
}

void ggml_vec_dot_q8_0_q8_0(int n, float *s, size_t bs, const void *vx, size_t bx,
                            const void *vy, size_t by, int nrc)
{
    const int qk = 32;
    const int nb = n / qk;
    const block_q8_0 *x = (const block_q8_0 *) vx;
    const block_q8_0 *y = (const block_q8_0 *) vy;
    float sumf = 0;
    int ib, j;


    (void)(bs);
    (void)(bx);
    (void)(by);
    (void)(nrc);

    for (ib = 0; ib < nb; ++ib) {
        int sumi = 0;

        for (j = 0; j < qk; j++)
            sumi += x[ib].qs[j] * y[ib].qs[j];

        sumf += sumi * (ggml_compute_fp16_to_fp32(x[ib].d) * ggml_compute_fp16_to_fp32(y[ib].d));
    }

    *s = sumf;
}
