---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# GPU Memory Hierarchy

## Definition

The GPU memory hierarchy is a multi-level storage architecture that governs how data moves between different memory types on a GPU, ranging from fast on-chip registers and shared memory to slower global (device) memory and host RAM. Understanding this hierarchy is critical for writing performant CUDA programs, as memory access patterns and coalescing determine whether kernels are memory-bound or compute-bound.

## Key Aspects

- **Registers**: Fastest storage, per-thread private memory; compiler-allocated, limited quantity
- **Shared Memory**: On-chip memory shared within a thread block; low-latency, used for data reuse and communication between threads
- **L1/L2 Cache**: Hardware-managed caches that accelerate global memory access patterns with temporal and spatial locality
- **Global Memory (VRAM)**: Large but high-latency device memory; performance depends heavily on coalesced access patterns
- **Memory Coalescing**: Grouping memory requests from threads in a warp into contiguous addresses; coalesced accesses achieve near-peak bandwidth while uncoalesced patterns cause serialization
- **Streaming Multiprocessors (SMs)**: Contain shared memory, registers, and execution units; each SM manages a fixed memory budget that must be shared across resident thread blocks
- Bandwidth varies dramatically by level: registers (sub-nanosecond) vs. global memory (hundreds of nanoseconds)
- CUDA Unified Memory provides a single address space spanning CPU and GPU, with automatic page migration

## Related Concepts

- [[gpu-parallel-computing]]
- [[gpu-memory-oversubscription]]
- [[hardware-design]]

## Sources

- [[memory-coalescing]]
- [[streaming-multiprocessor]]
