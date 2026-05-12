---
created: 2026-04-28
updated: 2026-04-28
tags: [deep-learning, training]
sources: 0
---

# Vanishing Gradients

## Definition

Vanishing gradients is a training problem in deep neural networks where gradients become exponentially smaller as they propagate backward through many layers. This causes early layers to learn very slowly or stop learning entirely, while later layers continue training. Common in networks with sigmoid/tanh activations and many layers.

## Causes

- **Sigmoid/tanh derivatives**: Maximum derivative is 0.25 (sigmoid) or 1.0 (tanh), products across layers shrink exponentially
- **Chain rule multiplication**: Gradients computed as products of derivatives, many small values multiply to near-zero
- **Deep networks**: More layers → more products → smaller gradients in early layers
- **Weight initialization**: Small weights compound derivative shrinkage

## Solutions

- **ReLU activation**: Derivative is 0 or 1, no exponential decay
- **Leaky ReLU**: Allows small gradient for negative inputs
- **Residual connections**: Skip connections allow gradients to bypass layers
- **Batch normalization**: Normalizes activations, stabilizes gradient flow
- **Better initialization**: Xavier/He initialization for proper gradient scale
- **LSTM/GRU**: Architectures designed to preserve long-range gradients

## Related Concepts

- [[backpropagation]] — gradient propagation mechanism
- [[exploding-gradients]] — opposite problem (gradients too large)
- [[relu]] — primary solution to vanishing gradients
- [[gradient-clipping]] — for exploding gradients
- [[residual-connections]] — skip connections preserve gradients
- [[deep-learning]] — vanishing gradients limit depth
- [[lstm]] — RNN architecture avoiding vanishing gradients

## Sources

- [[understanding-backpropagation]] — explains vanishing gradients as training challenge

## Impact

- Limits effective network depth with sigmoid/tanh
- Motivated development of ReLU and modern architectures
- Early layers learn slowly → poor feature extraction
- ResNet (residual connections) enabled very deep networks (100+ layers)