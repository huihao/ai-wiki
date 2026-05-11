---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, regularization]
sources: 2
---

# Dropout

## Definition
Dropout is a regularization technique for neural networks that randomly deactivates a fraction of neurons during each training forward pass, preventing co-adaptation of features and reducing overfitting. By forcing the network to learn redundant representations, dropout improves generalization to unseen data.

## Key Aspects
- During training, each neuron is independently set to zero with probability p (typically 0.1-0.5)
- At inference time, all neurons are active but outputs are scaled by (1-p) to maintain expected values
- Prevents co-adaptation: neurons cannot rely on specific other neurons always being present
- Acts as an implicit ensemble of exponentially many thinned sub-networks
- Listed as an auxiliary feature alongside layer normalization and residual connections in transformer architectures
- Addresses overfitting specifically, complementing other challenges like vanishing/exploding gradients
- Dropout rates may vary across layers, with higher rates in layers prone to overfitting

## Related Concepts
- [[cross-entropy]]
- [[generalization]]

## Sources
- [[transformer-explainer-visually-explained]]
- [[understanding-backpropagation]]
