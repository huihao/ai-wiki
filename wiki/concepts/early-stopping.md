---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[regularization]], [[gradient-descent]]
related_entities: [[geoffrey-hinton]]
---

# Early Stopping

A regularization technique where training is halted when performance on a validation set stops improving, preventing overfitting. Described by Geoff Hinton as "a beautiful free lunch." The key is monitoring validation error with some patience -- stopping when improvement falls below a threshold. Prevents the model from memorizing training noise at the expense of generalization.
