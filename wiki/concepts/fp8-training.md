---
created: 2026-04-29
updated: 2026-05-09
tags: [efficiency, machine-learning, training]
sources: 2
---

# FP8 Training

## Definition
FP8 training is a mixed-precision training technique that uses 8-bit floating-point numbers (FP8) for certain computations during neural network training, reducing memory usage and increasing throughput while maintaining model quality through careful loss scaling and selective precision management.

## Key Aspects
- Two FP8 formats exist: E4M3 (4-bit exponent, 3-bit mantissa) for weights/activations and E5M2 (5-bit exponent, 2-bit mantissa) for gradients
- Provides approximately 2x throughput improvement and significant VRAM reduction compared to FP16/BF16 training
- Requires dynamic loss scaling to prevent gradient underflow in the narrow FP8 range
- Unsloth supports FP8 training mode as one of its efficiency-optimized training configurations
- Certain operations (loss computation, optimizer states) are typically kept in higher precision (FP32/BF16)
- Hardware support from NVIDIA H100/H200 and newer architectures with dedicated FP8 Tensor Cores
- Enables training larger models on existing hardware by reducing per-parameter memory footprint

## Related Concepts
- [[floating-point-arithmetic]]
- [[generalization]]

## Sources
- [[unsloth]]
- [[unsloth-documentation]]
