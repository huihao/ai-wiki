# Linear Classification

**Type**: Machine Learning Model
**Category**: Supervised Learning, Classification

## Description

Simplest form of parametric classification. Maps input features to class scores via linear transformation, then applies loss function for training.

## Mathematical Formulation

$$f(x_i; W, b) = W x_i + b$$

### Components
- $x_i$: Input features (D-dimensional)
- $W$: Weight matrix (K x D, K classes)
- $b$: Bias vector (K-dimensional)
- Output: K class scores

## Interpretations

### Template Matching
- Each row of $W$ is a class template
- Score = dot product (similarity) with template
- Learned templates, not fixed examples

### Geometric View
- Images as points in high-dimensional space
- Linear boundaries between classes
- Each class has decision boundary

### Parametric Approach
- Learn parameters from training data
- Discard training data after learning
- Fast prediction: single matrix multiplication

## Bias Trick

Simplify parameters:
- Add constant 1 to input: $x_i$ becomes [D+1]
- Single parameter matrix $W$ [K x D+1]
- Last column of $W$ is bias

## Advantages

- Simple and interpretable
- Fast training and prediction
- Foundation for neural networks
- Easy to extend

## Limitations

- Too simple for complex patterns
- Can't handle multiple modes
- Linear boundaries only
- Merges different object variations

## Extensions

- Neural networks: Non-linear mappings
- CNNs: Convolutional operations
- Multi-layer: Hierarchical features

## Training

- Define loss function (SVM, Softmax)
- Optimize parameters via gradient descent
- Add regularization for generalization

## Related Sources

- [[cs231n-deep-learning-computer-vision]] - Linear classification chapter

## Related Concepts

- [[svm-loss]]
- [[softmax-classifier]]
- [[neural-networks]]
- [[loss-function]]