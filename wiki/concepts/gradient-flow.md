---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Gradient Flow

## Definition

Gradient flow refers to the propagation of gradients through a neural network during backpropagation. The quality of gradient flow — whether gradients remain at useful magnitudes across many layers — determines whether deep networks can be trained effectively. Residual connections, careful initialization, and normalization techniques are primary mechanisms for maintaining healthy gradient flow in deep architectures.

## Key Aspects

- **Vanishing Gradients**: In deep networks without skip connections, gradients shrink exponentially as they propagate backward through layers, making early layers untrainable
- **Residual Connections**: Adding skip connections (y = F(x) + x) creates gradient highways that allow gradients to flow directly to earlier layers without attenuation
- **Layer Normalization**: Normalizing intermediate activations stabilizes gradient magnitudes across layers, improving training convergence
- **Gradient Clipping**: Capping gradient norms prevents exploding gradients in deep or recurrent networks
- **Measurement**: Gradient magnitudes at each layer can be monitored during training to diagnose flow problems; the Distill publication covers techniques for visualizing and analyzing gradient behavior

## Related Concepts
- [[gradient-magnitudes]]
- [[gradient-boosting]]
- [[residual-connections]]

## Sources
- [[building-llm-from-scratch-rust-part3]]
