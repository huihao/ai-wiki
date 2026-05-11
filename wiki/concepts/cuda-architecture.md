---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# CUDA Architecture

## Definition

CUDA (Compute Unified Device Architecture) is NVIDIA's parallel computing platform and programming model that enables developers to use NVIDIA GPUs for general-purpose processing. The architecture provides a hierarchy of threads, memory, and execution units optimized for massively parallel computation.

## Components

### Hardware Architecture
- **Streaming Multiprocessor (SM)**: Core execution unit containing multiple CUDA cores, tensor cores, and special function units
- **CUDA Core**: Individual processing element capable of executing floating-point or integer operations
- **Tensor Core**: Specialized unit for matrix multiply-accumulate operations, crucial for AI/ML acceleration
- **Warp Scheduler**: Hardware unit that schedules warp execution on SM resources
- **Register File**: Fast on-chip storage for thread-local variables
- **L1 Cache**: Low-latency cache per SM for frequently accessed data

### Software Model
- **Thread**: Single execution unit running a kernel function
- **Warp**: Group of 32 threads executing in lockstep SIMD fashion
- **Thread Block**: Group of threads that can cooperate via shared memory
- **Grid**: Collection of thread blocks executing a kernel
- **Kernel**: GPU function executed by many parallel threads

### Memory Hierarchy
- **Registers**: Per-thread private memory (fastest)
- **Shared Memory**: Per-block user-managed memory (fast, low latency)
- **L1/L2 Cache**: Hardware-managed caches
- **Global Memory**: Main GPU memory (high bandwidth, higher latency)
- **Constant Memory**: Read-only memory cached across all threads
- **Texture Memory**: Specialized memory with hardware interpolation

## Key Features

- **Massive Parallelism**: Thousands of concurrent threads across hundreds of cores
- **SIMT Architecture**: Single Instruction, Multiple Thread execution model
- **Memory Coalescing**: Automatic combining of memory accesses for bandwidth optimization
- **Warp Synchronization**: Threads in a warp execute in lockstep
- **Dynamic Parallelism**: Kernels can launch other kernels from GPU

## Applications in AI/ML

- Accelerating transformer model training and inference
- Matrix operations in neural network layers
- Tensor cores provide 4x-8x speedup for mixed-precision training
- Batch processing for inference throughput

## Related Concepts

- [[streaming-multiprocessor|Streaming Multiprocessor]] — Core GPU execution unit
- [[cuda-core|CUDA Core]] — Individual processing unit
- [[tensor-core|Tensor Core]] — AI/ML acceleration unit
- [[warp|Warp]] — SIMD execution group
- [[kernel|Kernel]] — GPU execution function
- [[thread-hierarchy|Thread Hierarchy]] — Organization of parallel execution
- [[memory-hierarchy|Memory Hierarchy]] — GPU memory organization
- [[roofline-model|Roofline Model]] — Performance analysis framework
- [[occupancy|Occupancy]] — SM utilization metric

## Sources

- [[gpu-glossary|GPU Glossary]] — Comprehensive GPU terminology reference covering both hardware and software aspects of CUDA platform

## Cross-references

- [[nvidia|NVIDIA]] — GPU manufacturer and CUDA platform provider
- [[gpu-performance|GPU Performance]] — Optimization concepts
- [[parallel-computing|Parallel Computing]] — General parallelization principles