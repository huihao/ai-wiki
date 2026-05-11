---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 1
---

# Masked Causal Attention

## Definition

Masked causal attention (also called masked self-attention in decoder-only architectures) is an attention mechanism where each token can only attend to previous tokens and itself, preventing information leakage from future positions during autoregressive generation. This masking strategy is essential for decoder-only transformer models that generate text one token at a time.

## Key Aspects

- In the encoder-decoder architecture, the decoder uses masked self-attention to prevent position i from attending to positions j > i
- The mask is typically implemented as an upper-triangular matrix of negative infinities added to the attention scores, which become zero after softmax
- Ensures autoregressive property: each token prediction depends only on previously generated tokens
- Contrasts with bidirectional (unmasked) self-attention used in encoders, where all tokens attend to all other tokens
- Critical for training efficiency: allows parallel computation of all positions during training while maintaining sequential generation semantics at inference
- The gating mechanism (sigmoid gating after scaled dot-product attention) has been shown to improve masked attention performance, as demonstrated in the NeurIPS 2025 Gated Attention paper
- Gated attention mitigates attention sink phenomena and enables long-context extrapolation

## Related Concepts

- [[masked-self-attention]]
- [[llm]]
- [[locality]]

## Sources

- [[encoder-decoder-architecture]]
