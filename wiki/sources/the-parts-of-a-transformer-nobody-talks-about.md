---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# The Parts of a Transformer Nobody Talks About (But That Make It Work)

## Metadata

- **Author**: Rohini Joshi
- **Date**: 2026-03-06
- **URL**: https://levelup.gitconnected.com/the-parts-of-a-transformer-nobody-talks-about-but-that-make-it-work-2b05dca33ffb
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/transformer/The Parts of a Transformer Nobody Talks About (But That Make It Work).md`

## Summary

An accessible explanation of two under-appreciated Transformer components: Layer Normalization and the Feed-Forward Network. It covers why they exist, how they differ from Batch Normalization, the role of residual connections, and why activation functions (ReLU vs GELU) matter.

## Key Takeaways

- **Layer Normalization** normalizes across the embedding dimensions of a single token (not across the batch), making it suitable for variable-length sequences. It prevents exploding/vanishing values in deep stacks.
- **Pre-Norm** (normalize before attention/FFN) is now standard because it trains more stably in very deep models.
- **Residual (skip) connections** preserve the original signal and give gradient flow a direct highway, both critical for training deep networks.
- The **Feed-Forward Network** expands representations (typically 4×), applies a non-linear activation, then contracts back. It processes each token independently—attention mixes information across tokens; the FFN transforms information within each token.
- **GELU** (used in BERT, GPT-2, and most modern models) provides smoother gradients than ReLU because it retains small negative values instead of zeroing them out.

## Entities Mentioned

- [[rohini-joshi]] — Author.
- [[google]] — BERT, original Transformer.
- [[openai]] — GPT-2, GPT-3.

## Concepts Mentioned

- [[layer-normalization]] — Normalizes per-token embedding vector to mean=0, std=1.
- [[layer-normalization|Batch normalization]] — Normalizes across the batch; less suitable for Transformers.
- [[feed-forward-network]] — Two-layer MLP with activation that transforms each token independently.
- [[residual-connection]] — Adds the input to the sub-layer output.
- [[relu]] — Original Transformer activation; hard zero cutoff.
- [[gelu]] — Smoother modern activation.
- [[transformer-architecture]] — How attention, normalization, and FFN compose a layer.

## Raw Notes

- Includes numpy code examples for layer_norm, feed_forward_network, and a full transformer_layer function.
- Tracks the embedding norm for the word "cat" across 6 layers to show how representations evolve.

## Questions / Follow-ups

- How do newer normalization variants (e.g., RMSNorm) compare to LayerNorm in practice?
- What is the impact of SwiGLU/Swish activations replacing GELU in recent models like LLaMA?
