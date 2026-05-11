---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Scaled Dot-Product Attention

## Definition

Attention computation method used in transformers where attention scores are calculated as dot product of Query and Key, scaled by sqrt(d_k), then softmax applied. Faster and more space-efficient than additive attention due to optimized matrix multiplication.

## Formula

Attention(Q, K, V) = softmax(QK^T / sqrt(d_k)) V

## Key Properties

- Multiplicative attention (vs additive)
- Scaling prevents large dot products from pushing softmax into regions with small gradients
- Efficient due to highly optimized matrix multiplication code
- Same theoretical complexity as additive attention but practically faster

## Related Concepts

- [[attention-mechanisms]] — general attention concept
- [[multi-head-attention]] — multiple parallel scaled dot-product attentions
- [[self-attention]] — when Q, K, V come from same source
- [[softmax]] — probability conversion

## Sources

- [[transformer-architecture-attention-is-all-you-need|Transformer Architecture: Attention Is All You Need]]

## Evolution

Standard attention mechanism in transformer architecture, now optimized through Flash Attention and other implementations.