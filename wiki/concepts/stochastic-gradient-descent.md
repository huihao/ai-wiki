---
created: 2026-04-29
updated: 2026-05-09
tags: [deep-learning, optimization]
sources: 1
---

# Stochastic Gradient Descent

## Definition

Stochastic Gradient Descent (SGD) is an optimization algorithm that updates model parameters using the gradient of the loss function computed on a single randomly sampled training example (or a small mini-batch) rather than the entire dataset. By introducing noise through random sampling, SGD enables efficient training of large-scale neural networks and often converges faster than batch gradient descent, while the stochastic nature can help escape shallow local minima.

## Key Aspects

- **Core update rule**: Parameters are adjusted by subtracting the learning rate multiplied by the gradient computed on one sample or mini-batch: w = w - eta * gradient.
- **Learning rate (eta)**: Controls the step size of each update. Too large causes divergence; too small results in slow convergence. Learning rate schedules (decay, warmup, cyclical) are critical for training stability.
- **Momentum (alpha)**: An inertia coefficient that averages gradients across iterations, smoothing out noise and accelerating convergence in consistent gradient directions. The update becomes: w = w - eta * gradient + alpha * deltaWeight.
- **Mini-batch variant**: The practical standard — computes gradients on small subsets (32-512 samples) to balance gradient accuracy with computational efficiency and GPU parallelism.
- **Noise as regularizer**: The stochastic noise in gradient estimates acts as implicit regularization, helping SGD generalize better than batch methods in many deep learning settings.
- **Convergence properties**: Under appropriate learning rate schedules, SGD provably converges to critical points of the loss function, though non-convex landscapes (deep networks) may yield saddle points rather than global minima.

## Related Concepts

- [[backpropagation]]
- [[learning-rate]]
- [[momentum]]
- [[automatic-differentiation]]

## Sources

- [[neural-networks-made-easy]]
