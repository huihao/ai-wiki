---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Learning Rate

## Definition

The learning rate (often denoted as eta) is a hyperparameter that controls the step size during weight updates in gradient descent optimization. It determines how much the model's weights are adjusted in response to the estimated error each time the weights are updated, directly influencing training speed and convergence stability.

## Key Aspects

- Too high a learning rate causes the model to overshoot optimal solutions and diverge; too low a learning rate results in painfully slow convergence or getting trapped in local minima
- Often paired with a momentum coefficient (alpha) that averages weight updates across iterations to filter noise and smooth convergence
- Weight update formula: `weight += eta * input * gradient + alpha * deltaWeight`
- Maximal Update Parameterization (muP) provides principled methods for transferring optimal learning rates across model sizes
- Hyperparameter transfer techniques allow learning rates tuned on small models to generalize to larger models
- The concept dates back to the earliest neural networks (perceptrons, 1957) and remains fundamental to all gradient-based training
- Adaptive optimizers (Adam, RMSProp) dynamically adjust per-parameter learning rates, but the base learning rate still governs overall scale

## Related Concepts

- [[maximal-update-parameterization]] -- Principled learning rate transfer across model scales
- [[hyperparameter-transfer]] -- Methods for transferring tuned hyperparameters between experiments
- [[stochastic-gradient-descent]] -- Optimization method using random data subsets

## Sources

- [[hyperparameter-transfer]]
- [[maximal-update-parameterization]]
- [[neural-networks-made-easy]]
