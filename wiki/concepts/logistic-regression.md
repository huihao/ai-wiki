---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Logistic Regression

## Definition

Logistic regression is a statistical classification model that predicts the probability of a binary outcome by applying a sigmoid (logistic) function to a linear combination of input features. It serves as the foundational building block for neural network classifiers, where the softmax classifier generalizes it to multi-class problems.

## Key Aspects

- Maps linear combinations of inputs to probabilities between 0 and 1 using the sigmoid function sigma(z) = 1 / (1 + e^(-z))
- Loss function is cross-entropy (negative log-likelihood), which penalizes confident wrong predictions heavily
- Gradient of the loss with respect to weights is a weighted average of inputs, weighted by prediction errors (target - prediction)
- Connection to maximum likelihood estimation: logistic regression finds parameters that maximize the likelihood of observed data
- Can be viewed as a single-layer neural network with a sigmoid activation
- Basis for understanding softmax classifiers, which extend binary logistic regression to multi-class settings
- Training via gradient descent: weights updated in the direction that reduces cross-entropy loss

## Related Concepts

- [[maximum-likelihood]]
- [[mean-squared-error]]
- [[matrix-calculus]]

## Sources

- [[softmax-classifier]]
