---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, parameterization, scaling]
sources: 1
---
# ABC Parameterization

## Definition

The ABC parameterization is a unified framework for analyzing neural network parameterizations, where each parameter is characterized by three quantities: a (initialization scale), b (multiplier/forward multiplier), and c (learning rate multiplier). Different choices of a, b, c for each layer define different parameterization schemes (Standard, muP, SP, etc.).

## Key Concepts

- Each parameter has three attributes: a (init std), b (output multiplier), c (learning rate scale)
- Standard Parameterization (SP) defines only the initialization scale (a) and leaves b and c implicit
- muP extends SP by specifying all three quantities: a, b, and c for every parameter
- The ABC framework enables systematic comparison of different parameterizations
- The goal is to choose a, b, c such that pre-activations remain Theta(1) as width increases
- The derivation relies on signal propagation analysis: tracking how variance changes through layers
- In standard parameterization, activations scale as O(sqrt(width)), breaking HP transfer
- muP sets a = O(1/sqrt(width)), b = O(1/sqrt(width)), c = O(1/width) for weights
- The ABC framework was introduced in the Tensor Program series (Yang & Hu)

## Related Concepts

- [[mup-parameterization]]
- [[scaling-laws]]
- [[maximal-feature-learning]]
- [[hyperparameter-transfer]]

## Sources

- [[how-to-scale]]
- [[what-to-do-to-scale-up]]
