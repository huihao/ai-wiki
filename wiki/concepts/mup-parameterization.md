---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, parameterization, scaling]
sources: 1
---
# muP (Maximal Update Parameterization)

## Definition

muP (Maximal Update Parameterization) is a parameterization scheme that ensures training dynamics transfer across model widths by keeping pre-activations at Theta(1) scale regardless of network width, enabling hyperparameter transfer from small to large models.

## Key Concepts

- muP defines per-parameter initialization (b), multiplier (a), and learning rate (c) for every parameter
- The ABC parameterization framework: each parameter has a (init scale), b (multiplier), c (learning rate)
- muP ensures that every layer learns features maximally at each optimization step
- The derivation uses Law of Large Numbers (LLN) for correlated vectors and Central Limit Theorem (CLT) for dot products
- muP does NOT guarantee hyperparameter transfer across training tokens or batch size -- only across width
- Standard Parameterization (SP) fails to transfer HPs across widths because activations scale with width
- muP modifies only the learning rate for specific parameters, preserving computational cost
- The Tensor Program series (Yang, Hu, et al.) provides the theoretical foundation
- muP enables running small-width hyperparameter sweeps and transferring directly to large models

## Related Concepts

- [[scaling-laws]]
- [[hyperparameter-transfer]]
- [[critical-batch-size]]
- [[abc-parameterization]]
- [[weight-decay-scaling]]

## Sources

- [[how-to-scale]]
- [[what-to-do-to-scale-up]]
