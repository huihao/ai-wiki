---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[adamw-optimizer]], [[gradient-descent]]
---

# AdaMax

A variant of Adam that generalizes the second moment estimate to use the infinity norm instead of L2 norm, making the estimate more stable (not biased toward zero). The infinity norm max operation replaces the exponential average, so no bias correction is needed for the second moment. Proposed by Kingma and Ba (2015) alongside Adam. Default values: eta=0.002, beta1=0.9, beta2=0.999.
