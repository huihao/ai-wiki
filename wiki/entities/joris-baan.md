---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, person]
---

# Joris Baan

## Overview

Machine learning researcher and engineer who implemented the Transformer architecture from scratch to deeply understand its inner workings. Authored the comprehensive blog post "Implementing a Transformer From Scratch" originally published on TowardsDataScience (2022-03-25).

## Key Contributions

- Detailed implementation of Transformer architecture from the "Attention is All You Need" paper
- Identified seven surprising implementation details that improved understanding
- Created well-documented, unit-tested, type-checked code implementation (jsbaan/transformer-from-scratch)
- Previous research on attention heads in summarization (2019)

## Insights from Work

Discovered unexpected aspects of Transformer implementation:

1. Single weight matrix for Q, K, V projections (not three separate matrices as often depicted)
2. QKV dimensionality determined by embedding_dim / num_heads (dynamic, not hyperparameter)
3. Scaling attention logits prevents tiny gradients from high variance
4. Weight tying across encoder embedding, decoder embedding, and decoder pre-softmax
5. Teacher forcing enables efficient single-pass training vs autoregressive inference
6. Positional encoding choice: sinusoid (no limit) vs learned (hard limit like BERT-512)
7. Residual streams run vertically across layers (not horizontally across tokens)

## Professional Background

- Previous work investigating attention heads tracking syntactic vs positional information
- Research on summarization task attention patterns (referenced 2019 paper)

## Related Concepts

- [[transformer-implementation-details|Transformer Implementation Details]] — Main research focus
- [[multi-head-attention-mechanics|Multi-Head Attention Mechanics]] — Deep dive into implementation mechanics
- [[teacher-forcing|Teacher Forcing]] — Training methodology analysis
- [[residual-streams|Residual Streams]] — Vertical information flow concept

## External Links

- Twitter: @jsbaan
- LinkedIn: Joris Baan
- Blog: jorisbaan.nl/posts
- GitHub: jsbaan/transformer-from-scratch

## Sources

- [[implementing-a-transformer-from-scratch|Implementing a Transformer From Scratch]] — Primary source documenting his implementation work
