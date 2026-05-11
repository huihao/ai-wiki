---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# L2 Penalty

## Definition

The L2 penalty (also known as weight decay or ridge regression penalty) is a regularization technique that adds a term proportional to the sum of squared model weights to the loss function during training. This discourages the model from relying on any single weight too heavily, encouraging smoother decision boundaries and reducing the gap between training and test performance.

## Key Aspects

- Adds lambda * sum(w_i^2) to the loss, where lambda (the regularization strength) controls the penalty magnitude
- During gradient descent, the L2 penalty causes weights to shrink toward zero at each step: w_i = w_i - lr * (dL/dw_i + 2 * lambda * w_i)
- Distinguished from L1 penalty (which adds sum of absolute values and encourages sparsity) by producing smooth, distributed shrinkage rather than zeroing out individual weights
- Equivalent to adding a Gaussian prior on the weight distribution in a Bayesian framework
- Prevents overfitting by constraining the model's effective capacity, reducing variance at the cost of slightly higher bias
- In modern deep learning, L2 regularization is often implemented as weight decay in optimizers (AdamW separates weight decay from gradient-based updates)

## Related Concepts

- [[regularization]]
- [[overfitting]]
- [[gradient-descent]]

## Sources

- [[regularization]]
