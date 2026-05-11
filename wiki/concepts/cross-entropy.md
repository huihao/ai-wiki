---
created: 2026-04-29
updated: 2026-05-09
tags: [loss-function, machine-learning]
sources: 2
---

# Cross-Entropy

## Definition
Cross-entropy is a measure of the difference between two probability distributions, quantifying how many bits are needed to identify an event from a predicted distribution rather than the true distribution. In machine learning, it is the standard loss function for classification tasks, measuring the divergence between predicted class probabilities and the true label distribution.

## Key Aspects
- Cross-entropy loss penalizes confident wrong predictions exponentially more than uncertain ones
- For binary classification, binary cross-entropy (log loss) is used; for multi-class, categorical cross-entropy
- Minimizing cross-entropy is equivalent to maximizing the likelihood of the correct class under the predicted distribution
- It is the natural loss function when using softmax output layers because it cancels the log in softmax
- Cross-entropy relates to KL divergence: H(p, q) = H(p) + D_KL(p || q), where H(p) is the entropy of the true distribution
- Vanishing gradients can occur with cross-entropy when combined with sigmoid activation on saturated outputs

## Related Concepts
- [[conditional-probability-distributions]]
- [[dropout]]

## Sources
- [[entropy]]
- [[loss-function]]
