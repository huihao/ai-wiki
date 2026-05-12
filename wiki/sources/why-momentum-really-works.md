---
created: 2026-05-12
updated: 2026-05-12
tags: [source]
---

# Why Momentum Really Works

**Author:** [[gabriel-goh|Gabriel Goh]]
**URL:** https://distill.pub/2017/momentum/

## Summary

Distill.pub interactive article providing a precise mathematical analysis of momentum in optimization. Goes beyond the "ball rolling down a hill" intuition to show: (1) Momentum provides up to quadratic speedup on convex quadratics — comparable to FFT or Quicksort; (2) The convergence rate for complex eigenvalues is sqrt(beta), independent of step-size; (3) Momentum creates its own oscillations that interact with the loss landscape; (4) Under stochastic gradients, momentum averages noise like SGD but with a different spectral response; (5) The optimal step-size and momentum depend on the condition number via Nesterov's recursive formula. Uses the convex quadratic as a tractable model that captures local dynamics of real problems.

## Key Concepts

- [[momentum]] — the core optimization technique analyzed
- [[gradient-descent]] — baseline algorithm
- [[nesterov-accelerated-gradient]] — look-ahead variant
- [[stochastic-gradient-descent]] — noisy gradient setting

## Related Entities

- [[gabriel-goh]] — author
- [[distill]] — publication venue
