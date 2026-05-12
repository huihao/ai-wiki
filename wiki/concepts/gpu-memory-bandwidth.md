---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# GPU Memory Bandwidth

## Definition

GPU memory bandwidth is the rate at which data can be read from or written to the GPU's dedicated memory (VRAM). It is a critical performance metric for ML inference and training, as many operations (matrix multiplications, attention computations, weight loading) are memory-bandwidth-bound rather than compute-bound. On a T4 GPU, peak bandwidth is 320 GB/s, and optimized CUDA kernels can achieve ~83% of this (265 GB/s).

## Key Aspects

- **Bandwidth-Bound vs. Compute-Bound**: Many ML operations are limited by how fast data can be moved from memory to compute units, not by the compute units themselves
- **Unified Memory Optimization**: CUDA unified memory with prefetching (`cudaMemPrefetchAsync`) eliminates page-fault bottlenecks, increasing effective bandwidth from 137 MB/s to 265 GB/s (1932x improvement)
- **Profiling Tools**: NVIDIA Nsight Systems (`nsys`) reveals whether a kernel is memory-bound or compute-bound, guiding optimization strategy
- **Grid-Stride Loop Efficiency**: Kernels using grid-stride loops achieve near-peak bandwidth because all threads are actively processing data without synchronization overhead
- **Impact on Inference**: LLM inference is predominantly memory-bandwidth-bound during the prefill and decode phases; higher bandwidth enables faster token generation

## Related Concepts
- [[gpu]]
- [[grid-stride-loops]]
- [[llm-inference]]

## Sources
- [[an-even-easier-introduction-to-cuda]]
