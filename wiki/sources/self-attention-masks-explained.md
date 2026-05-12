---
created: 2026-04-28
updated: 2026-04-28
tags: [source, attention, transformers, masking, educational]
sources: 1
---

# How Do Self-Attention Masks Work?

## Metadata

- **Author**: Gabriel Mongaras
- **Date**: 2022-10-09
- **URL**: https://gmongaras.medium.com/how-do-self-attention-masks-work-72ed9382510f
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How Do Self-Attention Masks Work_.md`

## Summary

A detailed matrix-level explanation of how padding masks and look-ahead (causal) masks work in self-attention. Walks through the QK^T computation, shows why masks are applied as columns (not rows) for padding, and explains why the same mask must be used across all Transformer layers.

## Key Takeaways

- **Padding mask**: Applied as -∞ in columns of QK^T corresponding to pad tokens. This prevents pad tokens from affecting other tokens while preserving the pad token's own representation.
- **Look-ahead mask**: Upper-triangular -∞ matrix preventing tokens from attending to future positions. Enables parallel training of autoregressive models.
- **Why columns, not rows**: Masking the row would cause the pad token to lose all information; masking the column only prevents it from influencing others.
- **Why every layer**: Self-attention is a sequence-to-sequence transformation that preserves token positions. The pad token remains at its position through all layers, so masking is needed at every layer.
- **Key insight**: Q, K, V weight matrices transform each token independently — they don't mix sequence order.

## Entities Mentioned

- Gabriel Mongaras — author

## Concepts Mentioned

- [[self-attention]] — Q, K, V computation and QK^T softmax
- Padding mask — handling variable-length sequences in batches
- [[self-attention|Causal mask]] — look-ahead mask for autoregressive generation
- [[softmax|Softmax masking]] — using -∞ to zero out attention weights
- [[feed-forward-networks|Transformer layers]] — why masks persist across layers

## Raw Notes

See raw file for the full matrix walkthrough with visual representations.

## Questions / Follow-ups

- How do attention masks interact with KV caching during inference?
