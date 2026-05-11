---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# FP8

## Definition

FP8 (8-bit floating point) is a reduced-precision numeric format that uses only 8 bits to represent floating-point numbers, enabling significant reductions in memory usage and increases in computational throughput for deep learning training and inference. FP8 is particularly relevant to Transformer-based models, where matrix multiplications dominate compute and can tolerate lower precision without meaningful quality loss.

## Key Aspects

- **Two variants**: FP8 exists in E4M3 (4-bit exponent, 3-bit mantissa — higher precision, smaller range) and E5M2 (5-bit exponent, 2-bit mantissa — lower precision, wider range) formats, with E4M3 typically used for weights and activations, E5M2 for gradients.
- **NVIDIA Transformer Engine**: NVIDIA's Transformer Engine implements FP8 attention via cuDNN sub-backend 2 (sm90+ / Hopper architecture), performing matmul operations in FP8 for efficiency while keeping softmax in FP32 for numerical stability.
- **Performance gains**: FP8 effectively doubles throughput compared to FP16/BF16 for compatible operations, as the same hardware can process twice as many elements per cycle with 8-bit operands.
- **Architecture requirement**: FP8 support requires Hopper (sm90) or newer GPU architectures; it is not available on Ampere (sm80) or earlier.
- **Training considerations**: FP8 training requires careful scaling (delayed scaling factors) to avoid underflow/overflow, and backward passes may optionally revert to higher precision to maintain gradient accuracy.
- **Mixed-precision ecosystem**: FP8 fits within the broader mixed-precision training framework alongside FP32 master weights, BF16/FP16 activations, and gradient scalers, allowing selective application to the most compute-intensive operations.

## Related Concepts

- [[gpu-optimization]]
- [[gpu-throughput]]
- [[transformers]]

## Sources

- [[attention-is-all-you-need-nvidia]]
- [[nvidia]]
- [[transformer-engine]]
