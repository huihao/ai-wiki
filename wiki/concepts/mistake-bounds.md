---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Mistake Bounds

## Definition

Mistake bounds are theoretical limits on the number of incorrect predictions a learning algorithm can make before converging to the correct hypothesis. They provide a worst-case guarantee on how many mistakes an online learner will make given a sequence of adversarially chosen examples, serving as a core measure of learning efficiency in computational learning theory.

## Key Aspects

- **Transductive online learning** introduces a breakthrough: a tight Ω(sqrt(d)) mistake bound for transductive online learning, where the learner has advance access to the unlabeled instance sequence
- This resolves a 30-year-old open problem in learning theory, establishing a quadratic gap versus standard (inductive) online learning
- The proof uses a sophisticated adversary strategy that balances forcing mistakes with version space management, combined with an innovative "sparse encoding" hypothesis class construction
- Mistake bounds measure learning efficiency without requiring probabilistic assumptions about data distribution
- In standard online learning, the classical mistake bound is O(sqrt(d)) where d is the dimensionality; the transductive setting proves this bound is tight
- The result (from the NeurIPS 2025 Best Paper) demonstrates that advance knowledge of the instance sequence does not meaningfully reduce the fundamental difficulty of online classification

## Related Concepts

- [[transductive-online-learning]]
- [[online-learning]]
- [[computational-learning-theory]]
- [[pacific-learning]]

## Sources

- [[announcing-neurips-2025-best-paper-awards]]
