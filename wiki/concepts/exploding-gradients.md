---
created: 2026-04-28
updated: 2026-04-28
tags: [deep-learning, training]
sources: 0
---

# Exploding Gradients

## Definition

Exploding gradients is a training problem where gradients become exponentially large during backpropagation, causing unstable training, divergent loss, and numerical overflow. This occurs when derivative products across layers amplify instead of shrink, leading to extreme weight updates that destabilize the network.

## Causes

- **Large derivatives**: Activations with large gradients (e.g., linear with large weights)
- **Weight initialization**: Large initial weights cause large activations → large gradients
- **Chain rule multiplication**: Large derivatives multiply across many layers
- **Long sequences**: RNNs with many time steps compound gradient explosion
- **Recurrent networks**: Gradient loops through time steps, amplifying exponentially

## Solutions

- **Gradient clipping**: Cap gradient magnitude to maximum value (e.g., clip norm to 1.0)
- **Weight regularization**: L2 regularization penalizes large weights
- **Better initialization**: Xavier/He initialization control initial gradient scale
- **Architectural changes**: LSTM/GRU gates control gradient flow in RNNs
- **Smaller learning rate**: Reduce step size to handle larger gradients

## Related Concepts

- [[vanishing-gradients]] — opposite problem (gradients too small)
- [[gradient-clipping]] — primary solution
- [[backpropagation]] — gradient computation mechanism
- [[lstm]] — architecture with controlled gradient flow
- [[gradient-descent]] — affected by exploding gradients
- [[recurrent-neural-networks|RNN]] — prone to gradient explosion

## Sources

- [[understanding-backpropagation]] — identifies exploding gradients as challenge

## Symptoms

- Loss becomes NaN or Inf during training
- Weights become extremely large or NaN
- Training instability, loss oscillates wildly
- Model diverges instead of converging