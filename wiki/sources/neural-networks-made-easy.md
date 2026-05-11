---
created: 2026-04-29
updated: 2026-04-29
url: "https://www.mql5.com/en/articles/7447"
title: "Neural Networks Made Easy"
tags: [source, neural-networks, trading, implementation]
source: jina_ai
---

# Neural Networks Made Easy

**Author:** MQL5 community article
**URL:** https://www.mql5.com/en/articles/7447
**Language:** MQL5 (MetaTrader 5)

## Summary

A hands-on tutorial building a neural network from scratch in MQL5 (MetaTrader 5 trading language), demonstrating that neural networks are not as mysterious as they seem. Covers the fundamentals — perceptron architecture, neuron structure with activation functions, supervised learning via backpropagation, and implements a complete neural network class hierarchy without any third-party libraries.

## Key Takeaways

1. **Neural network = connected neurons in layers**: Input layer → hidden layers → output layer. Each neuron computes weighted sum of inputs, applies activation function.
2. **Two functions per neuron**: (1) Weighted sum of inputs, (2) Activation function (sigmoid or tanh). For trading: tanh maps to [-1, 1] (sell/buy signals).
3. **Three learning paradigms**: Supervised (labeled data), unsupervised (clustering), reinforcement (reward-based). Article uses supervised with backpropagation.
4. **Backpropagation = two-pass**: Forward pass computes output, backward pass propagates error and adjusts weights using stochastic gradient descent.
5. **Weight adjustment uses two coefficients**: eta (learning rate, reduces reaction to current deviation) + alpha (inertia/momentum, averages across iterations to filter noise).
6. **Architecture decisions**: Input neurons = data array size; output neurons = number of questions; hidden layers ≈ depth of causal chain (e.g., 4 hidden for "5 why" technique).
7. **Building blocks in MQL5**: CConnection (weight + deltaWeight), CNeuron (forward/backward pass), CLayer, CArrayLayer, CNet (orchestrator).
8. **Perceptron still viable**: Introduced by Rosenblatt in 1957, still generates good results despite 60+ years of advancement.

## Entities Mentioned

- **Frank Rosenblatt** — Inventor of the perceptron (1957)
- **MQL5** — MetaTrader 5 programming language for trading

## Concepts Mentioned

- [[perceptron]] — Single-layer neural network, earliest neural network model
- [[activation-function]] — Non-linear function applied to neuron output (sigmoid, tanh, ReLU)
- [[backpropagation]] — Training algorithm propagating error backward through network
- [[stochastic-gradient-descent]] — Optimization using random subsets of training data
- [[supervised-learning]] — Learning from labeled input-output pairs
- [[weight-initialization]] — Setting initial connection weights (random in this implementation)
- [[learning-rate]] — Coefficient controlling step size during weight updates (eta)
- [[momentum]] — Inertia coefficient for smoothing weight updates (alpha)

## Raw Notes

- MQL5 implementation: no third-party libraries, pure trading language
- CConnection stores weight and deltaWeight (for momentum)
- CNeuron: feedForward loops through prev layer, sums weighted outputs, applies tanh
- activationFunctionDerivative: 1/cosh(x)² (tanh derivative)
- Gradient calculation differs for output vs hidden layer neurons
- sumDOW: sum of (next layer gradient * connection weight) for hidden layer error
- Weight update: con.weight += eta * prevOutput * gradient + alpha * deltaWeight
- Save/Load methods for persisting trained networks
- CNet constructor takes topology array: each element = neurons per layer

## Questions / Follow-ups

- How does this compare to implementing the same network in Python/PyTorch?
- What are the practical trading results of this implementation?
- How does this extend to recurrent or convolutional architectures?
