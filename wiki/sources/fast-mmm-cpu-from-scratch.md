---
created: 2026-05-12
updated: 2026-05-12
tags: [source]
sources: 1
---

# Fast Multidimensional Matrix Multiplication on CPU from Scratch

## Metadata

- **Author**: S. Boehm
- **Published**: 2022-08-14
- **URL**: https://siboehm.com/articles/22/Fast-MMM-on-CPU
- **Accessed**: 2026-05-12

## Summary

Step-by-step optimization of matrix multiplication from a naive 4.4s implementation down to 16ms for 1024x1024 fp32 matrices on a quad-core Intel i7-6700, approaching NumPy/MKL's 8ms. Covers cache-aware loop reordering, L1 tiling, multithreading, and SIMD vectorization with FMA instructions. Excellent practical reference for understanding CPU memory hierarchy and compute optimization.

## Key Takeaways

- **Naive baseline**: 4.4s for 1024x1024 MMM (2 GFLOPs). Compiler flags (-O3, -march=native, -ffast-math) bring it to 1.6s
- **Loop reordering (RIC)**: Swapping inner loops from RCI to RIC gives 16x speedup (1.6s → 89ms). The inner loop over columns of B and C now accesses memory sequentially, enabling SIMD vectorization
- **L1 tiling**: Block the I-dimension to fit L1d cache (32KB). Reduces cache thrashing from 89ms → 70ms
- **Multithreading**: OpenMP parallelism across R and C dimensions. 70ms → 16ms on 4 cores
- **SIMD FMA**: `VFMADD` instruction computes `(YMM1 * YMM2) + YMM3` — 16 FLOPs per instruction, throughput 0.5 cycles. Theoretical peak 32 FLOPs/core/cycle; MKL achieves 18
- **Arithmetic intensity**: 2N³ FLOPs for 2N² loads → compute-bound for typical matrix sizes. Loading 8MB from RAM takes ~200μs vs 8ms computation
- **Key insight**: Even simple loop reordering (no algorithmic change) produces the largest single improvement due to cache locality

## Entities Mentioned

- (none explicitly named)

## Concepts Mentioned

- [[tiling-strategies]] — L1 cache blocking for MMM
- [[loop-reordering]] — changing loop nest order for cache locality
- [[cache-blocking]] — blocking computation to fit cache
- [[roofline-model]] — compute vs memory bound analysis
- [[flops]] — floating point operations per second
- [[simd]] — single instruction multiple data vectorization
- [[memory-bandwidth]] — RAM throughput as bottleneck
- [[cpu-registers]] — YMM registers for AVX2 FMA

## Questions / Follow-ups

- How would these optimizations translate to GPU matrix multiplication?
- What is the impact of AVX-512 vs AVX2 on the theoretical peak?
