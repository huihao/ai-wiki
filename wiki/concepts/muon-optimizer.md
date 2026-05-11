---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, optimization, training]
sources: 1
---
# Muon Optimizer

## Definition

The Muon (Momentum Orthogonalized by Newton-Schulz) optimizer is a novel optimization algorithm that boosts gradient directions with low eigenvalues using Newton-Schulz orthogonalization, providing faster convergence than Adam for many deep learning tasks.

## Key Concepts

- Muon orthogonalizes the momentum buffer using Newton-Schulz iteration (an approximation of matrix sign)
- The orthogonalization effectively boosts directions with low eigenvalues in the gradient
- Muon provides faster convergence than AdamW on language modeling and other tasks
- Muon with spectral muP ensures maximal updates and hyperparameter transfer across width
- The computational cost of Newton-Schulz iteration is modest (similar to a single gradient step)
- Muon works best for weight matrices; biases and LayerNorm parameters still use Adam
- The optimizer was created by Keller Jordan and gained traction in the open-source training community
- Muon requires careful scaling of the learning rate and weight decay to maintain stability
- DeepSeek and other labs have experimented with orthogonalization-based optimizers for large-scale training

## Related Concepts

- [[mup-parameterization]]
- [[weight-decay-scaling]]
- [[qk-layernorm]]
- [[scaling-laws]]

## Sources

- [[how-to-scale]]
- [[what-to-do-to-scale-up]]
