---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Memory Bandwidth Optimization

## Definition

Memory Bandwidth Optimization is the process of maximizing GPU memory throughput to achieve near-theoretical bandwidth limits. For memory-bound operations like LLM decode, bandwidth optimization is the primary performance constraint, requiring techniques like coalescing, prefetching, and cache management.

## Key Techniques

- **Memory Coalescing**: Combine thread accesses into efficient transactions
- **L1 Bypass**: Use L1::no_allocate hint for single-read weights
- **Prefetching**: Warm L2 cache with upcoming data during idle phases
- **Vector Loads**: 128-bit uint4 loads for 16 bf16 values per instruction
- **Weight Streaming**: Read weights exactly once, no reuse caching needed
- **Attention Overlap**: Prefetch weights while computing attention (bandwidth-light)

## Key Metrics

- Bandwidth utilization: Achieved vs. theoretical (e.g., 71% vs 100%)
- Step time breakdown: Weight reads vs. synchronization vs. overhead
- L2 cache hit rate: For prefetched data
- Memory controller efficiency: Concurrent region accesses

## Key Proponents / Critics

- [[alpin-dale|Alpin Dale]] — Achieved 71% utilization on RTX 5090
- [[nvidia|NVIDIA]] — Hardware providing bandwidth (GDDR7 on RTX 5090)

## Related Concepts

- [[memory-coalescing|Memory Coalescing]] — Fundamental access optimization
- [[roofline-model|Roofline Model]] — Framework identifying bandwidth bounds
- [[decode-optimization|Decode Optimization]] — Memory-bound workload example
- [[gpu-performance|GPU Performance]] — General performance context
- [[l2-cache|L2 Cache]] — Cache layer for prefetch optimization

## Related Entities

- [[nvidia|NVIDIA]] — Hardware platform with memory systems
- [[alpin-dale|Alpin Dale]] — Expert achieving high bandwidth utilization

## Sources

- [[hitting-1000-tokens-rtx-5090|Hitting 1,000 Tokens Per Second with RTX 5090]]

## Evolution

Memory bandwidth optimization has evolved from simple coalescing to sophisticated strategies: L1 bypass for weights, productive prefetch during compute-light phases, concurrent region access without contention. Modern GPUs with 96 MB L2 caches enable aggressive prefetching of entire weight matrices.