---
created: 2026-04-28
updated: 2026-04-28
tags: [activation, neural-network]
sources: 0
---

# GELU

## Definition

GELU (Gaussian Error Linear Unit) is an activation function used in modern transformer architectures, including BERT, GPT, and Vision Transformers. It smooths the ReLU function by weighting inputs by their cumulative distribution function under a Gaussian distribution, providing a probabilistic gating mechanism. GELU offers better performance than ReLU on many NLP and vision tasks due to its non-monotonic, smooth properties.

## Key Attributes

- **Introduced**: Hendrycks & Gimpel, 2016
- **Formula**: GELU(x) = x · Φ(x) where Φ is the standard normal CDF
- **Approximations**: 0.5x(1 + tanh[√(2/π)(x + 0.044715x³)]) — fast approximation used in practice
- **Usage**: BERT, GPT-2/3/4, ViT, and most modern transformers
- **Alternative**: [[swiglu]] — increasingly preferred in newer models like Llama and PaLM

## Related Concepts

- [[feed-forward-network]] — GELU is the typical activation in transformer FFN layers
- [[swiglu]] — alternative activation used in Llama and PaLM
- [[transformers]] — GELU is a core component
- [[layer-normalization]] — works in conjunction with GELU for stable training

## Sources

- [[the-parts-of-a-transformer-nobody-talks-about|The Parts of a Transformer Nobody Talks About (But That Make It Work)]] — discusses GELU vs. ReLU
- [[feed-forward-network]] — role of activation functions in transformers
- [[explain-feed-forward-network-transformer-block]] — engineering perspective on GELU in transformer FFN blocks

## Evolution

- **2016**: GELU introduced by Hendrycks & Gimpel; initially niche
- **2018**: BERT and GPT-2 adopt GELU, establishing it as the transformer standard
- **2021–2023**: SwiGLU begins displacing GELU in newer architectures; production systems favor GELU for numerical stability under mixed-precision training
- **2024–2026**: GELU remains common in encoder models; SwiGLU dominates decoder-only LLMs
