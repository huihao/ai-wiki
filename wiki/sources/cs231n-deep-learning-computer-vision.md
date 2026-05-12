# CS231n: Deep Learning for Computer Vision

**Source**: [Stanford CS231n Course](https://cs231n.github.io/linear-classify/)
**Author**: Stanford CS231n Team
**Date**: Course Materials (Ongoing)

## Overview

Stanford course materials covering deep learning techniques for computer vision. Focuses on linear classification, loss functions, and foundational concepts for neural networks.

## Linear Classification Approach

### Two Major Components

1. **Score Function**: Maps raw data to class scores
2. **Loss Function**: Quantifies agreement between predicted scores and ground truth

### Optimization Problem

Minimize loss function with respect to parameters of score function.

## Linear Classifier

### Mathematical Formulation

$$f(x_i; W, b) = W x_i + b$$

- $x_i$: Image pixels flattened to [D x 1] vector
- $W$: Weight matrix [K x D]
- $b$: Bias vector [K x 1]
- $K$: Number of classes
- $D$: Dimensionality (pixels)

### Interpretations

1. **Template Matching**: Each row of W is a class template
2. **High-Dimensional Points**: Images as points in pixel space
3. **Linear Boundaries**: Decision boundaries in pixel space

## Bias Trick

Combine bias and weights:
- Extend $x_i$ with constant 1 dimension
- New $x_i$ is [D+1 x 1]
- Single matrix $W$ [K x D+1]

## Loss Functions

### Multiclass SVM Loss

$$L_i = \sum_{j\neq y_i} \max(0, s_j - s_{y_i} + \Delta)$$

- Hinge loss with margin $\Delta$
- Correct class should be higher by margin $\Delta$
- Safe to set $\Delta = 1.0$ in all cases

### Regularization

$$R(W) = \sum_k \sum_l W_{k,l}^2$$

- L2 penalty discourages large weights
- Improves generalization
- Max margin property in SVMs

### Softmax Classifier

$$L_i = -\log\left(\frac{e^{f_{y_i}}}{\sum_j e^{f_j}}\right)$$

- Cross-entropy loss
- Interprets scores as unnormalized log probabilities
- Probabilistic interpretation (MLE/MAP)

## SVM vs. Softmax

- **SVM**: Local objective, cares about margins
- **Softmax**: Never fully happy, probabilistic interpretation
- Comparable performance in practice
- Softmax provides "probabilities" (confidence scores)

## Practical Considerations

### Numeric Stability (Softmax)

Shift values: $f -= \max(f)$
- Prevents exponential blowup
- Mathematically equivalent
- Safe computation

### Data Preprocessing

- Center data (subtract mean)
- Scale features to [-1, 1]
- Zero mean centering important for gradient descent

## Code Examples

Python implementations:
- Unvectorized version
- Half-vectorized version
- Fully-vectorized version (exercise)

## Key Insights

- Linear classifier too weak for multi-mode objects
- Neural networks develop intermediate detectors
- Regularization crucial for generalization
- Template matching interpretation useful

## Related Concepts

- [[linear-classification]]
- [[svm-loss]]
- [[softmax-classifier]]
- [[loss-function]]
- [[regularization]]
- [[deep-learning]]
- [[computer-vision]]

## Related Entities

- [[stanford-university]]
- [[cs231n-course]]