---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Streaming Multiprocessor (SM)

## Definition

A Streaming Multiprocessor (SM) is the core hardware unit in NVIDIA GPUs that executes CUDA kernels. Each SM contains multiple CUDA cores, Tensor Cores, special function units, load/store units, warp schedulers, register files, and shared memory. SMs work independently and can execute different kernels concurrently.

## Key Components

- CUDA Cores — Integer and floating-point arithmetic units
- Tensor Cores — Specialized matrix multiply-accumulate units
- Special Function Units (SFU) — Transcendental functions (sin, cos, exp)
- Load/Store Units (LSU) — Memory access units
- Warp Scheduler — Hardware scheduling warps for execution
- Register File — Fast per-thread storage
- L1 Data Cache — Low-latency cache
- Shared Memory — User-managed scratchpad memory

## Related Concepts

- [[cuda-architecture|CUDA Architecture]] — Overall platform containing SMs
- [[warp|Warp]] — Execution unit within SMs (32 threads)
- [[tensor-core|Tensor Core]] — Specialized unit within SMs for AI
- [[gpu-memory-hierarchy|GPU Memory Hierarchy]] — SM-local memory components
- [[gpu-performance|GPU Performance]] — SM utilization metrics like occupancy
- [[warp-scheduler|Warp Scheduler]] — Hardware unit within SM

## Related Entities

- [[nvidia|NVIDIA]] — GPU manufacturer implementing SM architecture

## Sources

- [[gpu-glossary|GPU Glossary]]

## Evolution

SMs have evolved from early generations with basic cores to modern architectures featuring thousands of cores, specialized Tensor Cores for AI, and large register files. The number of SMs per GPU has grown from dozens to hundreds in modern data center GPUs (e.g., RTX 5090 has 170 SMs).
