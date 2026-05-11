---
created: 2026-04-29
updated: 2026-05-08
tags: [fundamentals, mathematics]
---

# Calculus

## Definition

Calculus is the branch of mathematics studying continuous change, encompassing limits, derivatives, integrals, and infinite series. In machine learning, calculus is essential for understanding gradient descent (the optimization algorithm that powers model training), backpropagation (how gradients flow through neural networks), and partial derivatives (how multi-variable functions change).

## Core Concepts for Machine Learning

### Derivatives

The derivative f'(x) measures the instantaneous rate of change of a function:
- **Gradient**: Vector of partial derivatives; points in the direction of steepest ascent
- **Directional derivative**: Rate of change in a specific direction
- **Critical points**: Where gradient = 0 (minima, maxima, saddle points)

### Chain Rule

The backbone of backpropagation:
```
d/dx f(g(x)) = f'(g(x)) · g'(x)
```
For neural networks with layers f₁, f₂, ..., fₙ:
```
dL/dw₁ = dL/dy · dy/dhₙ · ... · dh₂/dh₁ · dh₁/dw₁
```

### Gradient Descent

Iteratively move parameters opposite to the gradient:
```
w ← w - η · ∇L(w)
```
where η is the learning rate and ∇L is the loss gradient.

### Jacobians and Hessians

- **Jacobian**: Matrix of all first-order partial derivatives (used in normalizing flows, forward-mode autodiff)
- **Hessian**: Matrix of second-order derivatives (curvature information; used in second-order optimization)

## Key Applications in ML

| Concept | Calculus Foundation |
|---------|-------------------|
| Backpropagation | Chain rule applied recursively |
| Gradient descent | First-order derivatives |
| Regularization gradients | Derivative of L1/L2 penalty |
| Diffusion models | Stochastic differential equations |
| Normalizing flows | Jacobian determinant |

## Automatic Differentiation

Not numerical approximation (finite differences) or symbolic differentiation, but rather computational graph traversal that applies the chain rule exactly:
- **Forward mode**: Propagate derivatives alongside forward pass (efficient for few inputs, many outputs)
- **Reverse mode (backpropagation)**: Propagate derivatives backward from loss (efficient for many inputs, one output — standard in ML)
- **Libraries**: PyTorch `autograd`, JAX `grad`, TensorFlow `GradientTape`

## Related Concepts

- [[optimization|Optimization]] — uses gradients to minimize loss
- [[linear-algebra|Linear Algebra]] — gradients are vectors; Hessians are matrices
- [[probability|Probability]] — calculus underpins continuous probability (integration)
- [[backpropagation|Backpropagation]] — chain rule applied to neural networks
- [[matrix-multiplication|Matrix Multiplication]] — Jacobian computation

## Sources

- [[072_math-for-machine-learning-resources]]
- [[mathematics-for-machine-learning-book]]

## Evolution

- **17th century**: Newton and Leibniz independently develop calculus
- **1970**: Linnainmaa implements reverse-mode automatic differentiation
- **1986**: Rumelhart, Hinton & Williams popularize backpropagation (chain rule for neural nets)
- **2000s+**: Automatic differentiation frameworks (PyTorch, TensorFlow) make calculus invisible to practitioners
- **Current**: Differentiable programming extends calculus-based optimization to entire pipelines — including physics simulations, rendering, and control systems
