---
created: 2026-04-28
updated: 2026-04-28
tags: [calculus, mathematics]
sources: 0
---

# Chain Rule

## Definition

The chain rule is a fundamental calculus principle for computing derivatives of composite functions. In neural networks, it enables backpropagation by decomposing gradient computation through multiple function compositions (layers). For f(g(x)), the derivative is f'(g(x)) · g'(x), extended to deep networks with many composed functions.

## Neural Network Application

In backpropagation, the loss function C is a composition of many layer functions. The gradient of loss with respect to weight w^l is:

∂C/∂w^l = ∂C/∂a^L · ∂a^L/∂z^L · ∂z^L/∂a^{L-1} · ... · ∂z^l/∂w^l

Each layer's gradient depends on gradients of all subsequent layers via chain rule multiplication.

## Key Insight

- **Forward pass**: Compute layer outputs a^l = f(z^l) where z^l = W^l a^{l-1}
- **Backward pass**: Apply chain rule to decompose ∂C/∂W^l into product of local derivatives
- **Efficiency**: Chain rule allows computing gradients layer-by-layer without recomputing entire function

## Related Concepts

- [[backpropagation]] — algorithm built on chain rule
- [[gradient-descent]] — uses chain rule gradients for updates
- [[vanishing-gradients]] — chain rule products shrink exponentially
- [[exploding-gradients]] — chain rule products grow exponentially
- [[automatic-differentiation]] — computational implementation of chain rule

## Sources

- [[understanding-backpropagation]] — mathematical foundation of backprop

## Mathematical Form

For nested functions y = f(g(h(x))):
dy/dx = f'(g(h(x))) · g'(h(x)) · h'(x)

Extended to neural networks: loss C depends on output a^L, which depends on all intermediate activations and weights. Chain rule decomposes this dependency into manageable gradient computations.