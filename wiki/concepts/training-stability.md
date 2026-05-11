---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Training Stability

## Definition

Training stability refers to the techniques and practices used to prevent loss divergence, gradient explosions, and oscillatory behavior during neural network training, ensuring that the optimization process converges reliably to a good solution.

## Key Aspects

- Gradient clipping is a primary technique: it caps the norm of the gradient vector at a threshold, preventing individual weight updates from becoming so large that they destabilize training.
- The two common clipping strategies are value clipping (clipping each gradient element independently) and norm clipping (scaling the entire gradient vector when its norm exceeds a threshold).
- Exploding gradients are a major source of instability, particularly in recurrent networks and very deep feedforward networks; gradient clipping directly mitigates this.
- Vanishing gradients cause the opposite problem -- weights stop updating effectively; solutions include ReLU activations, residual connections, and careful initialization.
- Learning rate scheduling (warmup followed by cosine decay or step decay) prevents large initial updates from destabilizing training before the model has found a good region of the loss landscape.
- Weight initialization strategies (Xavier/Glorot, He/Kaiming) ensure that activations and gradients maintain reasonable variance across layers at the start of training.
- Mixed-precision training (FP16/BF16) introduces its own stability concerns; loss scaling is used to prevent underflow in low-precision gradients.
- Monitoring tools track loss curves, gradient norms per layer, and activation statistics to detect instability early.

## Related Concepts

- [[gradient-clipping]] -- direct technique for capping gradient magnitudes
- [[weight-initialization]] -- setting initial weights to prevent gradient pathologies
- [[training-infrastructure]] -- the broader system supporting stable model development

## Sources

- [[understanding-backpropagation]]
