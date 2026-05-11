---
created: 2026-04-28
updated: 2026-05-09
tags: [deep-learning, optimization, training]
sources: 4
---

# Backpropagation

## Definition

Backpropagation (backward propagation of errors) is the fundamental algorithm for training neural networks by computing the gradient of the loss function with respect to each weight in the network. It applies the [[chain-rule]] of calculus to efficiently propagate error signals backward from the output layer to earlier layers. Together with [[gradient-descent]], it enables models to learn by iteratively updating weights to minimize prediction error. The algorithm is computationally efficient because it reuses intermediate computations across layers.

## Key Proponents / Critics

- [[geoffrey-hinton]] — popularized backpropagation for neural network training in his 1986 Nature paper with Rumelhart and Williams
- [[sepp-hochreiter]] — demonstrated limitations of backpropagation through time for long sequences, contributing to the [[vanishing-gradients]] problem discovery
- [[yann-le-cun]] — applied backpropagation to convolutional networks for handwritten digit recognition in the 1980s-90s
- [[frank-rosenblatt]] — creator of the perceptron, whose limitations motivated the need for multi-layer training methods

## Related Concepts

- [[gradient-descent]] — the optimization algorithm that uses gradients computed by backpropagation to update weights
- [[chain-rule]] — the mathematical foundation underlying backpropagation's ability to compute gradients through composed functions
- [[loss-function]] — the objective function whose gradient backpropagation computes
- [[automatic-differentiation]] — the general computational technique of which backpropagation is a specific instance
- [[vanishing-gradients]] — a well-known problem where gradients shrink exponentially during backpropagation in deep networks
- [[exploding-gradients]] — the opposite problem where gradients grow uncontrollably during backpropagation
- [[gradient-clipping]] — a technique to mitigate exploding gradients during backpropagation
- [[residual-connections]] — architectural innovation that helps backpropagation in very deep networks
- [[transformers]] — modern architecture that relies on backpropagation through self-attention layers

## Related Entities

- [[pytorch]] — deep learning framework providing automatic backpropagation via autograd
- [[tensorflow]] — Google's deep learning framework with built-in backpropagation support
- [[jax]] — functional deep learning framework with composable transformation-based autodiff

## Sources

- [[understanding-backpropagation]] — detailed walkthrough of how backpropagation computes gradients
- [[deep-learning-fundamentals]] — foundational material on neural network training including backpropagation
- [[gradient-based-learning-document-recognition-lenet5]] — LeCun's original application of backpropagation to character recognition
- [[neural-networks-made-easy]] — accessible introduction to backpropagation and neural network training

## Evolution

- **1960s**: Linnainmaa describes the reverse mode of automatic differentiation (the mathematical basis)
- **1970**: Werbos proposes applying backpropagation to neural networks in his PhD thesis
- **1986**: Rumelhart, Hinton, and Williams publish the landmark paper making backpropagation widely known
- **1989**: LeCun applies backpropagation to train convolutional networks for zip code recognition
- **1991**: Hochreiter identifies the [[vanishing-gradients]] problem in deep recurrent networks
- **2006**: Hinton's deep belief networks demonstrate backpropagation can train very deep architectures with pre-training
- **2010s**: [[automatic-differentiation]] frameworks ([[pytorch]], [[tensorflow]]) make backpropagation accessible to all practitioners
- **2015**: [[residual-connections]] (ResNet) solve the degradation problem, enabling backpropagation through 150+ layer networks
