---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Total Derivative

## Definition

The total derivative accounts for all paths through which an intermediate variable depends on a parameter, summing contributions from every route in the dependency graph. In deep learning, it is the mathematical foundation of backpropagation, where the chain rule for total derivatives is applied layer-by-layer to compute gradients through composed functions.

## Key Aspects

- Unlike a partial derivative (which varies one variable while holding all others constant), the total derivative sums contributions from all intermediate variables that are themselves functions of the parameter.
- The single-variable chain rule handles one path: dy/dx = (dy/du)(du/dx). The total derivative generalizes this to multiple paths, summing the product of derivatives along each route.
- The vector chain rule expresses this compactly as Jacobian multiplication: df/dx = (df/dg)(dg/dx), where each term is a Jacobian matrix of partial derivatives.
- Automatic differentiation frameworks (PyTorch autograd, JAX) implement exactly this process: they introduce intermediate variables and chain their derivatives according to the total derivative rule.
- For a neuron with activation a = max(0, w dot x + b), the gradient of the loss with respect to w is either 0 (ReLU clips) or proportional to the input x (ReLU active), illustrating how the total derivative flows through piecewise-linear activations.
- The mean-squared-error loss gradient with respect to weights is a weighted average of inputs, with error terms (target minus prediction) serving as the weights.

## Related Concepts

- [[jacobian]] -- matrix of all partial derivatives used in the vector chain rule
- [[backpropagation]] -- the computational procedure that applies total derivatives layer-by-layer
- [[automatic-differentiation]] -- software implementation of the total derivative chain rule

## Sources

- [[matrix-calculus-deep-learning]]
