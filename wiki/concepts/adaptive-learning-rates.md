---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Adaptive Learning Rates

## Definition
Adaptive learning rates are optimization techniques that automatically adjust the step size for each parameter during training based on historical gradient information, rather than using a single global learning rate. These methods enable more efficient convergence by giving frequently updated parameters smaller steps and rarely updated parameters larger steps.

## Key Aspects
- Per-parameter adaptation allows different parameters to converge at different rates, matching their individual gradient statistics
- Family includes Adagrad (cumulative squared gradients), RMSProp (exponential moving average of squared gradients), and Adam (momentum + adaptive rates)
- Critical for training deep networks where different layers and parameters have vastly different gradient magnitudes
- In online learning settings, adaptive rates connect to regret minimization — achieving sublinear regret in the face of adversarial or non-stationary objectives
- Learning rate schedules (warmup, cosine decay, etc.) complement per-parameter adaptation at the global level

## Related Concepts
- [[adam-optimizer]]
- [[adagrad]]

## Sources
- [[online-learning]]
- [[regret-minimization]]
