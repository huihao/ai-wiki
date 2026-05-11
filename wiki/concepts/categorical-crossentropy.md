---
created: 2026-04-29
updated: 2026-04-29
tags: [classification, deep-learning, loss-function]
sources: 1
---
# Categorical Cross-Entropy

## Definition

Categorical cross-entropy is a loss function used for multi-class classification that measures the dissimilarity between the predicted probability distribution (softmax output) and the true label distribution (one-hot encoded). It penalizes confident wrong predictions heavily.

## Key Concepts

- Cross-entropy loss: L = -sum(y_true * log(y_pred)) for all classes
- Lower loss indicates better alignment between predicted probabilities and true labels
- Combined with softmax, it forms the standard output layer for multi-class classification
- Sparse categorical cross-entropy uses integer labels instead of one-hot encoding (memory efficient)
- The gradient of cross-entropy with softmax simplifies to (y_pred - y_true), providing stable gradients
- Cross-entropy is equivalent to maximum likelihood estimation under a categorical distribution
- Label smoothing replaces hard one-hot targets with soft targets (e.g., 0.9 for correct class, 0.1/(K-1) for others)
- Numerical stability is achieved by computing log-softmax instead of softmax then log
- Binary cross-entropy is the two-class special case, equivalent to negative log-likelihood for Bernoulli

## Related Concepts

- [[cbow]]
- [[activation-function]]

## Sources

- [[cbow-model]]
