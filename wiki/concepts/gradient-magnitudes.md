---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Gradient Magnitudes

## Definition

Gradient magnitudes are the absolute sizes of gradient vectors during neural network training, serving as a diagnostic indicator of training health. Monitoring gradient magnitudes across layers and training iterations reveals whether the network suffers from vanishing gradients (too small), exploding gradients (too large), or is training stably. The Distill publication covers visualization techniques for analyzing gradient behavior in recurrent networks.

## Key Aspects

- **Vanishing Gradients**: Gradient magnitudes that decay toward zero as they propagate through layers, preventing earlier layers from learning; common in deep networks without skip connections
- **Exploding Gradients**: Gradient magnitudes that grow uncontrollably, causing unstable weight updates and divergent training; addressed by gradient clipping
- **Diagnostic Tool**: Plotting gradient magnitudes per layer across training steps reveals training pathologies before they manifest as poor loss curves
- **Recurrent Networks**: In RNNs, gradient magnitudes are particularly sensitive to sequence length; gradients through many time steps can vanish or explode exponentially
- **Normalization Effects**: Layer normalization and batch normalization stabilize gradient magnitudes, keeping them within a useful range across all layers

## Related Concepts
- [[gradient-flow]]
- [[gradient-boosting]]

## Sources
- [[distill-pub]]
