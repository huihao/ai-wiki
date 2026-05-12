---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[adagrad]], [[rmsprop]], [[gradient-descent]]
---

# Adadelta

An adaptive learning rate method that extends Adagrad by restricting accumulated gradient history to a fixed window using exponential moving averages, preventing the learning rate from shrinking to zero. Replaces the global learning rate with the ratio of RMS of parameter updates to RMS of gradients, eliminating the need to set a default learning rate entirely. Proposed by Matthew Zeiler (2012).
