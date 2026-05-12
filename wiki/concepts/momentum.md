---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Momentum

## Definition

Momentum is a technique used in training neural networks that adds an inertia component to weight updates, averaging gradient changes across iterations to filter noise and accelerate convergence. In the context of backpropagation, momentum (alpha) works alongside the learning rate (eta) to produce smoother, more stable optimization trajectories.

## Key Aspects

- **Two coefficients in weight updates**: Eta (learning rate) controls reaction to current deviation; alpha (momentum/inertia) averages across iterations to filter noise
- **Noise filtering**: Momentum smooths out stochastic gradient fluctuations, preventing oscillation around minima and enabling faster convergence
- **Implementation**: Weight update formula: `weight += eta * prevOutput * gradient + alpha * deltaWeight`, where deltaWeight stores the previous update
- **DeltaWeight storage**: Each connection stores its previous weight change, enabling the momentum term to accumulate velocity across iterations
- **Supervised learning context**: Applied during backpropagation's backward pass, where error gradients flow from output to input layers
- **Neural network building block**: Alongside perceptron architecture, activation functions, and backpropagation, momentum is a fundamental training component
- **Practical effect**: Without momentum, training oscillates and converges slowly; with appropriate alpha values, the optimizer "rolls through" shallow local minima
- **Tanh derivative relationship**: In implementations using tanh activation, the derivative 1/cosh(x)^2 scales the gradient before momentum is applied

## Related Concepts

- [[momentum]]
- [[stochastic-gradient-descent]]
- [[learning-rate]]
- [[backpropagation]]

## Sources

- [[neural-networks-made-easy]]
