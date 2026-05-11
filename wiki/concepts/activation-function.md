---
created: 2026-04-28
updated: 2026-04-28
tags: [architecture, neural-network]
sources: 0
---

# Activation Function

## Definition

An activation function introduces non-linearity into neural networks, enabling them to learn complex patterns beyond linear transformations. Applied after weighted sums (z = Wx + b), activations transform layer outputs. Common functions include ReLU, sigmoid, tanh, GELU, and softmax, each with different properties affecting gradient flow and learning.

## Common Functions

- **ReLU**: f(x) = max(0, x), derivative 0 or 1, solves vanishing gradients
- **Sigmoid**: f(x) = 1/(1+e^{-x}), derivative ≤ 0.25, causes vanishing gradients
- **Tanh**: f(x) = (e^x - e^{-x})/(e^x + e^{-x}), derivative ≤ 1, zero-centered
- **GELU**: f(x) = x · Φ(x), smooth approximation of ReLU, used in transformers
- **Softmax**: f(x_i) = e^{x_i}/Σe^{x_j}, multi-class output, probabilities sum to 1
- **Leaky ReLU**: f(x) = max(αx, x) with α < 1, allows small negative gradients

## Properties

- **Non-linearity**: Essential for learning non-linear functions
- **Derivative**: Determines gradient flow in backpropagation
- **Range**: Output bounds affect downstream activations
- **Zero-centering**: Tanh is zero-centered, sigmoid is not (affects convergence)
- **Computational cost**: ReLU is cheap, sigmoid/tanh require exponentials

## Related Concepts

- [[backpropagation]] — requires activation derivatives
- [[vanishing-gradients]] — sigmoid/tanh cause this problem
- [[relu]] — most common modern activation
- [[gelu]] — activation in transformers/BERT
- [[softmax]] — output layer for classification
- [[feed-forward-network]] — each layer has activation

## Sources

- [[understanding-backpropagation]] — discusses sigmoid derivatives and gradient issues

## Choice Criteria

- **Hidden layers**: ReLU or variants (avoids vanishing gradients)
- **Output (classification)**: Softmax for probabilities
- **Output (regression)**: Linear (no activation) or sigmoid if bounded
- **RNN gates**: Sigmoid/tanh for gate control (specific use case)