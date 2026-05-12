---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[sgd]], [[data-parallelism], [model-parallelism]]
---

# Hogwild!

A lock-free approach to parallelizing SGD on shared-memory multi-core systems. Processors perform SGD updates concurrently without locking parameters, which works when input data is sparse (each update modifies only a fraction of parameters). Achieves near-optimal convergence rates because the probability of processors overwriting useful information is low. Proposed by Niu et al. (2011).
