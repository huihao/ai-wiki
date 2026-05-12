---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[adamw-optimizer]], [[nesterov-accelerated-gradient]], [[gradient-descent]]
---

# Nadam

Nesterov-accelerated Adaptive Moment Estimation -- combines Adam with Nesterov momentum by replacing the previous momentum vector with the current momentum vector in the update rule. This gives Adam the anticipatory property of NAG, improving convergence. Proposed by Timothy Dozat (2016).
