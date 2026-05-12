---
created: 2026-04-29
updated: 2026-05-09
tags: [compiler, machine-learning, optimization]
sources: 1
---

# XLA Compiler

## Summary

XLA (Accelerated Linear Algebra) is a domain-specific compiler that optimizes machine learning computations before execution on hardware such as TPUs and GPUs. It takes computational graphs and applies low-level optimizations including operation fusion, memory layout planning, and hardware-specific code generation to maximize performance.

## Key Aspects

- Central compilation backend in JAX and TensorFlow: JIT-compiled Python functions are translated into XLA-optimized HLO (High-Level Optimizer) intermediate representations.
- Kernel fusion: combines multiple small operations into a single fused kernel, reducing memory round-trips and improving arithmetic intensity.
- Hardware-specific optimization: XLA generates code tailored to the target accelerator (TPU v5e, NVIDIA GPUs), exploiting hardware-level capabilities.
- Operation scheduling: reorders and batches operations to minimize idle cycles and maximize throughput.
- Enables reaching near-physical-limit performance on modern accelerators when combined with roofline-guided profiling.
- Pallas (a JAX extension) allows writing custom kernels that bypass XLA for fine-grained hardware control when needed.

## Related Concepts

- [[high-performance-llms-2024|High-Performance LLMs]]
- [[jax]] -- JAX uses XLA as its compilation backend
- [[tpu]] -- Google's TPU hardware targeted by XLA

## Sources

- [[high-performance-llms-2024]]
