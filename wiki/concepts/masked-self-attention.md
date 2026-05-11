---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 1
---

# Masked Self-Attention

## Definition

Masked self-attention is a transformer mechanism that restricts each token in a sequence from attending to tokens that come after it, enabling autoregressive text generation. In the decoder stack of the encoder-decoder transformer architecture, masked self-attention ensures that predictions for position i depend only on known outputs at positions less than i.

## Key Aspects

- The decoder uses masked self-attention to prevent future token visibility during generation, unlike the encoder which uses bidirectional (full) self-attention
- Multi-head attention (8 heads in the original paper) allows the model to learn different relationship types in parallel: grammar, meaning, emotion
- The Q/K/V (query/key/value) framework models information retrieval like a search engine: queries seek matching keys to retrieve relevant values
- Scaled dot-product attention divides by the square root of the key dimension to prevent gradient vanishing from large dot products
- Each of the five core transformer mechanisms addresses specific problems: self-attention (parallel processing), feed-forward networks (nonlinear transformation), layer normalization (training stability), positional encoding (sequence order), and residual connections (gradient flow)
- Residual connections around each sublayer are critical for trainability of deep stacks, preventing vanishing gradients
- The encoder-decoder structure typically has 6 layers each, with cross-attention in the decoder attending to encoder outputs

## Related Concepts

- [[masked-causal-attention]]
- [[llm]]
- [[locality]]

## Sources

- [[everything-about-transformers]]
