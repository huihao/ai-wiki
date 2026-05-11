---
created: 2026-04-29
updated: 2026-05-09
tags: [autograd, deep-learning, mathematics]
sources: 1
---

# Micrograd

## Definition

Micrograd is Andrej Karpathy's educational autograd engine that implements backpropagation from scratch in a few hundred lines of Python. It demonstrates how automatic differentiation works by building a computation graph of scalar values and computing gradients efficiently. Building Micrograd is a recommended first project for understanding the mathematical foundations of deep learning before moving on to transformers. The engine supports basic arithmetic operations and a small set of activation functions (ReLU, tanh), making it ideal for building a small neural network and training it on toy problems to gain an intuitive understanding of gradient-based optimization.

## Key Proponents / Critics

- [[andrej-karpathy]] — Created Micrograd as part of his "Neural Networks: Zero to Hero" educational series

## Related Concepts

- [[autograd]] — Micrograd is a minimal implementation of the automatic differentiation concept
- [[backpropagation]] — Micrograd implements backpropagation to compute gradients through the computation graph
- [[neural-networks]] — Micrograd builds small neural networks to demonstrate how training works
- [[deep-learning]] — Micrograd serves as a foundational stepping stone for understanding deep learning
- [[gradient-descent]] — The gradients computed by Micrograd are used in gradient descent optimization

## Related Entities

- [[andrej-karpathy]] — Author and educator behind the Micrograd project

## Sources

- [[practical-deep-learning-for-coders]] — Part of the broader deep learning education ecosystem that Micrograd complements

## Evolution

- **2020**: Andrej Karpathy first releases Micrograd on GitHub as an educational tool
- **2022**: Micrograd becomes part of Karpathy's popular "Neural Networks: Zero to Hero" video series, significantly increasing its reach
- **2023-2024**: Micrograd becomes a widely recommended starting point for ML practitioners wanting to understand the internals of training neural networks
