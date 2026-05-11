---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Occupancy

## Definition

Occupancy is a GPU performance metric that measures the ratio of active warps (groups of 32 threads executing concurrently) to the maximum possible warps on a streaming multiprocessor (SM). Higher occupancy means more of the SM's computational resources are being utilized, though it is not the sole determinant of performance.

## Key Aspects

- A streaming multiprocessor (SM) has a fixed number of registers, shared memory slots, and warp schedulers that limit how many warps can run simultaneously
- Occupancy is limited by whichever resource runs out first: registers per thread, shared memory per block, or maximum threads per SM
- High occupancy hides memory latency by keeping the GPU busy while some warps wait for data, but excessively high occupancy can reduce per-thread performance due to register pressure
- Kernel launch configuration (blocks x threads per block) directly affects occupancy -- the CUDA profiler reports achieved occupancy vs. theoretical maximum
- Grid-stride loops are occupancy-friendly: they work correctly with any grid size, allowing flexible scaling across different GPU architectures
- Occupancy is one of several GPU performance metrics alongside memory bandwidth, arithmetic throughput, and instruction mix
- Modern GPU architectures (A100, H100) have higher SM counts and improved warp scheduling, affecting optimal occupancy targets

## Related Concepts

- [[memory-bandwidth]]
- [[nsight-systems-profiler]]

## Sources

- [[cuda-architecture]]
- [[gpu-performance]]
