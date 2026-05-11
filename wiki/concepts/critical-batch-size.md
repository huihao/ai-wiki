---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, scaling, training-efficiency]
sources: 1
---
# Critical Batch Size

## Definition

The critical batch size is the batch size at which the linear scaling rule for learning rate begins to break down, marking the transition from compute-optimal (small batch, noisy gradient) to data-parallel (large batch, precise gradient) training regimes.

## Key Concepts

- Below the critical batch size, doubling the batch size allows doubling the learning rate (linear scaling rule)
- Above the critical batch size, further increases in batch size yield diminishing returns in training speed
- The critical batch size increases with model size and training progress
- For large-scale LLM training, critical batch size can be in the millions of tokens
- The concept is analogous to the critical temperature in statistical physics
- The critical batch size depends on the noise structure of the gradient estimates
- Google DeepMind's scaling exponent research provides empirical measurements of critical batch size
- Understanding critical batch size helps optimize the time-compute Pareto frontier
- In practice, batch sizes are often set to a fraction of the critical batch size for better generalization

## Related Concepts

- [[scaling-laws]]
- [[mup-parameterization]]
- [[weight-decay-scaling]]
- [[hyperparameter-transfer]]

## Sources

- [[how-to-scale]]
