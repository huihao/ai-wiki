---
created: 2026-04-29
updated: 2026-05-09
tags: [cuda, gpu, parallel-computing]
sources: 2
---

# CUDA Kernels

## Definition
CUDA kernels are functions written in CUDA C++ that execute on NVIDIA GPU devices in massively parallel fashion. Marked with the `__global__` keyword, they are launched with an execution configuration specifying the number of thread blocks and threads per block, enabling thousands of threads to process data simultaneously.

## Key Aspects
- Kernels are `__global__` functions that run on the GPU and are called from CPU code
- Execution configuration `<<<blocks, threads>>>` specifies the parallel launch parameters
- Thread blocks group threads that can cooperate via shared memory and synchronization
- Grid-stride loops allow kernels to handle arbitrary data sizes regardless of grid dimensions
- Unified Memory (`cudaMallocManaged`) provides a single address space accessible from both CPU and GPU
- Memory prefetching (`cudaMemPrefetchAsync`) eliminates page-fault bottlenecks in unified memory
- Profiling with NVIDIA Nsight Systems reveals whether kernels are bandwidth-bound or compute-bound
- Systematic optimization can achieve 2000x speedup over single-threaded CPU execution

## Related Concepts
- [[cuda-megakernel]]
- [[floating-point-arithmetic]]

## Sources
- [[an-even-easier-introduction-to-cuda]]
- [[cuda-programming]]
