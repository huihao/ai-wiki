---
created: 2026-04-28
updated: 2026-04-28
tags: [hyperparameters, scaling, transfer-learning]
---

# Hyperparameter Transfer

## Definition

The property that optimal hyperparameters (learning rate, initialization std, batch size) discovered at one model scale transfer to larger scales without requiring extensive grid search.

## Importance

Without hyperparameter transfer, scaling up models requires prohibitive compute to re-tune HPs for each new scale. This breaks the "more compute = better performance" promise.

## Methods

### muP (Maximal Update Parameterization)

- Provides theoretically grounded HP transfer across widths
- Scaling rules: lr ∝ 1/n, init std ∝ 1/√n for hidden layers
- Ensures training dynamics are width-invariant

### Critical Batch Size

- Maximum batch size before sample efficiency degrades
- Scales with model size and dataset size
- Beyond critical bsz, returns diminish

### Depth Scaling

- Different rules for width vs depth
- LayerNorm/BatchNorm help depth transfer
- Sandwich norm, DeepNorm, Mix-LN variants

## Dataset Scaling

- muP primarily addresses width scaling
- Dataset size (tokens) introduces additional complexity
- Critical batch size interacts with data scale

## Practical Workflow

1. Tune HPs at small scale (proxy model)
2. Apply scaling rules to large model
3. Optionally fine-tune at large scale (minor adjustments)

## Sources

- [[how-to-scale-neural-networks]] — detailed coverage of muP-based HP transfer

## Related Concepts

- [[maximal-update-parameterization]]
- [[model-scaling]]
- [[learning-rate]]
- [[batch-size]]

## Limitations

- muP doesn fully address depth or dataset scaling
- Returns may diminish at very large scales
- Requires careful implementation (per-layer HPs)