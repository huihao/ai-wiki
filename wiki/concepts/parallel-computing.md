---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Parallel Computing

## Definition

Parallel computing is the simultaneous execution of multiple computational operations to solve problems faster than sequential processing. In the context of GPU programming, parallel computing harnesses thousands of lightweight threads organized into hierarchical structures (threads, warps, blocks, grids) that execute across hundreds of Streaming Multiprocessors. This architecture makes GPUs the dominant platform for machine learning training and inference, where the same mathematical operations must be applied independently to millions of data elements.

## Key Aspects

- **GPU thread hierarchy**: CUDA organizes parallel execution into threads (individual execution units), warps (groups of 32 threads executing in lockstep), thread blocks (groups of warps sharing SM resources and synchronization), and grids (collections of blocks dispatched across the GPU). This hierarchy maps naturally to data-parallel problems where the same operation applies to many independent data elements.
- **CUDA programming model**: CUDA C++ enables developers to write `__global__` kernel functions that are launched across the GPU with an execution configuration `<<<blocks, threads>>>`. Grid-stride loops allow kernels to process arbitrarily large datasets regardless of the number of blocks launched. Progressive optimization from single-thread to multi-block execution can yield 2000x+ speedups.
- **Memory hierarchy and bandwidth**: GPUs feature a multi-level memory hierarchy: HBM (80-192GB, high bandwidth), L2 cache, shared memory/L1 (256KB per SM), and registers. Memory coalescing -- ensuring threads in a warp access contiguous memory addresses -- is critical for achieving peak bandwidth. Unified Memory simplifies programming by providing a single address space across CPU and GPU, with prefetching to avoid page-fault overhead.
- **Parallelism strategies for ML**: Data parallelism shards data across GPUs (each processes a different batch). Tensor parallelism shards individual layers. Pipeline parallelism shards the model sequentially across GPUs. Expert parallelism distributes Mixture-of-Experts layers. Modern LLM training combines all four: DeepSeek V3 uses 64-way EP + 16-way PP + 2-way DP across 2048 H800s.
- **Collective communication**: Multi-GPU parallelism requires efficient collective operations (AllGather, ReduceScatter, AllReduce) implemented via NCCL. NVLink provides high-bandwidth intra-node communication (450 GB/s on H100), while InfiniBand handles scale-out networking. In-network reductions via SHARP provide ~30% improvement over software-only collectives.
- **Roofline analysis**: The roofline model determines whether a workload is compute-bound or memory-bound by comparing arithmetic intensity (FLOPs/byte) to hardware ratios. This guides optimization: memory-bound kernels need better data reuse and coalescing, while compute-bound kernels need more arithmetic operations per byte loaded.

## Related Concepts

- [[cuda-programming]] -- NVIDIA's parallel computing platform and programming model
- [[gpu-parallel-computing]] -- GPU-specific parallel computing concepts and techniques
- [[cuda-architecture]] -- the hardware architecture underlying GPU parallelism
- [[gpu-memory-hierarchy]] -- memory subsystem that enables efficient parallel data access
- [[gpu-cloud-computing]] -- cloud infrastructure for GPU parallel computing

## Sources

- [[resources-gpu-programming]] -- LeetGPU platform for learning and practicing GPU parallel programming
- [[an-even-easier-introduction-to-cuda]] -- step-by-step CUDA tutorial demonstrating parallel optimization
- [[cuda-architecture]] -- GPU hardware architecture covering SMs, memory hierarchy, and execution
- [[gpu-programming]] -- GPU programming concepts and techniques for parallel computation
