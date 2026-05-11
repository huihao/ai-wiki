---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, statistics]
sources: 1
---

# Mean Squared Error

## Definition

Mean Squared Error (MSE) is a loss function that measures the average of the squares of the differences between predicted and actual values, serving as the standard loss function for regression tasks. In backpropagation, the MSE gradient with respect to weights is a weighted average of inputs, where the weights are the prediction errors (target minus prediction).

## Key Aspects

- Formula: MSE = (1/n) * sum((y_i - y_hat_i)^2), averaging squared prediction errors across all training examples
- The squaring penalizes large errors disproportionately more than small errors, making MSE sensitive to outliers
- Gradient of MSE w.r.t. weights: weighted average of inputs, weighted by error terms (target - prediction), providing the direction for parameter updates
- In backpropagation, MSE flows through the chain rule: the output layer error term delta_L = (dC/da_L) * f'(z_L), then propagates backward through hidden layers
- Contrast with cross-entropy loss: MSE is used for regression; cross-entropy for classification. Cross-entropy provides better gradients for softmax outputs
- The simplicity of MSE's gradient makes it a natural choice for understanding backpropagation mechanics
- Challenges in deep networks: MSE gradients can contribute to vanishing gradients in deep architectures with saturating activations (sigmoid, tanh)

## Related Concepts

- [[matrix-calculus]]
- [[logistic-regression]]
- [[maximum-likelihood]]

## Sources

- [[understanding-backpropagation]]
