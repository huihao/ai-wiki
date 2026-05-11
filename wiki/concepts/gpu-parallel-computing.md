---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# GPU Parallel Computing

## Definition

GPU parallel computing is the practice of executing massively parallel computations across thousands of GPU threads using CUDA or similar programming models. A GPU launches kernels (functions executing on the device) organized into thread blocks and grids, where threads within a block share on-chip memory and cooperate on sub-tasks while blocks run independently. This architecture achieves dramatic speedups (1000x+) over single-threaded CPU execution for data-parallel workloads.

## Key Aspects

- **Kernels**: Functions marked `__global__` that execute on the GPU; launched with execution configuration `<<<blocks, threads>>>`
- **Thread Blocks**: Groups of threads (typically 128-1024) that execute on a single streaming multiprocessor (SM) and can share shared memory
- **Grid-Stride Loops**: Threads stride across the entire data array, allowing kernels to work correctly regardless of grid size
- **Unified Memory**: `cudaMallocManaged` provides a single memory space accessible from both CPU and GPU, with automatic page migration
- **Progressive Optimization**: Memory bottlenecks (page faults) dominate before compute optimization matters; prefetching (`cudaMemPrefetchAsync`) eliminates page-fault latency
- **Achievable Speedups**: Array addition optimized from 91.8ms (single CPU thread) to 47.5 microseconds (GPU with prefetching) -- a 1932x speedup
- **Bandwidth-Bound vs. Compute-Bound**: GPUs excel at both; achieved bandwidth of 265 GB/s (83% of T4's 320 GB/s peak) on simple kernels
- **Profiling**: NVIDIA Nsight Systems (`nsys`) reveals whether bottlenecks are memory or compute

## Related Concepts

- [[gpu-memory-hierarchy]]
- [[gpu-memory-oversubscription]]
- [[hardware-design]]
- [[jax-optimization]]

## Sources

- [[an-even-easier-introduction-to-cuda]]
- [[cuda-programming]]
