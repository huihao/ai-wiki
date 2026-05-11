---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Overfitting

## Definition

Overfitting occurs when a machine learning model learns the training data too well, capturing noise and idiosyncratic patterns rather than the underlying generalizable relationships, resulting in excellent training performance but poor generalization to unseen data.

## Key Aspects

- **Root Cause**: Model complexity exceeds what the data supports, allowing it to memorize training examples including noise rather than learning the true signal
- **Regularization Response**: The primary defense -- adding penalty terms to the loss function that discourage complex or extreme parameter values, with L2 regularization (weight decay) penalizing large weights and L1 encouraging sparsity
- **Weight Distribution Preference**: Regularization favors diffuse weight distributions (e.g., [0.25, 0.25, 0.25, 0.25]) over concentrated ones ([1, 0, 0, 0]) because diffusion prevents any single input dimension from dominating predictions
- **Generalization Trade-off**: Moderate overfitting control improves test performance; excessive regularization leads to underfitting where the model is too simple to capture the underlying pattern
- **Hyperparameter Sensitivity**: Regularization strength (lambda) must be tuned via cross-validation or validation set performance, as the optimal value varies across datasets and model architectures
- **Not Applied to Biases**: Bias terms are typically not regularized because they do not control input influence and their regularization would have minimal impact on overfitting

## Related Concepts

- [[regularization]] -- The techniques specifically designed to prevent overfitting
- [[generalization]] -- The ability to perform well on unseen data, directly opposed to overfitting
- [[neural-network-training]] -- The process during which overfitting can occur
- [[neural-scaling-laws]] -- Scaling dynamics that affect the overfitting-underfitting balance

## Sources

- [[regularization]]
