---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, regularization, training]
sources: 1
---
# Weight Decay Scaling

## Definition

Weight decay scaling is the practice of adjusting the weight decay coefficient to maintain consistent training dynamics across different model scales or training horizons, treating weight decay as an exponential moving average (EMA) window size.

## Key Concepts

- Weight decay is analogous to an EMA window: it determines how quickly past gradients are forgotten
- Truly decoupled weight decay (AdamW) updates: w = (1 - lr*wd) * w - lr * grad
- PyTorch's default L2 regularization is NOT decoupled weight decay and shows worse transferability
- Weight decay can be scaled to achieve hyperparameter transfer across training horizons
- The weight decay coefficient interacts with the learning rate in non-trivial ways
- Higher weight decay provides stronger regularization but can slow feature learning
- For muP, weight decay requires special treatment to maintain maximal update properties
- Spectral muP (used with Muon optimizer) ensures maximal updates while maintaining HP transfer
- The optimal weight decay depends on the model size, training tokens, and regularization needs

## Related Concepts

- [[mup-parameterization]]
- [[scaling-laws]]
- [[muon-optimizer]]
- [[hyperparameter-transfer]]

## Sources

- [[how-to-scale]]
- [[what-to-do-to-scale-up]]
