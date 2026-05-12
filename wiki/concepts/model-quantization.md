---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Model Quantization

## Definition

Model quantization is an inference optimization technique that reduces the numerical precision of model weights and activations (e.g., from 32-bit floating point to 8-bit integers), decreasing memory requirements and accelerating computation while preserving acceptable accuracy. It is a critical technique for deploying large language models on resource-constrained hardware.

## Key Aspects

- **Precision reduction**: Converting FP32 weights to FP16, INT8, or INT4 formats to reduce model size and memory footprint
- **Batch invariance challenges**: Different precision levels can interact with batch size to produce nondeterministic results due to floating-point non-associativity
- **Performance trade-offs**: Quantization trades small accuracy losses for significant gains in inference speed and memory efficiency
- **Hardware compatibility**: INT8 and INT4 formats align with tensor core instructions on modern GPUs, enabling faster matrix operations
- **Deployment enabling**: Makes large models (7B, 13B, 70B parameters) runnable on consumer hardware that cannot accommodate full-precision weights
- **Post-training vs quantization-aware**: Post-training quantization applies after training; quantization-aware training incorporates low-precision effects during training for better accuracy preservation
- **Nondeterminism interaction**: Quantized kernels may exhibit different numerical behavior across batch sizes, compounding nondeterminism challenges in LLM inference

## Related Concepts

- [[inference-optimization]]
- [[model-serving]]
- [[kv-cache]]
- [[defeating-nondeterminism-llm-inference]]

## Sources

- [[defeating-nondeterminism-llm-inference]]
