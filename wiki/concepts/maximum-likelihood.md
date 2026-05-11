---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, statistics]
sources: 1
---

# Maximum Likelihood

## Definition

Maximum likelihood estimation (MLE) is a method of estimating the parameters of a statistical model by finding the parameter values that maximize the likelihood of the observed data. In machine learning, MLE provides the theoretical foundation for many loss functions, including cross-entropy loss used in logistic regression and softmax classifiers.

## Key Aspects

- MLE finds parameters theta that maximize P(data | theta), the probability of observing the data given the model parameters
- For classification, maximizing likelihood is equivalent to minimizing cross-entropy loss (negative log-likelihood)
- Logistic regression derives directly from MLE: assuming Bernoulli-distributed outputs, the log-likelihood function produces the cross-entropy loss
- Softmax classifier generalizes MLE to multi-class settings: the softmax output represents class probabilities, and training maximizes the likelihood of correct class assignments
- MLE provides consistency guarantees: with sufficient data, estimates converge to true parameter values
- Connection to gradient descent: the gradient of the negative log-likelihood with respect to weights drives parameter updates
- MLE can overfit with small datasets; regularization (L1, L2) can be viewed as MAP estimation with prior distributions

## Related Concepts

- [[logistic-regression]]
- [[max-margin]]
- [[matrix-calculus]]

## Sources

- [[softmax-classifier]]
