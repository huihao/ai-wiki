---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# SIMD

## Definition

Single Instruction Multiple Data — a parallel computing paradigm where a single CPU instruction operates on multiple data elements simultaneously. In the context of matrix multiplication, SIMD enables processing multiple floating-point values per cycle via vector registers (e.g., AVX2 YMM registers hold 8 fp32 values). The VFMADD instruction computes `(YMM1 * YMM2) + YMM3` — 16 FLOPs per instruction at 0.5 cycle throughput.

## Related Concepts

- [[cpu-registers]] — YMM registers for AVX2 SIMD operations
- [[loop-reordering]] — prerequisite: memory access patterns must be sequential for SIMD to apply
- [[tiling-strategies]] — cache-friendly tiling enables SIMD in the inner loop
- [[flops]] — SIMD is the primary mechanism for achieving high FLOP/s

## Sources

- [[fast-mmm-cpu-from-scratch]] — SIMD FMA achieving near-theoretical peak in MMM

## Evolution

- **Scalar processing**: One floating-point operation per instruction. Matrix multiplication inner loops process one element at a time
- **SSE (2001)**: 128-bit registers, 4 fp32 operations per instruction
- **AVX2 (2013)**: 256-bit YMM registers, 8 fp32 operations per instruction. VFMADD231PS: fused multiply-add on 8 pairs simultaneously
- **AVX-512 (2016)**: 512-bit ZMM registers, 16 fp32 per instruction. Theoretical peak doubles, but power/thermal constraints limit sustained throughput on many CPUs
