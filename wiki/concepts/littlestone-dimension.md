---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Littlestone Dimension

## Definition

The Littlestone dimension is a combinatorial measure of the complexity of a concept class in the context of online learning, analogous to the VC dimension for PAC learning. It characterizes the maximum number of mistakes an optimal online learning algorithm can be forced to make against an adversarial sequence of labeled examples, and it precisely characterizes the regret bounds achievable in the realizable (no-noise) online learning setting.

## Key Aspects

- Measures the depth of the deepest mistake tree (Littlestone tree) that can be realized by a concept class: a binary tree where each node is labeled with an example and each branch corresponds to a different label
- In the realizable setting, the optimal online learner makes at most d_L mistakes, where d_L is the Littlestone dimension of the hypothesis class
- Strictly more powerful than VC dimension: every class with finite Littlestone dimension also has finite VC dimension, but the converse does not hold (e.g., threshold functions on the real line have VC dimension 1 but infinite Littlestone dimension)
- Characterizes the minimax regret in online learning: the optimal regret is proportional to the Littlestone dimension in the realizable case
- Connections to transductive online learning: the Littlestone dimension governs both mistake bounds and regret bounds in various online learning settings
- Provides the right complexity measure for understanding the fundamental limits of any algorithm that must make predictions sequentially without knowledge of future examples

## Related Concepts

- [[online-learning]]
- [[vc-dimension]]
- [[transductive-learning]]

## Sources

- [[transductive-online-learning]]
