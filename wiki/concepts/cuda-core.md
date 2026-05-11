---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# CUDA Core

## Definition

A CUDA core is the fundamental processing unit within NVIDIA GPUs that executes arithmetic and logic operations in parallel. Multiple CUDA cores are organized into Streaming Multiprocessors (SMs), and thousands of cores across the GPU work together to achieve massive parallelism for computational workloads.

## Key Aspects

- Each CUDA core performs a single floating-point or integer operation per clock cycle
- Cores are grouped into Streaming Multiprocessors (SMs), which share resources like shared memory, L1 cache, and registers
- A modern GPU contains thousands of CUDA cores across many SMs (e.g., NVIDIA T4 has 2560 cores across 40 SMs)
- CUDA cores excel at SIMT (Single Instruction, Multiple Thread) execution: all threads in a warp execute the same instruction on different data
- The ratio of CUDA cores to memory bandwidth determines whether a workload is compute-bound or memory-bound
- CUDA cores are distinct from tensor cores (designed for matrix multiply-accumulate) and RT cores (designed for ray tracing)
- Understanding CUDA core utilization is essential for profiling and optimizing GPU kernel performance

## Related Concepts

- [[cuda-execution-configuration]]
- [[cuda-optimization]]
- [[gpu-parallel-computing]]
- [[streaming-multiprocessors]]
- [[tensor-cores]]

## Sources

- [[cuda-architecture]]
