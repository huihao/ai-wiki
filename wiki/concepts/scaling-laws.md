---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, performance, scaling]
sources: 1
---
# Scaling Laws

## Definition

Scaling laws describe universal relationships between compute resources (FLOPs), dataset size, model parameters, and performance (loss) in neural networks. They enable predicting performance at larger scales without actually training large models, guiding efficient resource allocation.

## Key Concepts

- The original Kaplan scaling law: L(C) = (C_0/C)^alpha, where C is compute budget and L is loss
- Chinchilla scaling (Hoffmann et al., 2022) showed that token count and parameters should scale equally
- The compute-optimal frontier shows the best loss achievable for a given compute budget
- DeepSeek empirically fitted HP scaling laws for large-scale training, validating theoretical predictions
- Scaling laws apply to downstream performance through power-law relationships (except emergent abilities)
- Data scaling and model scaling follow different power-law exponents
- The Stepfun Law provides an alternative HP scaling law approach
- Scaling laws help determine the optimal model size before committing expensive training runs
- The relationship between training tokens, parameters, and compute is: C approx 6*N*D (N=params, D=tokens)

## Related Concepts

- [[mup-parameterization]]
- [[critical-batch-size]]
- [[hyperparameter-transfer]]
- [[abc-parameterization]]

## Sources

- [[how-to-scale]]
