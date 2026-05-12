---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Gradient

## Definition

A gradient is a vector of partial derivatives of a scalar-valued function with respect to a vector of inputs, pointing in the direction of steepest increase of the function. In deep learning, gradients are the fundamental mechanism through which neural networks learn — backpropagation computes the gradient of the loss function with respect to each weight, and gradient descent uses this information to iteratively adjust weights toward lower loss.

## Key Aspects

- **Vector of partials**: The gradient organizes all partial derivatives of a scalar function f with respect to a vector x into a horizontal vector, capturing how f changes as each element of x changes independently.
- **Jacobian as generalization**: For vector-valued functions (multiple outputs), the Jacobian matrix — an m x n matrix of all possible partial derivatives — generalizes the gradient; the gradient is the special case where f is scalar-valued.
- **Chain rule for composition**: The vector chain rule (partial f / partial x = (partial f / partial g) * (partial g / partial x)) enables efficient computation of gradients through arbitrarily deep compositions of functions — this is exactly what PyTorch's autograd implements via backpropagation.
- **Neuron activation gradient**: For a ReLU activation a = max(0, w*x + b), the gradient with respect to w is either 0 (when ReLU clips) or x (when active) — a simple but illustrative example of how gradients propagate through neural network layers.
- **Loss function gradient**: The gradient of MSE loss with respect to weights is a weighted average of inputs, where the weights are the error terms (target minus prediction) — larger errors produce larger gradients, causing proportionally larger weight updates.
- **Gradient descent**: The update rule w = w - alpha * gradient(w) moves weights in the direction opposite to increasing cost; the step size (learning rate alpha) controls how far each update moves, balancing convergence speed against stability.
- **Matrix calculus foundations**: Understanding gradients requires familiarity with matrix calculus — particularly the distinction between numerator layout and denominator layout (transposes of each other), and the element-wise diagonal condition that simplifies Jacobians for common neural network operations.

## Related Concepts

- [[jacobian]]
- [[matrix-calculus-deep-learning]]
- [[backpropagation]]

## Sources

- [[jacobian]]
- [[matrix-calculus-deep-learning]]
- [[vector-chain-rule]]
