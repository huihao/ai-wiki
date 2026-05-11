---
created: 2026-05-11
updated: 2026-05-11
tags: [concept]
sources: 0
---

# Transformer architecture

## Definition

A neural network architecture based entirely on self-attention mechanisms, introduced by Vaswani et al. in "Attention Is All You Need" (2017). Replaces recurrence and convolutions with multi-head self-attention and position-wise feed-forward networks, enabling parallelized training and capturing long-range dependencies. The architecture consists of an encoder stack and a decoder stack (or decoder-only for modern LLMs), each containing layers of multi-head attention followed by feed-forward networks with residual connections and layer normalization.

## Related Concepts

- [[attention-mechanism]] — Core building block of the transformer: scaled dot-product attention
- [[scaled-dot-product-attention]] — The specific attention computation used in transformers
- [[queries-keys-values]] — Three linearly projected representations in self-attention
- [[encoder-decoder-architecture]] — Original transformer design with bidirectional encoder and autoregressive decoder
- [[self-attention-masks]] — Mechanisms preventing unwanted token interactions in attention
- [[relative-position-attention]] — How transformers handle token ordering
- [[word-embeddings]] — Input representation fed into transformer layers
- [[rotary-position-embeddings]] — Modern positional encoding used in most current LLMs

## Key Proponents / Critics

- [[ashish-vaswani]] — Lead author of "Attention Is All You Need"
- [[noam-shazeer]] — Co-author, also known for Mixture of Experts
- [[lilian-weng]] — AI researcher who wrote comprehensive attention surveys

## Sources

Multiple source pages covering transformer internals, positional encoding, attention variants, and training.
