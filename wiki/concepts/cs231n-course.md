---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# CS231n Course

## Definition

CS231n (Convolutional Neural Networks for Visual Recognition) is Stanford University's foundational course on deep learning for computer vision, covering linear classification, loss functions, optimization, neural network architectures, and modern computer vision techniques. It is widely regarded as the canonical educational resource for understanding the mathematical and practical foundations of deep learning applied to visual data.

## Key Aspects

- Covers the full stack from linear classifiers (SVM loss, softmax) through convolutional networks to modern architectures (ResNet, attention)
- Introduces the two major components of classification: score function (mapping data to class scores) and loss function (measuring prediction quality)
- The bias trick simplifies the linear classifier formulation by folding bias into the weight matrix
- Loss functions covered: Multiclass SVM (hinge loss with margin) and Softmax (cross-entropy with probabilistic interpretation)
- Regularization (L2 penalty) is critical for generalization, preventing overfitting by discouraging large weights
- Practical topics: numeric stability in softmax computation, data preprocessing (mean centering, feature scaling), vectorized implementations
- Linear classifiers are too weak for multi-mode objects; neural networks develop intermediate detectors that compose hierarchical features
- Materials are freely available at cs231n.github.io, including assignments, slides, and code examples

## Related Concepts

- [[convolutional-neural-network]]
- [[deep-learning]]
- [[linear-classification]]
- [[loss-function]]
- [[regularization]]
- [[computer-vision]]

## Sources

- [[cs231n-deep-learning-computer-vision]]
