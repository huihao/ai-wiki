---
created: 2026-04-29
updated: 2026-05-09
tags: [gpu, performance]
sources: 1
---

# Memory Bound

## Definition

Memory bound describes a computational workload where performance is limited by the rate at which data can be moved from memory to the processor, rather than by the processor's computational throughput. In GPU kernel optimization and ML training, memory-bound operations (like attention mechanisms) have low arithmetic intensity and benefit from memory access optimization rather than raw compute improvements.

## Key Aspects

- Roofline analysis provides the framework for determining whether a kernel is compute-bound or memory-bound based on arithmetic intensity (FLOPs per byte of memory accessed)
- Memory-bound operations: attention computation, element-wise operations, dropout, layer normalization, and data movement/transposing
- Compute-bound operations: matrix multiplication (GEMM), convolution, and fused attention kernels
- For memory-bound kernels, optimization focuses on reducing memory access: caching, tiling, fusing operations, and improving data locality
- The memory wall is a growing concern: processor speed improvements outpace memory bandwidth improvements, making more kernels memory-bound over time
- FlashAttention is a key optimization for attention: it restructures the computation to be memory-efficient by fusing operations and avoiding materializing the full attention matrix
- Understanding the compute-bound vs. memory-bound distinction is essential for GPU kernel benchmarking and optimization

## Related Concepts

- [[locality-of-reference]]
- [[locality]]
- [[memory-compression]]

## Sources

- [[roofline-analysis]]
