---
created: 2026-04-28
updated: 2026-04-28
tags: [normalization, training, transformer]
sources: 1
---

# Layer Normalization

## Definition

A normalization technique that normalizes across the embedding dimensions of a single token (rather than across the batch), making it suitable for variable-length sequences in transformers. It prevents exploding or vanishing values in deep stacks and is a critical component of stable transformer training.

## Key Attributes

- **Per-token normalization**: Computes mean and standard deviation across the feature dimensions of each token independently.
- **Pre-Norm vs Post-Norm**: Pre-Norm (normalize before attention/FFN) is now standard because it trains more stably in very deep models.
- **Residual connections**: LayerNorm is always paired with skip connections that preserve the original signal and give gradient flow a direct highway.
- **Variants**: RMSNorm (Root Mean Square Layer Normalization) is a popular simplification used in Llama and other modern models.

## Related Concepts

- [[layer-normalization|Batch normalization]] — normalizes across the batch; less suitable for transformers
- [[rmsnorm]] — simplified variant without mean-centering
- [[feed-forward-network]] — the other major transformer sub-layer
- [[transformers]] — how attention, normalization, and FFN compose
- [[residual-connections]] — paired with LayerNorm for gradient flow

## Sources

- [[the-parts-of-a-transformer-nobody-talks-about|The Parts of a Transformer Nobody Talks About (But That Make It Work)]] — accessible explanation with numpy code

## Evolution

- **2017**: Original Transformer used Post-LayerNorm.
- **2019–2020**: Pre-LayerNorm becomes standard (GPT-3, T5) for training stability at scale.
- **2021+**: RMSNorm replaces LayerNorm in many open models (Llama) for slight speedups.
