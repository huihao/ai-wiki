---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/method]
sources: 1
---

# Automatic Differentiation

## Summary
Automatic differentiation (auto-diff) is a technique for computing derivatives of functions specified by computer programs. Unlike symbolic differentiation or numerical approximation, auto-diff applies the chain rule systematically to elementary operations, producing exact derivatives efficiently. It is the foundational mechanism behind gradient-based optimization in modern deep learning frameworks such as PyTorch and TensorFlow.

## Key Attributes
- **Type**: concept/method
- **Notable for**: enabling efficient computation of exact gradients for arbitrary computational graphs, making neural network training feasible at scale
- **Other facts**: two main modes are forward-mode (propagating derivatives alongside forward computation) and reverse-mode (backpropagation, which computes gradients in a single backward pass); reverse-mode auto-diff is the backbone of backpropagation in deep learning

## Related Entities
- [[pytorch]] -- PyTorch implements auto-diff via its autograd engine
- [[tensorflow]] -- TensorFlow provides automatic differentiation through tf.GradientTape

## Related Concepts
- [[backpropagation]] -- backpropagation is an application of reverse-mode automatic differentiation
- [[gradient-descent]] -- auto-diff provides the gradients consumed by gradient descent optimization
- [[autograd]] -- PyTorch's specific implementation of automatic differentiation

## Sources
- [[pytorch-in-one-hour]] -- discusses how PyTorch's autograd system uses automatic differentiation for gradient computation

## Contradictions / Open Questions
- Forward-mode vs. reverse-mode trade-offs: forward-mode is more efficient when the number of inputs is small relative to outputs, while reverse-mode (backpropagation) dominates in the high-dimensional parameter setting of neural networks.
