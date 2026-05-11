---
created: 2026-04-28
updated: 2026-04-28
tags: [optimization, training]
sources: 0
---

# Gradient Clipping

## Definition

Gradient clipping is a technique to prevent exploding gradients by limiting gradient magnitude during training. Before parameter updates, gradients are scaled down if their norm exceeds a threshold. This stabilizes training, prevents divergence, and enables training of deep networks and RNNs without numerical overflow.

## Methods

- **Clip by norm**: Scale gradient vector to have maximum L2 norm (e.g., max_norm=1.0)
- **Clip by value**: Cap individual gradient components to range (e.g., [-1.0, 1.0])
- **Global clipping**: Clip total gradient norm across all parameters
- **Per-parameter clipping**: Clip gradients for each parameter independently

## Implementation

```
# Clip by norm
if gradient_norm > max_norm:
    gradient = gradient * (max_norm / gradient_norm)

# Clip by value
gradient = np.clip(gradient, -clip_value, clip_value)
```

## Related Concepts

- [[exploding-gradients]] — problem gradient clipping solves
- [[vanishing-gradients]] — opposite problem, clipping doesn't help
- [[backpropagation]] — produces gradients that may need clipping
- [[gradient-descent]] — clipping applied before update step
- [[recurrent-neural-networks|RNN]] — common use case for gradient clipping
- [[training-stability]] — clipping improves convergence

## Sources

- [[understanding-backpropagation]] — mentions gradient clipping as solution

## Use Cases

- Training deep networks with many layers
- RNNs/LSTM with long sequences (time steps compound gradients)
- Fine-tuning large models with unstable gradients
- Training with high learning rates