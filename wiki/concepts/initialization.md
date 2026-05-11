---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Initialization

## Definition

Initialization refers to the method used to set the initial values of a neural network's weights and biases before training begins. Proper initialization is critical because it determines the scale of activations and gradients flowing through the network at the start of training, directly impacting whether the model converges, diverges, or gets stuck in a poor local minimum.

## Key Aspects

- Poor initialization causes vanishing or exploding gradients, preventing training from making progress in early iterations
- Zero initialization is generally harmful because it creates symmetry -- all neurons in a layer learn the same thing
- Xavier/Glorot initialization scales weights by the inverse square root of fan-in (number of inputs), suitable for sigmoid and tanh activations
- Kaiming/He initialization accounts for ReLU's halving of variance, using inverse square root of fan-in divided by two
- In maximal-update parameterization (muP), initialization scale is coordinated with learning rate scaling to enable stable transfer of hyperparameters across model widths
- Modern large language models use carefully tuned initialization scales that interact with normalization layers and residual connections to ensure stable training dynamics from the first gradient step

## Related Concepts

- [[maximal-update-parameterization]]
- [[gradient-descent]]
- [[neural-network-training]]

## Sources

- [[maximal-update-parameterization]]
