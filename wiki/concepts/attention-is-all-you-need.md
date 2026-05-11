---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 3
---

# Attention Is All You Need

## Definition
"Attention Is All You Need" is the 2017 paper by Vaswani et al. that introduced the Transformer architecture, replacing recurrent and convolutional sequence models with a purely attention-based design that achieves O(1) operations for any position distance through multi-head self-attention.

## Key Aspects
- **Self-attention mechanism**: Each token computes Query, Key, and Value vectors via learned weight matrices; attention weights are computed as softmax(QK^T / sqrt(d_k)), where scaling by sqrt(d_k) prevents numerical instability.
- **Multi-head attention**: Multiple parallel attention heads, each with independent weight matrices, learn to focus on different parts of the input—capturing diverse syntactic and semantic relationships simultaneously.
- **Positional encoding**: Since attention has no inherent notion of order, sinusoidal functions inject position information; for any fixed offset k, PE(pos+k) can be represented as a linear function of PE(pos) via block-diagonal rotation matrices.
- **Encoder-decoder architecture**: The encoder uses self-attention layers where Q, K, V come from the previous layer; the encoder-decoder attention allows the decoder to attend over all input positions; masked attention in the decoder prevents leftward information flow.
- **Parallelization advantage**: Unlike RNNs (which suffer from vanishing gradients and cannot parallelize within sequences), transformers process all positions simultaneously, enabling dramatic training speedups.
- **Residual connections**: Shortcuts around attention and feed-forward layers help gradient flow and preserve positional information across the network depth.

## Related Concepts
- [[coding-agent]]
- [[auto-memory]]
- [[chain-of-thought]]

## Sources
- [[linear-relationships-positional-encoding]]
- [[transformer-novel-neural-network-architecture-language-understanding]]
- [[understanding-and-coding-self-attention-mechanism]]
