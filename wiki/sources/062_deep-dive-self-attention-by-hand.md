---
created: 2026-04-29
updated: 2026-04-29
tags: [source, self-attention, scaled-dot-product, query-key-value, tutorial]
sources: 1
url: "https://towardsdatascience.com/deep-dive-into-self-attention-by-hand-%EF%B8%8E-f02876e49857/"
title: "Deep Dive into Self-Attention by Hand"
---

# Deep Dive into Self-Attention by Hand

## Summary

A detailed walkthrough of the self-attention mechanism using Prof. Tom Yeh's "AI by Hand" series. The article uses a Macbeth theatrical analogy to explain Query, Key, and Value vectors, then step-by-step walks through matrix creation, dot-product similarity, scaling, softmax normalization, and final weighted sum computation to produce attention-weighted features.

## Key Takeaways
- Self-attention examines the same input sequence it processes (hence "self")
- Query (Q) represents the current token; Key (K) represents other tokens; Value (V) carries the information
- The QK-module computes pairwise dot-product similarity (cosine similarity) between queries and keys
- Scaling by sqrt(d_k) prevents variance explosion in high dimensions
- Softmax normalizes attention scores into probability distributions (each column sums to 1)
- Final attention-weighted features Z are obtained by multiplying attention weights with value vectors
- Multi-Head Attention runs multiple self-attention copies in parallel for varied representations

## Entities Mentioned
- [[tom-yeh]]

## Concepts Mentioned
- [[scaled-dot-product-attention]]
- [[multi-head-attention]]
- [[self-attention]]
- [[word-embedding]]
- [[tokenization]]
