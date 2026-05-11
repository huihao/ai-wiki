---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# supervised-learning

## Definition

Supervised learning is a machine learning paradigm where a model learns to map inputs to outputs by training on labeled datasets containing input-output pairs, then generalizes to make predictions on unseen data. It is one of three fundamental learning paradigms alongside unsupervised learning (pattern discovery in unlabeled data) and reinforcement learning (learning through environmental reward). In neural networks, supervised learning is implemented through backpropagation, where the network's error on training examples is propagated backward to adjust connection weights using gradient descent.

## Key Aspects

- **Labeled Training Data**: The defining characteristic -- training examples include both the input and the correct output (label), providing explicit supervision
- **Backpropagation**: The standard training algorithm consists of two passes: a forward pass that computes the network's output, and a backward pass that propagates error and adjusts weights using stochastic gradient descent
- **Learning Rate (eta)**: Controls how aggressively weights are updated in response to each training example; too high causes oscillation, too low causes slow convergence
- **Momentum (alpha)**: An inertia coefficient that averages weight updates across iterations, filtering noise from individual examples and smoothing convergence
- **Architecture Design**: Input neurons match data dimensionality; output neurons match the number of prediction classes; hidden layer depth should approximate the causal chain depth of the problem (e.g., 4 hidden layers for "5 why" analysis)
- **Three Paradigms Comparison**: Supervised (labeled data, explicit targets), unsupervised (clustering, structure discovery), reinforcement (reward signals, exploration)
- **Perceptron Viability**: The single-layer perceptron (Rosenblatt, 1957) remains a viable building block despite 60+ years of advancement; modern deep networks stack many perceptron-like units
- **Course Coverage**: Taught as Part 1 of Princeton's COS 324 Introduction to Machine Learning, covering fundamentals before unsupervised, deep, and reinforcement learning

## Related Concepts

- [[backpropagation]] -- Training algorithm for propagating error and adjusting weights
- [[neural-networks]] -- Connected layers of perceptron-like units
- [[stochastic-gradient-descent]] -- Optimization algorithm using random subsets of training data
- [[activation-function]] -- Non-linear function applied to neuron output (sigmoid, tanh, ReLU)
- [[deep-learning]] -- Neural networks with multiple hidden layers

## Sources

- [[introduction-to-machine-learning]] -- Princeton COS 324 course notes covering supervised learning fundamentals
- [[machine-learning-datasets]] -- Datasets used for supervised learning benchmarks and evaluation
- [[neural-networks-made-easy]] -- Hands-on tutorial building neural networks from scratch with supervised learning
