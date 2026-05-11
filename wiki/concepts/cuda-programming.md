---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# CUDA Programming

Parallel computing platform and programming model developed by NVIDIA for GPU acceleration. Enables massively parallel computation using thousands of concurrent GPU threads, accessible through CUDA C++ with special syntax for kernel functions and execution configuration.

## Key Components

- **Kernels**: Functions marked `__global__` that execute on GPU device
- **Execution Configuration**: Syntax `<<<blocks, threads>>>` specifying parallel launch parameters
- **Thread Blocks**: Groups of CUDA threads executing together on a single Streaming Multiprocessor (SM)
- **Grid**: Collection of all thread blocks launched for a kernel
- **Unified Memory**: Single memory space accessible from both CPU and GPU code via `cudaMallocManaged`

## Performance Optimization

Key techniques for achieving high performance:
- **Grid-stride loops**: Process arrays larger than thread count by striding across entire grid
- **Memory prefetching**: Use `cudaMemPrefetchAsync` to migrate data to GPU before kernel execution
- **Profiling**: Tools like Nsight Systems (`nsys`) identify bottlenecks (memory vs. compute bound)
- **Bandwidth optimization**: Achieve near-peak memory bandwidth (e.g., 265 GB/s on T4 GPU = 83% of 320 GB/s peak)

## Example Achievement

In [[an-even-easier-introduction-to-cuda|An Even Easier Introduction to CUDA]], array addition kernel achieves:
- Single-threaded CPU: 91.8ms (137 MB/s)
- Single GPU block (256 threads): 2.05ms (6 GB/s, 45x speedup)
- Multiple blocks with prefetching: 47.5μs (265 GB/s, 1932x speedup)

## Use Cases

- Deep learning training and inference
- Dense matrix linear algebra
- Image and signal processing
- Physical simulations
- Bandwidth-bound and compute-bound workloads

## Related Concepts

- [[gpu-parallel-computing|GPU Parallel Computing]] — execution paradigm
- [[cuda-kernels|CUDA Kernels]] — GPU-executed functions
- [[thread-blocks|Thread Blocks]] — thread grouping
- [[unified-memory|Unified Memory]] — memory management
- [[nsight-systems-profiler|Nsight Systems Profiler]] — performance analysis tool