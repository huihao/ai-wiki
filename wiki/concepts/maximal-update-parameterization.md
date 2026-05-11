---
created: 2026-04-28
updated: 2026-04-28
tags: [hyperparameters, mup, scaling, training]
---

# Maximal Update Parameterization (muP)

## Overview

A parameterization method for neural networks that ensures optimal hyperparameters (learning rate, init std, batch size) transfer across different model scales, particularly as width (hidden size) increases.

## Key Principle

muP ensures maximal feature learning by making every layer learn maximally at each optimization step, even as network width approaches infinity.

## Three Desiderata

1. **Non-triviality**: Pre-activations should not blow up or vanish as width → ∞
2. **Feature learning**: Network should learn features, not stay frozen (kernel regime)
3. **Training stability**: Dynamics should be stable and well-defined throughout training

## Core Insight

Unlike Standard Parameterization (SP) which only defines good initialization, muP considers the entire training trajectory:
- Per-layer initialization standard deviation (init std)
- Per-layer multiplier
- Per-layer learning rate

## Scaling Rules (abc-parameterization)

For hidden layers under Adam optimizer:
- **Init std**: 1/√n (fan-in variance like SP)
- **Learning rate**: 1/n scaling (to counter dot product growth from LLN)
- **Multiplier**: No scaling (Θ(1))

For embedding/unembedding:
- Different scaling rules due to single infinite dimension (vocab × hidden)

## Why It Works

- LLN (Law of Large Numbers): When vectors are correlated, dot product grows as n
- CLT (Central Limit Theorem): When vectors are uncorrelated, dot product grows as √n
- muP counters these scaling effects to maintain Θ(1) pre-activations

## Performance

- Outperforms SP at small-medium scales (200-300B tokens)
- Returns diminish at very large scales (SP eventually catches up)
- Likely used in GPT training (OpenAI-Microsoft collaboration)

## Implementation

Available in:
- muP library (Python)
- PyTorch implementations
- MaxText (JAX)

## Sources

- [[how-to-scale-neural-networks]] — comprehensive derivation and scaling rules

## Related Concepts

- [[hyperparameter-transfer]]
- [[model-scaling]]
- [[learning-rate]]
- [[batch-size]]
- [[initialization]]

## Key Papers

- Tensor Program IV
- Tensor Program V (muTransfer)
- A Spectral Condition for Feature Learning

## Authors

- [[greg-yang]]
- [[edward-hu]]