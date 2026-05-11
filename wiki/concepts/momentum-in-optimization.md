---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Momentum in Optimization

## Definition

Momentum in optimization is a gradient descent variant that accelerates convergence by accumulating a velocity term from past gradients, enabling the optimizer to maintain direction through flat regions and dampen oscillations in high-curvature directions. It is one of the foundational improvements over vanilla stochastic gradient descent, documented extensively in Distill's interactive explanations.

## Key Aspects

- **Velocity accumulation**: Past gradients contribute to a running velocity that persists across iterations, building speed in consistently-angled gradient directions
- **Dampening oscillation**: In narrow valleys of the loss landscape, momentum cancels out perpendicular oscillations while accelerating progress along the valley floor
- **Physical analogy**: Similar to a ball rolling downhill — momentum carries it through local flat spots and small bumps
- **Learning rate interaction**: The momentum coefficient (typically 0.9) and learning rate must be tuned together for optimal convergence
- **Nesterov momentum**: Look-ahead variant that evaluates gradients at the projected position rather than current position, often converging faster
- **Distill publication legacy**: Interactive visualizations of momentum behavior made this concept accessible to practitioners through engaging visual explanations
- **Foundation for Adam**: Modern optimizers like Adam extend momentum by maintaining per-parameter adaptive learning rates alongside momentum
- **Training stability**: Momentum contributes to training stability alongside layer normalization, residual connections, and learning rate scheduling

## Related Concepts

- [[momentum]]
- [[stochastic-gradient-descent]]
- [[adam-optimizer]]
- [[learning-rate-scheduling]]

## Sources

- [[distill-pub]]
