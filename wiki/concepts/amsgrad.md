---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[adamw-optimizer]], [[gradient-descent]]
---

# AMSGrad

A variant of Adam that uses the maximum of past squared gradients (rather than the exponential average) to update parameters, ensuring a non-increasing step size. Addresses Adam's failure to converge to optimal solutions in some settings (e.g., object recognition, machine translation) where the exponential average diminishes the influence of rare but informative large gradients. Proposed by Reddi, Kale, and Kumar (ICLR 2018).
