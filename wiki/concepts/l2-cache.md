---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# L2 Cache

## Definition

The L2 cache is a small, fast memory buffer located between each GPU's streaming multiprocessors and its global HBM (High Bandwidth Memory). In GPU inference for LLMs, the L2 cache stores frequently accessed weight data to reduce the latency and bandwidth pressure of repeated global memory reads, playing a critical role in decode-phase performance.

## Key Aspects

- Sits between the compute units and HBM, providing lower-latency access than global memory for frequently reused data
- During LLM token decode, weights are the dominant memory traffic -- persistent kernels can use L2 prefetching to warm the cache before the next operation needs the data
- "Productive spin" technique: idle threads issue L2 prefetch instructions during attention computation, hiding the latency of weight loads for the next MLP phase
- The effective L2 cache hit rate directly determines whether a kernel is compute-bound or memory-bound
- RTX 5090 GDDR7 achieves approximately 1,674 GB/s of effective bandwidth (93% of theoretical peak), with L2 cache management being a key enabler of this efficiency
- L2 cache capacity varies significantly across GPU generations and product tiers, impacting which optimization strategies are viable for a given hardware target

## Related Concepts

- [[inference-speed]]
- [[memory-bandwidth]]
- [[cuda-architecture]]

## Sources

- [[memory-bandwidth-optimization]]
