---
created: 2026-04-29
updated: 2026-05-08
tags: [fundamentals, history, neural-network]
---

# Perceptron

## Definition

The perceptron is the simplest type of artificial neural network, consisting of a single layer of weights connected to input features. It makes decisions by calculating a weighted sum of inputs and passing it through a step function. If the sum exceeds a threshold, it classifies the input as one class; otherwise, another.

## How It Works

```
output = step(w₁x₁ + w₂x₂ + ... + wₙxₙ + bias)
```
- Inputs are multiplied by weights, summed, and a bias is added
- The step function outputs 1 if the sum ≥ 0, else 0
- Learning rule: update weights proportional to (target - output) × input

## Types

### Single-Layer Perceptron

- Can only learn linearly separable functions
- Convergence guaranteed if data is linearly separable (Perceptron Convergence Theorem, 1958)

### Multi-Layer Perceptron (MLP)

- Multiple layers of perceptrons with non-linear activation functions
- Can approximate any continuous function (Universal Approximation Theorem)
- Trained with backpropagation

## Limitations (Minsky & Papert, 1969)

The XOR problem showed that a single-layer perceptron cannot learn non-linearly separable functions. This criticism, published in *Perceptrons* (1969), contributed to the first "AI winter" by dampening neural network research funding for over a decade.

## Adaline (Adaptive Linear Neuron)

Improved on the perceptron by:
- Using a linear activation function (not a step function) during training
- Updating weights using gradient descent (not the perceptron learning rule)
- Enabled learning from continuous-valued outputs

## Historical Significance

- **1957**: Frank Rosenblatt invents the perceptron at Cornell
- **1958**: Perceptron Convergence Theorem proves training will converge
- **1969**: Minsky & Papert publish critique; neural network research declines
- **1986**: Rumelhart, Hinton & Williams show backpropagation can train MLPs; neural networks revival

## Related Concepts

- [[neural-networks|Neural Networks]] — perceptron is the simplest neural network
- [[backpropagation|Backpropagation]] — training algorithm for MLPs
- [[linear-algebra|Linear Algebra]] — weighted sum is a dot product
- [[optimization|Optimization]] — weight updates use gradient descent

## Sources

- [[neural-networks-made-easy]]
- [[077_tiny-tpu|Tiny TPU]]
- [[072_math-for-machine-learning-resources]]

## Evolution

- **1957**: Rosenblatt builds the Mark I perceptron — first hardware neural network
- **1960**: Widrow & Hoff create Adaline — continuous activation, gradient-based learning
- **1969**: Minsky & Papert expose single-layer limits; funding dries up
- **1986**: Backpropagation revives interest in multi-layer networks
- **Current**: The perceptron lives on as the basic unit of modern deep learning; every neuron in a Transformer is essentially a perceptron with a different activation function
