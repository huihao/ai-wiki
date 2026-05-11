---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Multiclass Classification

## Definition

Multiclass classification is the supervised learning task of assigning one of three or more discrete labels to input instances. Unlike binary classification, multiclass problems require loss functions and decision boundaries that handle multiple competing categories simultaneously, with softmax output layers producing probability distributions across all classes.

## Key Aspects

- **SVM loss for multiclass**: Support Vector Machine loss extends naturally to multiclass by requiring the correct class score to exceed all incorrect class scores by a margin
- **One-vs-all decomposition**: Traditional approach trains K binary classifiers (one per class) and selects the highest-confidence prediction
- **Softmax output**: Modern neural networks use softmax to produce probability distributions across all K classes, enabling calibrated confidence estimates
- **Cross-entropy loss**: The standard loss function for multiclass neural networks, measuring divergence between predicted probabilities and true label distributions
- **MNIST as canonical example**: Handwritten digit recognition (10 classes) established the multiclass classification paradigm
- **Margin-based approaches**: SVM multiclass loss penalizes when the margin between correct and incorrect class scores is insufficient
- **Class imbalance challenges**: Real-world multiclass problems often have uneven class distributions requiring specialized sampling or loss weighting
- **Evaluation metrics**: Accuracy, per-class precision/recall, confusion matrices, and top-k accuracy for assessing multiclass performance

## Related Concepts

- [[softmax]]
- [[cross-entropy-loss]]
- [[svm-loss]]
- [[mnist]]

## Sources

- [[svm-loss]]
