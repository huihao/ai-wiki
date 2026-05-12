---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, transformer, encoder, educational]
sources: 1
---

# How an LLM Understands Input: The Math Under the Hood

## Metadata

- **Author**: Ajay Mallya
- **Date**: 2024-03-30
- **URL**: https://medium.com/@amallya0523/how-an-llm-understands-input-the-math-under-the-hood-114ac69f96c6
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How an LLM Understands Input_ The Math Under the Hood.md`

## Summary

An accessible, intuition-first explanation of how a Transformer encoder processes input. Walks through positional encoding, multi-head attention (Q/K/V), attention scores and weights, and the feed-forward network — using analogies and minimal linear algebra prerequisites.

## Key Takeaways

- **Positional encoding**: Adds position information to token embeddings so the model knows word order.
- **Multi-head attention**: Multiple attention heads focus on different aspects of token relationships simultaneously.
- **Q, K, V**: Queries (what to look for), Keys (relationships), Values (token content). Analogized to a librarian search.
- **Attention scores**: Dot product of Q and K, scaled by sqrt(d), then softmaxed to get attention weights.
- **Attention-weighted sum**: Weights multiplied by V vectors, summed to produce contextualized token representations.
- **Feed-forward network**: Refines representations by learning granular patterns before passing to decoder.

## Entities Mentioned

- [[ajay-mallya|Ajay Mallya]] — author

## Concepts Mentioned

- [[feed-forward-networks|Transformer encoder]] — input understanding component
- [[projective-ray-positional-encoding|Positional encoding]] — encoding sequence order
- [[multi-head-attention-from-scratch|Multi-head attention]] — parallel attention mechanisms
- [[grouped-query-attention|Query-key-value attention]] — Q/K/V mechanism
- [[softmax]] — normalization for attention weights
- [[feed-forward-networks]] — per-token refinement

## Raw Notes

See raw file for the full walkthrough with visual explanations.

## Questions / Follow-ups

- Companion post on the decoder and training process was promised but may not exist yet.
