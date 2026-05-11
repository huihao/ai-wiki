# Softmax Classifier

**Type**: Classifier
**Category**: Multiclass Classification

## Description

Multiclass classifier that interprets scores as probabilities and uses cross-entropy loss. Generalization of logistic regression to multiple classes.

## Mathematical Formulation

### Softmax Function
$$f_j(z) = \frac{e^{z_j}}{\sum_k e^{z_k}}$$

- Squashes scores to probabilities
- Values between 0 and 1
- Sum to 1 across classes

### Cross-Entropy Loss
$$L_i = -\log\left(\frac{e^{f_{y_i}}}{\sum_j e^{f_j}}\right)$$

- Minimize negative log probability of correct class
- Maximum Likelihood Estimation (MLE)
- Probabilistic interpretation

## Interpretations

### Probabilistic View
- Scores as unnormalized log probabilities
- Exponentiate: unnormalized probabilities
- Normalize: sum to 1

### Information Theory View
- Cross-entropy between distributions
- KL divergence minimization
- Predicted distribution $\rightarrow$ true distribution

### MAP Estimation
- Regularization = Gaussian prior on weights
- Bayesian interpretation
- Maximum a posteriori estimation

## Properties

- Outputs probabilities (confidence scores)
- Never achieves zero loss
- Global objective (optimizes all scores)
- Probabilities depend on regularization strength

## Numeric Stability

Shift values for safe computation:
$$\log C = -\max_j f_j$$

- Subtract max from all scores
- Prevents exponential overflow
- Mathematically equivalent

```python
f -= np.max(f)  # Shift for stability
p = np.exp(f) / np.sum(np.exp(f))
```

## Comparison to SVM

- **Softmax**: Probabilistic, global, never satisfied
- **SVM**: Margin-based, local, can be satisfied
- Similar performance
- Different tradeoffs

## Advantages

- Probabilistic outputs
- Clear confidence interpretation
- Well-suited for probability-based tasks

## Related Sources

- [[cs231n-deep-learning-computer-vision]] - Softmax chapter

## Related Concepts

- [[cross-entropy-loss]]
- [[probability-estimation]]
- [[logistic-regression]]
- [[maximum-likelihood]]