---
created: 2026-04-29
updated: 2026-05-09
tags: [deep-learning, mathematics]
sources: 1
---

# Matrix Calculus

## Definition

Matrix calculus is the extension of differential calculus to vector and matrix-valued functions, providing the mathematical framework for computing gradients and Jacobians in deep neural network training. The vector chain rule, expressed as Jacobian multiplication, is the foundation of automatic differentiation and backpropagation, making matrix calculus essential for understanding how neural networks learn.

## Key Aspects

- The gradient organizes all partial derivatives of a scalar function f with respect to a vector x into a horizontal vector
- The Jacobian is an m-by-n matrix of all possible partial derivatives for m functions of n parameters
- Element-wise diagonal condition: when element-wise operations produce Jacobians where off-diagonal elements are zero, the Jacobian simplifies to a diagonal matrix
- Three chain rules: single-variable (dy/dx = dy/du * du/dx), single-variable total derivative (sums contributions from all intermediate paths), and vector chain rule (Jacobian multiplication)
- Automatic differentiation (PyTorch autograd) mirrors this process: introducing intermediate variables and chaining derivatives
- For ReLU activation a = max(0, w dot x + b), the gradient w.r.t. w is either 0 (when clipped) or x (when active)
- MSE loss gradient w.r.t. weights is a weighted average of inputs, weighted by error terms (target - prediction)
- Bias merging trick: append 1 to input vector, merge w and b into a single weight vector

## Related Concepts

- [[mean-squared-error]]
- [[logistic-regression]]
- [[maximum-likelihood]]

## Sources

- [[matrix-calculus-deep-learning]]
