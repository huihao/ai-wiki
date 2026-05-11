---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Partial Derivative

## Definition

A partial derivative measures the rate of change of a multivariable function with respect to one variable while holding all other variables constant. It is the fundamental building block of gradient computation in deep learning, where the gradient vector organizes all partial derivatives of a loss function with respect to model parameters.

## Key Aspects

- The gradient vector is the collection of all partial derivatives: for a function f(w1, w2, ..., wn), the gradient contains df/dw1, df/dw2, ..., df/dwn
- In the matrix calculus framework used by deep learning, the Jacobian matrix generalizes partial derivatives to vector-valued functions (m functions x n variables)
- For element-wise operations on vectors, the Jacobian simplifies to a diagonal matrix because fi depends only on wi (not wj), dramatically reducing computation
- The vector chain rule expresses partial derivatives through intermediate variables: df/dx = (df/dg)(dg/dx), where each term is a Jacobian
- Automatic differentiation (PyTorch autograd) mirrors this process by introducing intermediate variables and chaining partial derivatives
- For a ReLU neuron a = max(0, w.x + b), the partial derivative with respect to w is either 0 (ReLU clips) or x (when active)
- The MSE loss gradient with respect to weights is a weighted average of inputs, where the weights are the error terms (target - prediction)

## Related Concepts

- [[nn-embedding]]
- [[positive-definite-matrix]]

## Sources

- [[jacobian-matrix]]
- [[matrix-calculus-deep-learning]]
