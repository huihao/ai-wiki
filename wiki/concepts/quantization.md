---
created: 2026-04-28
updated: 2026-04-28
tags: [compression, inference, optimization]
sources: 1
---

# Quantization

## Definition

The practice of reducing the numerical precision of a model's weights (and optionally activations) from higher-precision formats (e.g., float32, float16) to lower-precision formats (e.g., int8, int4, float8). This compresses model size, reduces memory bandwidth, and can accelerate inference on supported hardware.

## Key Attributes

- **Post-training quantization (PTQ)**: Quantizing an already-trained model without retraining. The most common approach.
- **Symmetric vs asymmetric**: Symmetric squashes around zero; asymmetric squashes around the data midpoint, reducing average error by ~10% for the same bit width.
- **Block-wise quantization**: Quantizing in small blocks (32–256 parameters) isolates damage from outliers.
- **Quality trade-offs**: 16-bit → 8-bit carries almost no quality penalty. 16-bit → 4-bit is noticeable but still ~90% of original quality. 2-bit generally collapses utility.
- **Common formats**: bfloat16, float8, int8, int4, float4.

## Related Concepts

- [[awesome-llm-post-training|Post-training quantization]] — the most common quantization workflow
- [[kv-cache|KV cache]] — can also be quantized for further memory savings
- [[inference-optimization]] — broader class of deployment techniques
- Mixed precision — using multiple precisions within a model
- [[breaking-down-turboquant|TurboQuant]] — specific quantization technique for KV caches

## Sources

- [[quantization|Quantization from the ground up — ngrok blog]] — interactive deep dive into PTQ with llama.cpp

## Evolution

- **Early LLMs**: Mostly float16 inference.
- **2023**: 8-bit and 4-bit PTQ becomes standard (GGUF, AWQ, GPTQ).
- **2024–2025**: Block-wise and activation-aware quantization improves 4-bit quality. Float8 formats gain hardware support (NVIDIA Blackwell).
- **Current**: Quantization is a default step in most deployment pipelines.
