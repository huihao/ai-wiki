---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Implementing a Transformer From Scratch

## Metadata

- **Author**: Joris Baan
- **Date**: 2022-03-25
- **URL**: https://jorisbaan.nl/2022/03/25/implementing-a-transformer-from-scratch.html
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Implementing a Transformer From Scratch.md`

## Summary

A blog post highlighting seven surprising implementation details encountered when building the original Transformer from scratch. Covers multi-head attention mechanics, weight tying, teacher forcing, and residual streams with code references.

## Key Takeaways

- A single weight matrix can project all query/key/value vectors for all heads simultaneously, rather than three separate matrices.
- The Q/K/V dimension is dynamically set to `embed_dim / num_heads` to keep parameter count constant regardless of head count.
- Attention logits are scaled by `sqrt(d_k)` to prevent extremely small softmax outputs due to high variance.
- Weight tying shares the same embedding matrix across encoder input, decoder input, and decoder pre-softmax linear layer — saving ~46M parameters for a 30k vocab.
- During training, teacher forcing feeds ground-truth target sequences in a single forward pass; at inference, tokens are predicted autoregressively.
- Transformer dimensions must stay constant across all sub-layers because residual connections add vectors directly.

## Entities Mentioned

- [[joris-baan]] — author
- [[jay-alammar]] — referenced for the Illustrated Transformer
- Alexander Rush — referenced for the Annotated Transformer
- [[vaswani-et-al|Vaswani et al.]] — original Transformer authors

## Concepts Mentioned

- [[transformer-architecture|Transformer]] — original "Attention Is All You Need" architecture
- [[multi-head-attention-from-scratch|Multi-head attention]] — parallel attention heads with shared projections
- Weight tying — sharing embedding weights across layers
- [[teacher-forcing]] — feeding ground truth during training
- [[residual-connection]] — adding sub-layer outputs to inputs
- [[attention-mechanism]] — scaled dot-product attention

## Questions / Follow-ups

- Should cross-reference with the "Llama from scratch" source for architectural comparisons.
