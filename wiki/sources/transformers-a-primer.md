---
created: 2026-05-12
updated: 2026-05-12
tags: [source]
sources: 1
---

# Transformers: a Primer

## Metadata

- **Author**: Justin Seonyong Lee
- **Published**: 2021-02
- **URL**: https://www.columbia.edu/~jsl2239/transformers.html
- **Accessed**: 2026-05-12

## Summary

Math-guided walkthrough of the Transformer architecture, starting from pre-Transformer sequence transduction literature (RNN encoder-decoders, attention on hidden states, bidirectional encoders) through to the core mechanisms of "Attention is All You Need": Scaled Dot-Product Attention, Multi-Head Attention, and their three applications in the encoder-decoder (encoder self-attention, masked decoder self-attention, encoder-decoder attention). Includes original mathematical derivations of the softmax Jacobian and the rationale for the 1/√d_k scaling factor.

## Key Takeaways

- **Pre-Transformer lineage**: RNN encoder-decoders (2014) → teacher forcing → beam search → bidirectional encoders (2016) → attention on hidden states → dot-product attention (Luong 2015) → Transformers. Each step addressed a specific limitation of the prior
- **Scaled Dot-Product Attention formula**: softmax(QK^T/√d_k)V — weighted averages of value vectors, where weighting depends on query-key dot products. No learnable parameters in this operation itself
- **Why 1/√d_k**: Without scaling, large input values cause the softmax Jacobian to have high variance, leading to vanishing gradients during training. Scaling by √d_k (the assumed standard deviation of dot products) keeps Jacobian values well-conditioned. Demonstrated empirically with visualizations of scaled vs unscaled Jacobians across different vector lengths
- **Multi-Head Attention**: Parallel attention heads with different learned linear projections (W_i^Q, W_i^K, W_i^V) capture different aspects of the input, analogous to channels in CNNs. Output is concatenated and linearly projected via W^O back to d_model dimensions
- **Three attention applications**: (1) Encoder self-attention — full bidirectional context; (2) Masked decoder self-attention — prevents attending to future tokens, emulating autoregressive inference conditions; (3) Encoder-decoder attention — Q from decoder, K/V from encoder, enabling target positions to query source representations
- **Masking mechanism**: Lower-triangular matrix with −∞ in upper triangle added to QK^T/√d_k before softmax, sending future positions to zero weight
- **Teacher forcing vs inference gap**: Training uses ground truth target tokens; inference generates autoregressively. Masking during training ensures the model only sees past context, matching inference conditions
- **Encoder-decoder attention receives the same data at every decoder block**: From block 1 to N, each takes the same encoded source sequence as keys and values

## Entities Mentioned

- [[justin-lee]] — author, Columbia University

## Concepts Mentioned

- [[transformers]] — the encoder-decoder architecture from Vaswani et al. 2017
- [[scaled-dot-product-attention]] — core attention mechanism with √d_k scaling
- [[multi-head-attention]] — parallel attention heads with different projections
- [[encoder-decoder-architecture]] — sequence-to-sequence framework
- [[teacher-forcing]] — using ground truth targets during training
- [[beam-search]] — decoding strategy exploring multiple trajectories
- [[bidirectional-encoders]] — forward + reverse RNN for full context
- [[label-smoothing]] — regularization technique from Inception (2015)
- [[cross-entropy-loss]] — training objective for sequence models

## Questions / Follow-ups

- How do the mathematical insights here apply to modern variants like pre-norm Transformers and RMSNorm?
- What is the practical impact of the Jacobian analysis on large-scale training with fp16/bf16?
