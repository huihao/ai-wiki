---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Jacobian

## Definition

The Jacobian is a matrix containing all first-order partial derivatives of a vector-valued function. For a function mapping m input variables to n output variables, the Jacobian is an m-by-n matrix where entry (i, j) is the partial derivative of the i-th output with respect to the j-th input. It generalizes the gradient (which applies to scalar-valued functions) to vector-valued functions and is central to backpropagation in neural networks.

## Key Aspects

- The Jacobian generalizes the derivative to functions from R^n to R^m: for m functions of n parameters, it is the m-by-n matrix of all partial derivatives
- Numerator layout places functions as rows and variables as columns; denominator layout is the transpose
- Element-wise operations on vectors produce Jacobians where off-diagonal elements are zero, simplifying to a diagonal matrix
- The vector chain rule expresses backpropagation as Jacobian multiplication: df/dx = (df/dg) * (dg/dx)
- In neural network training, each layer's Jacobian is multiplied through the chain to compute gradients with respect to all parameters
- Automatic differentiation (as implemented in PyTorch and JAX) computes Jacobians efficiently using forward-mode or reverse-mode traversal of the computation graph

## Related Concepts

- [[matrix-calculus]]
- [[backpropagation]]
- [[automatic-differentiation]]
- [[gradient]] — Jacobian of a scalar function (horizontal vector)
- [[chain-rule]] — Composing Jacobians for nested functions
- [[partial-derivative]] — Individual element of the Jacobian
- [[vector-chain-rule]] — vector chain rule expressed as Jacobian multiplication

## Sources

- [[matrix-calculus-deep-learning]]
