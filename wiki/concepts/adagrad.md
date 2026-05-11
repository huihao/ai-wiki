---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Adagrad

## Definition
Adagrad (Adaptive Gradient Algorithm) is an optimization algorithm that adapts the learning rate for each parameter individually based on the historical sum of squared gradients. Parameters receiving large cumulative gradients get smaller updates, while parameters with sparse updates receive larger ones, making it well-suited for problems with sparse features and non-stationary objectives.

## Key Aspects
- Maintains per-parameter learning rates that decrease as the sum of squared gradients grows, providing natural adaptation to feature frequency
- Particularly effective for sparse data and NLP tasks where some features appear infrequently
- Key limitation: the accumulated squared gradients in the denominator only grow, causing the learning rate to monotonically decrease and potentially vanish
- Forms the basis for more advanced adaptive methods like AdaDelta and Adam
- Relates to online learning theory and regret minimization — the goal of achieving sublinear regret in adversarial settings

## Related Concepts
- [[adam-optimizer]]
- [[adaptive-learning-rates]]

## Sources
- [[online-learning]]
- [[regret-minimization]]
