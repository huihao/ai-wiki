---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[momentum]], [[nadam]], [[gradient-descent]]
---

# Nesterov Accelerated Gradient

A momentum variant that computes the gradient at the approximate future position (after applying the momentum step) rather than at the current position, giving the optimizer "prescience" to slow down before the loss surface slopes upward again. This anticipatory update prevents overshooting and improves responsiveness, significantly boosting RNN training performance. The look-ahead gradient is computed as nabla f(theta - gamma * v_{t-1}). Proposed by Yurii Nesterov (1983).
