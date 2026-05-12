---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[adagrad]], [[adadelta]], [[adamw-optimizer]], [[gradient-descent]]
related_entities: [[geoffrey-hinton]]
---

# RMSprop

An adaptive learning rate method proposed by Geoff Hinton that divides the learning rate by an exponentially decaying average of squared gradients, preventing Adagrad's diminishing learning rates. Identical to the first update vector of Adadelta. Suggests momentum term gamma=0.9 and learning rate eta=0.001 as defaults. Widely used in practice, particularly for recurrent neural networks.
