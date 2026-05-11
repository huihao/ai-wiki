---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 2
---

# Nsight Systems Profiler

## Definition

NVIDIA Nsight Systems is a performance profiling tool for CUDA applications that visualizes the timeline of GPU and CPU activities, revealing bottlenecks in memory transfers, kernel execution, and thread utilization. It is essential for optimizing GPU code from initial implementation to peak performance.

## Key Aspects

- Nsight Systems (`nsys`) profiles CUDA applications by recording GPU kernel executions, memory operations, and CPU-GPU synchronization events
- The profiler reveals whether a kernel is memory-bound (waiting for data) or compute-bound (waiting for arithmetic), guiding optimization strategy
- In CUDA tutorials, profiling showed that unified memory page faults were the dominant bottleneck before optimization, not computation
- Grid-stride loops achieve near-optimal bandwidth (265 GB/s on T4 = 83% of peak 320 GB/s) when combined with memory prefetching
- The profiling workflow follows: baseline measurement, identify bottleneck, optimize, re-profile to verify improvement
- Profiling data includes kernel execution time, memory transfer volumes, occupancy metrics, and thread block configurations
- Essential for validating that optimizations (prefetching, kernel fusion, shared memory) actually improve performance rather than introduce new bottlenecks

## Related Concepts

- [[memory-bandwidth]]
- [[occupancy]]

## Sources

- [[an-even-easier-introduction-to-cuda]]
- [[cuda-programming]]
