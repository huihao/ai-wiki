---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# INT8 Quantization

## Definition

INT8 quantization is a model compression technique that reduces the precision of neural network weights and/or activations from 32-bit floating point (FP32) to 8-bit integers (INT8). This reduces memory usage by approximately 4x and enables faster inference on hardware with native integer arithmetic support, while aiming to preserve model accuracy through careful calibration or quantization-aware training.

## Key Aspects

- Reduces model memory footprint by 4x compared to FP32 (and 2x compared to FP16)
- Two main approaches: post-training quantization (apply after training) and quantization-aware training (simulate quantization during training)
- Quantized training integrates INT8 operations directly into the training loop, enabling efficient training on hardware with integer compute units
- Requires careful handling of outliers: a single extreme value can dominate the quantization range, degrading precision for all other values
- Common calibration techniques includeMinMax, entropy-based, and percentile-based range selection
- Widely supported in production: NVIDIA TensorRT, ONNX Runtime, and PyTorch quantization toolkits all offer INT8 quantization paths

## Related Concepts

- [[model-compression]]
- [[quantized-training]]
- [[inference-speed]]

## Sources

- [[quantized-training]]
