---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Knowledge Data Rephrasing

## Definition

A synthetic data generation technique for LLM training where knowledge-intensive data is rephrased using style-diverse prompting, chunk-wise autoregressive generation, and fidelity verification. Produces training data with the same factual content but varied linguistic style, improving the model's ability to learn from and generalize across different phrasings of the same knowledge.

## Key Proponents / Critics

- [[moonshot-ai]] — used in [[kimi-k2]] training pipeline

## Related Concepts

- [[data-augmentation]] — broader category of training data expansion
- [[synthetic-data-generation]] — the general technique rephrasing belongs to
- [[instruction-tuning]] — rephrased data can be used for instruction tuning
- [[token-utility]] — rephrasing increases effective learning signal per token

## Sources

- [[kimi-k2-deepseek-v3-training]] — primary source

## Evolution

- **Pre-rephrasing**: Knowledge data (encyclopedias, textbooks, facts) typically appears in limited linguistic styles, reducing token utility — the model sees the same phrasing patterns repeatedly
- **Knowledge Data Rephrasing (Moonshot AI, 2026)**: Three-stage pipeline: (1) style-diverse prompting to generate multiple phrasings of the same content, (2) chunk-wise autoregressive generation for coherence within chunks, (3) fidelity verification to ensure factual accuracy is preserved across rephrasings. Used as part of Kimi-K2's 15.5T token training corpus alongside SwallowMath for mathematical data
