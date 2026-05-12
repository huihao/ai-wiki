---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Activation Quantization

## Definition
Activation quantization is a model compression technique that reduces the numerical precision of neural network activations — the intermediate outputs between layers — from floating-point (e.g., FP32) to lower-bit representations (e.g., INT8, INT4). It is a key challenge in LLM inference optimization because activations are more difficult to quantize than weights due to their dynamic, data-dependent value ranges and outlier sensitivity.

## Key Aspects
- Targets activations (dynamic values) rather than weights (static values), making it harder due to non-stationary distributions
- Significant challenges include activation outliers — rare but large values that skew quantization ranges
- Critical for 4-bit LLM inference optimization, reducing memory footprint and increasing throughput
- Techniques include per-channel scaling, group quantization, and smooth quantization to handle outliers
- When combined with weight quantization, enables substantial memory savings for deployment on edge and consumer hardware

## Related Concepts
- [[activation-checkpointing]]
- [[cloud-ml-services]]

## Sources
- [[ai-insights-blog-avichala]]
- [[llm-inference-optimization]]
