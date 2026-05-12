---
created: 2026-04-28
updated: 2026-04-28
tags: [source, transformer, attention]
sources: 1
---

# Transformer Architecture: Attention Is All You Need

## Metadata

- **Author**: Aditya Thiruvengadam
- **Date**: 2018-10-09
- **URL**: https://medium.com/@adityathiruvengadam/transformer-architecture-attention-is-all-you-need-aeccd9f50d09
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Transformer Architecture_ Attention Is All You Need.md`

## Summary

Detailed exploration of the attention mechanism that powers transformer architecture, addressing problems with RNNs and CNNs for sequence modeling. Explains how transformers achieve parallelization and capture long-range dependencies through multi-head self-attention.

## Key Takeaways

- RNNs suffer from vanishing gradients and can't parallelize within instances
- CNN-based approaches have O(n) or O(nlogn) complexity for distant dependencies
- Transformer achieves O(1) operations for any position distance through multi-head attention
- Encoder contains self-attention layers where keys, values, and queries come from previous layer
- Encoder-decoder attention allows decoder to attend over all input positions
- Masked attention in decoder prevents leftward information flow
- Residual connections crucial for retaining positional information across network

## Entities Mentioned

- Vaswani et al. — authors of original "Attention Is All You Need" paper

## Concepts Mentioned

- [[attention-mechanisms]] - context vectors and relevance scoring
- [[self-attention]] - intra-input and intra-output dependencies
- [[multi-head-attention]] - multiple parallel attention layers with different transformations
- [[scaled-dot-product-attention]] - faster and more space-efficient than additive attention
- [[positional-encoding]] - sinusoidal functions to inject position information
- [[encoder-decoder-architecture]] - transformer's sequence-to-sequence structure
- [[masked-attention]] - preventing access to future tokens during decoding
- [[residual-connections]] - shortcuts that help gradient flow and preserve positional info
- [[co-reference-resolution]] - example use case for understanding context

## Questions / Follow-ups

- How do different positional encoding schemes (learned vs preset) compare?
- What happens when concatenating positional embeddings instead of adding?