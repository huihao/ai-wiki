---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# GPU Inference

## Definition

GPU inference is the process of running trained machine learning models on GPUs to generate predictions or outputs. Inference platforms like Baseten provide managed infrastructure for deploying AI models, handling the complexities of GPU allocation, model serving, and scaling. The key challenge is balancing model size, context length, and available VRAM to achieve acceptable latency.

## Key Aspects

- **VRAM as Primary Constraint**: Model weights + KV cache + scratchpad must fit in GPU memory; exceeding VRAM causes CPU spill with 5-15x slowdown
- **Quantization for Efficiency**: Q4_K_M quantization reduces model weights to ~0.57 bytes per parameter (1/4 of FP16) while maintaining excellent quality
- **KV Cache Scaling**: Context length adds linearly to VRAM usage; longer contexts consume more memory per token via KV cache storage
- **Platform Options**: Baseten hosts popular models (DeepSeek V4, GPT OSS 120B, Nemotron 3 Super) with managed inference infrastructure
- **Hybrid GPU+CPU**: Splitting model layers between GPU and CPU can extend effective memory but introduces PCIe latency overhead; a U-shaped performance curve results

## Related Concepts
- [[gpu]]
- [[gpu-memory-bandwidth]]
- [[gqa-grouped-query-attention]]

## Sources
- [[baseten-blog]]
