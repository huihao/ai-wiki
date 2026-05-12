---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Token Utility

## Definition

The effective learning signal that each training token provides to a model. High token utility means the token carries diverse, non-redundant information that improves model capabilities. Low token utility means the token is repetitive or stylistically redundant, contributing little new learning signal despite consuming compute. Techniques like [[knowledge-data-rephrasing]] aim to increase token utility by presenting the same information in varied forms.

## Key Proponents / Critics

- [[moonshot-ai]] — optimized token utility in [[kimi-k2]] training

## Related Concepts

- [[knowledge-data-rephrasing]] — technique to increase token utility via style diversity
- [[scaling-laws]] — token utility affects where a model sits on the compute-optimal frontier
- [[data-augmentation]] — broader category for techniques that improve token utility

## Sources

- [[kimi-k2-deepseek-v3-training]] — primary source

## Evolution

- **Early scaling laws**: Focused on data quantity (more tokens = better), with less attention to per-token information density
- **Chinchilla-era**: Established compute-optimal token counts but still treated tokens as largely interchangeable
- **Kimi-K2 (2026)**: Explicitly optimized token utility through synthetic rephrasing of knowledge data and SwallowMath for math data, within a 15.5T token training budget. The insight: not all tokens are equal — presenting the same knowledge in diverse styles increases the learning signal per token of training data
