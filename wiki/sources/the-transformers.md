---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# The Transformers

## Metadata

- **Author**: Mayank Pratap Singh
- **Date**: 2026-03-17
- **URL**: https://www.vizuaranewsletter.com/p/the-transformers
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/transformer/The Transformers.md`

## Summary

A comprehensive architectural breakdown of Transformers paired with a step-by-step guide to coding BERT from scratch. Covers tokenization (BPE), embeddings, positional encodings, self-attention, multi-head attention, layer normalization, feed-forward networks, and training concepts like pretraining and transfer learning.

## Key Takeaways

- LLMs are probabilistic engines that predict the next token autoregressively.
- Scaling laws show that model capabilities improve predictably with parameter count, and emergent abilities appear abruptly at certain thresholds.
- Subword tokenization (BPE) balances vocabulary size and sequence length by splitting words into reusable meaningful units.
- Sinusoidal positional encoding uses alternating sine/cosine functions at different frequencies to encode position without learned parameters, providing smooth gradients and generalization to longer sequences.
- Self-attention transforms static input embeddings into dynamic context vectors where each token's representation is enriched by all other tokens in the sequence.
- Queries, Keys, and Values are learned projections that allow the model to determine which tokens are relevant to each other.
- Softmax normalization amplifies differences between attention scores, making the distribution sharper and more decisive than simple normalization.
- Causal (masked) attention prevents decoder-only models from attending to future tokens.

## Entities Mentioned

- Mayank Pratap Singh — Author.
- [[openai]] — GPT-2, GPT-3, scaling laws.
- [[google]] — BERT, original Transformer, "Attention Is All You Need".
- [[answer-ai-source|Vizuara AI]] — Publisher and associated code repository.

## Concepts Mentioned

- [[transformer-architecture]] — Encoder-decoder and decoder-only variants.
- [[positional-encoding|Byte pair encoding]] — Iterative merge algorithm for subword tokenization.
- [[word-embeddings]] — Dense vector representations of tokens.
- [[projective-ray-positional-encoding|Positional encoding]] — Sinusoidal, integer, and binary approaches.
- [[self-attention]] — Query-Key-Value mechanism and attention scores.
- [[multi-head-attention-from-scratch|Multi-head attention]] — Parallel attention heads in different subspaces.
- [[layer-normalization]] — Stabilizes deep networks.
- [[feed-forward-networks]] — Per-token transformation after attention.
- [[softmax]] — Normalization for attention weights.
- [[self-attention|Causal attention]] — Masking future positions in decoder-only models.
- [[model-scaling|Scaling laws]] — Predictable relationship between model size and performance.
- [[transfer-learning]] — Pretraining and fine-tuning paradigms.

## Raw Notes

- The article includes extensive PyTorch code examples for implementing attention from scratch.
- It explains matrix multiplication, transpose, and dimensional reasoning in detail for beginners.
- A companion notebook is available on GitHub.

## Questions / Follow-ups

- How does the code implementation compare to modern optimized libraries like Flash Attention?
- Could this tutorial be extended to cover decoder-only GPT-style architectures in addition to BERT?
