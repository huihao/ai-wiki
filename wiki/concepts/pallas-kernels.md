---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Pallas Kernels

## Definition

Pallas kernels are custom, hardware-level computational kernels written in a JAX sub-language that operate below the XLA compiler level, enabling fine-grained optimization of specific operations (attention, softmax, matrix multiply) on TPU and GPU hardware for near-physical-limit performance.

## Key Aspects

- **Below XLA Optimization**: Pallas provides access to hardware-specific optimization that XLA's general-purpose compiler cannot achieve, including explicit memory management, tiling strategies, and operation scheduling
- **Custom Kernel Development**: Enables writing specialized implementations of operations like fused attention, online softmax, and flash attention that exploit hardware-specific features (systolic arrays, shared memory, warp-level operations)
- **Flash Attention Implementation**: Pallas is the implementation layer for flash attention variants on JAX/TPU, enabling memory-efficient attention computation that reduces complexity from O(N^2) to O(N)
- **Multi-Level Optimization Stack**: Pallas sits at the lowest level of a four-level optimization hierarchy: JAX basics -> XLA compilation -> Sharding/distribution -> Pallas custom kernels
- **Performance-Critical Operations**: Used when framework-level implementations are insufficient, particularly for attention mechanisms, custom activations, and memory-bound operations where kernel fusion is essential
- **Hardware-Specific Tuning**: Enables explicit control over memory layouts, prefetching, and computation scheduling that maps directly to TPU v5e or GPU hardware characteristics

## Related Concepts

- [[flash-attention]] -- Memory-efficient attention built using Pallas-level kernel optimization
- [[online-softmax]] -- Algorithm commonly implemented as a Pallas kernel
- [[xla-compiler]] -- Higher-level compiler that Pallas extends for custom operations
- [[jax]] -- The framework within which Pallas operates for TPU/GPU kernel development

## Sources

- [[high-performance-llms-2024]]
