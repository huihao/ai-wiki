---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms]
sources: 2
---

# Beam Search

## Definition
Beam search is a decoding algorithm that explores multiple candidate sequences simultaneously by keeping the top-k (beam width) most probable partial sequences at each decoding step. It balances between greedy search (beam width 1) and exhaustive search, finding higher-probability sequences by maintaining parallel hypotheses through the autoregressive generation tree.

## Key Aspects
- Maintains k candidates (the "beam") at each step, expanding each with all possible next tokens and keeping only the top k overall
- Beam width controls the exploration-exploitation trade-off: wider beams explore more but cost more compute
- Commonly used in machine translation, summarization, and other tasks where sequence quality matters more than diversity
- Can be combined with length normalization to avoid bias toward shorter sequences
- Logits masking constrains the search space by preventing certain tokens from being considered at specific steps (e.g., enforcing grammar constraints)
- In reasoning models, beam search competes with sampling-based methods; no single technique performs best across all tasks

## Related Concepts
- [[autoregressive-generation]]
- [[budget-forcing]]

## Sources
- [[grammar-based-output-control]]
- [[logits-masking]]
