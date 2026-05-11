---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Weight Initialization

## Definition

Weight initialization is the process of setting the initial values of a neural network's parameters before training begins. Proper initialization ensures stable gradient flow, prevents vanishing or exploding gradients, and significantly affects convergence speed and final model quality.

## Key Aspects

- **Zero Initialization Problem**: Setting all weights to zero causes symmetry—every neuron learns the same features, collapsing the network's representational power. Random initialization breaks this symmetry.
- **Xavier/Glorot Initialization**: Scales weights by `1/sqrt(fan_in)` (or `2/(fan_in + fan_out)`), keeping variance of activations and gradients stable across layers. Works well with sigmoid and tanh activations.
- **He Initialization**: Uses `sqrt(2/fan_in)` scaling, designed for ReLU activations to compensate for the half-zero output that ReLU introduces.
- **Kaiming Initialization**: Extension of He initialization that accounts for the slope of the activation function, maintaining proper gradient variance through deep networks.
- **Orthogonal Initialization**: Initializes weight matrices as orthogonal matrices, preserving gradient norms during backpropagation and helping with recurrent network training.
- **Impact on Training**: Poor initialization can make networks untrainable regardless of architecture; modern initialization schemes are often baked into frameworks like PyTorch (`nn.init`).

## Related Concepts

- [[neural-network-training]]
- [[deep-network-scaling-in-rl]]
- [[gradient-descent]]
- [[backpropagation]]
- [[regularization]]

## Sources

- [[neural-networks-made-easy]]
