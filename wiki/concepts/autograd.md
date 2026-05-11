---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Autograd

## Definition
Autograd (automatic differentiation) is the computational mechanism that automatically computes gradients of mathematical functions, forming the backbone of neural network training in frameworks like PyTorch and JAX. Rather than computing derivatives symbolically or numerically, autograd tracks operations on tensors during the forward pass and applies the chain rule in reverse to compute exact gradients efficiently.

## Key Aspects
- **Dynamic computation graph**: In PyTorch, the graph is built on-the-fly during each forward pass and discarded after backward, enabling flexible control flow (if/while) within models
- **Reverse-mode differentiation**: Computes the gradient of a scalar output with respect to all inputs in a single backward pass, which is efficient when outputs are scalar (loss functions)
- **Building an autograd engine from scratch**: The learning roadmap (Phase 0) recommends implementing a minimal autograd engine (like Karpathy's Micrograd) to deeply understand gradient computation before using frameworks
- **Chain rule application**: Each operation defines a local gradient; autograd composes these via the chain rule to compute total derivatives
- **Computational graph nodes**: Each tensor operation creates a node storing the forward result and a backward function; the graph connects these nodes
- **Gradient accumulation**: When a tensor is used multiple times, gradients are accumulated (summed), requiring `zero_grad()` before each training step

## Related Concepts
- [[backpropagation]] -- the algorithm autograd implements
- [[gradient-descent]] -- optimization that uses autograd-computed gradients
- [[transformers]] -- neural networks trained via autograd

## Sources
- [[learning-roadmap]]
