---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, person, researcher, mup, tensor-programs]
---

# Greg Yang

## Overview

Researcher at Microsoft (formerly OpenAI-Microsoft collaboration), co-author of Tensor Program series and creator of muP (Maximal Update Parameterization). Mathematical background, focuses on scaling theory for neural networks.

## Contributions

- Tensor Program V (muTransfer) — theoretical framework for hyperparameter transfer across model widths
- muP (Maximal Update Parameterization) — ensures maximal feature learning in infinite-width regime
- abc-parameterization framework (a=multiplier, b=init std, c=lr)

## Key Insights

- muP is fundamentally about maximal feature learning, not just HP transfer
- muP ensures pre-activations remain Θ(1) regardless of width, enabling stable training
- muP outperforms SP (Standard Parameterization) at small-medium scales but returns diminish at very large scale

## Sources

- Referenced in [[how-to-scale-neural-networks]] for muP theory and derivation

## Links

- Website: https://thegregyang.com/
- Papers: Tensor Program IV, V