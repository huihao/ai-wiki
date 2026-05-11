---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, feature-learning, infinite-width]
sources: 1
---
# Maximal Feature Learning

## Definition

Maximal feature learning is the principle that every layer in a neural network should learn features as efficiently as possible at each optimization step, serving as the fundamental goal behind muP (Maximal Update Parameterization). It ensures that all layers, including the output layer, contribute maximally to learning.

## Key Concepts

- The goal of muP is to achieve maximal feature learning, not just hyperparameter transfer
- In standard parameterization, deeper layers learn features slower than the output layer as width increases
- Maximal feature learning ensures that every layer updates its features at the same rate
- This is achieved by scaling initialization, multipliers, and learning rates appropriately per layer
- Without maximal feature learning, some layers become "lazy" (close to linear) while others overfit
- The condition is: pre-activations should remain Theta(1) scale regardless of network width
- Law of Large Numbers and Central Limit Theorem are used to analyze the activation scale
- Maximal feature learning is stronger than just requiring bounded activations
- The framework enables infinite-width networks that still learn meaningful features

## Related Concepts

- [[mup-parameterization]]
- [[abc-parameterization]]
- [[scaling-laws]]
- [[hyperparameter-transfer]]

## Sources

- [[how-to-scale]]
- [[what-to-do-to-scale-up]]
