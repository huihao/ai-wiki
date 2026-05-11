---
url: "https://gmongaras.medium.com/how-do-self-attention-masks-work-72ed9382510f"
title: "How Do Self-Attention Masks Work?"
author: "Gabriel Mongaras"
date: "2022-10-09"
description: "Detailed explanation of how masks work in the self-attention function, covering padding masks and look-ahead masks with matrix visualizations."
---

# How Do Self-Attention Masks Work?

Comprehensive technical explanation of self-attention masks in transformer architecture, demonstrating through matrix mathematics why masks are applied across multiple layers and how they work to prevent unwanted token interactions.

## Key Topics

- **Self-attention fundamentals**: How Q, K, V matrices interact without masks
- **Padding masks**: Preventing <PAD> tokens from affecting other tokens in batched sequences
- **Look-ahead masks**: Enabling autoregressive training by blocking future tokens
- **Mask application**: Why masks are needed in every self-attention layer

## Core Insights

### Padding Masks

Padding tokens added for batch processing can become the most frequent tokens, causing models to learn spurious patterns. Padding masks apply -∞ to key columns (not query rows) corresponding to pad tokens, ensuring:
- Pad tokens don't affect other tokens' representations
- Pad tokens retain their own identity (not completely zeroed out)

### Look-ahead Masks

Used in autoregressive models (like translation), enabling single-pass training instead of word-by-word:
- Upper triangle of -∞ in weight matrix
- Each token only attends to itself and previous tokens
- Position m only affected by positions ≤ m

### Why Masks Persist Across Layers

Self-attention transforms sequence while maintaining token positions. If D is a pad token in layer 1, output D^A remains a pad token (just transformed). Subsequent layers need masks to continue preventing pad token influence on other tokens.

## Related Concepts

- [[self-attention-masks]] — Mechanism preventing unwanted token interactions in attention computation
- [[padding-masks]] — Masking technique for batch processing with variable-length sequences
- [[look-ahead-masks]] — Autoregressive training mask preventing future token visibility
- [[scaled-dot-product-attention]] — Core attention computation that masks modify

## Related Entities

- [[gabriel-mongaras]] — Author and ML engineer explaining attention mechanics