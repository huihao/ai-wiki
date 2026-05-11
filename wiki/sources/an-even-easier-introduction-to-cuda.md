---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# An Even Easier Introduction to CUDA

## Metadata

- **Author**: Mark Harris
- **Date**: 2025-05-02
- **URL**: https://developer.nvidia.com/blog/even-easier-introduction-cuda/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/An Even Easier Introduction to CUDA (Updated) _ NVIDIA Technical Blog.md

## Summary

A hands-on, step-by-step introduction to CUDA C++ programming for GPU parallel computing. The tutorial walks through implementing a simple array addition operation, progressively optimizing it from single-threaded CPU execution to multi-threaded GPU execution, demonstrating kernels, thread blocks, grid-stride loops, unified memory, and profiling with NVIDIA Nsight Systems. Achieves ~2000x speedup over single-threaded CPU execution through systematic optimization.

## Key Takeaways

- CUDA C++ enables massively parallel applications using thousands of GPU threads
- Key concepts: kernels (`__global__` functions), execution configuration (`<<<blocks, threads>>>`), unified memory (`cudaMallocManaged`)
- Three-step optimization progression demonstrated:
  - Single thread: 91.8ms (137 MB/s bandwidth)
  - Single block (256 threads): 2.05ms (6 GB/s, 45x speedup)
  - Multiple blocks with prefetching: 47.5μs (265 GB/s, 1932x speedup)
- Grid-stride loops allow flexible kernel execution across entire thread grid
- Unified Memory prefetching (`cudaMemPrefetchAsync`) eliminates page-fault bottlenecks
- Profiling with `nsys` reveals performance bottlenecks (memory vs. compute)
- GPU excels at both bandwidth-bound (265 GB/s achieved) and compute-bound workloads

## Entities Mentioned

- [[nvidia|NVIDIA]] — GPU hardware vendor and CUDA platform developer
- [[mark-harris|Mark Harris]] — NVIDIA developer and CUDA tutorial author

## Concepts Mentioned

- [[cuda-programming|CUDA Programming]] — Parallel computing platform and programming model for NVIDIA GPUs
- [[gpu-parallel-computing|GPU Parallel Computing]] — Executing computations across thousands of concurrent GPU threads
- [[cuda-kernels|CUDA Kernels]] — Functions marked `__global__` that execute on GPU device
- [[thread-blocks|Thread Blocks]] — Groups of CUDA threads executing together on a single SM
- [[grid-stride-loops|Grid-Stride Loops]] — Loop pattern where threads stride across entire data array
- [[unified-memory|Unified Memory]] — Single memory space accessible from both CPU and GPU code
- [[cuda-execution-configuration|CUDA Execution Configuration]] — Syntax `<<<blocks, threads>>>` specifying parallel launch parameters
- [[gpu-memory-bandwidth|GPU Memory Bandwidth]] — Rate of data transfer between GPU and its memory (T4: 320 GB/s peak)
- [[nsight-systems-profiler|Nsight Systems Profiler]] — NVIDIA tool for profiling CUDA application performance

## Raw Notes

The tutorial demonstrates three progressive optimizations to a simple array addition kernel, achieving 1932x speedup. The key insight is that memory bottlenecks (unified memory page faults) can dominate before computation optimization matters. Prefetching eliminates page-fault latency, allowing compute optimization to shine. The final version achieves 265 GB/s bandwidth (83% of T4's peak 320 GB/s), demonstrating GPU efficiency on bandwidth-bound kernels. Grid-stride loops provide flexibility: kernels work correctly regardless of grid size, enabling easy scaling.

## Questions / Follow-ups

- How do more complex kernels (matmul, convolutions) achieve compute-bound vs. bandwidth-bound performance?
- What are the trade-offs between unified memory and explicit memory transfers for production code?
- How does CUDA performance scale across different GPU architectures (T4 vs. A100 vs. H100)?