---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Adam Optimizer

## Definition
Adam (Adaptive Moment Estimation) is a widely used optimization algorithm that combines the benefits of momentum-based methods and adaptive learning rate methods. It maintains exponentially decaying averages of both past gradients (first moment) and past squared gradients (second moment) to compute per-parameter learning rates, enabling efficient training across a wide range of deep learning tasks.

## Key Aspects
- Combines momentum (exponential moving average of gradients) with RMSProp-style adaptive per-parameter learning rates
- Includes bias correction terms to compensate for zero-initialization of moment estimates in early training steps
- Default hyperparameters (learning rate 0.001, beta1=0.9, beta2=0.999, epsilon=1e-8) work well across many tasks without tuning
- One of the most popular optimizers in deep learning, used as baseline in most training pipelines
- Relates to regret minimization theory — Adam's convergence guarantees are analyzed through the lens of online convex optimization

## Related Concepts
- [[adagrad]]
- [[adaptive-learning-rates]]

## Sources
- [[online-learning]]
- [[regret-minimization]]
