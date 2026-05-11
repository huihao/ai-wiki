---
created: 2026-04-27
updated: 2026-04-27
tags: [calculus, fundamentals, linear-algebra, mathematics, probability]
sources: 1
---

# ML Mathematics

## Definition

The mathematical foundations required to understand and implement machine learning algorithms: linear algebra, calculus, probability theory, and optimization. While modern frameworks abstract away much of the math, deep understanding enables debugging, research, and algorithm design.

## Core Areas

### Linear Algebra
- Vectors, matrices, tensors
- Matrix operations, eigenvalues, SVD
- Key for: neural network layers, embeddings, PCA

### Calculus
- Derivatives, gradients, partial derivatives
- Matrix calculus (Jacobian, Hessian)
- Key for: backpropagation, optimization

### Probability & Statistics
- Distributions, expectation, variance
- Bayesian inference, maximum likelihood
- Key for: generative models, uncertainty quantification

### Optimization
- Gradient descent and variants (SGD, Adam)
- Convex vs. non-convex optimization
- Key for: training all neural networks

## Why It Matters

- **Debugging**: Understanding shapes and dimensions prevents tensor mismatches
- **Research**: New architectures require deriving new update rules
- **Efficiency**: Knowing the math behind approximations lets you choose the right trade-offs
- **Interpretability**: Feature importance, partial dependence, and model explanations require statistical grounding

## Learning Resources

| Resource | Focus | Level |
|---|---|---|
| [[machine-learning|Mathematics for Machine Learning]] (Deisenroth et al.) | Comprehensive foundations + ML problems | Beginner–intermediate |
| [[explained-ai-source|explained.ai]] | Visual explanations of specific topics | Intermediate |
| [[the-illustrated-transformer]] | Attention mechanism intuition | Applied |
| [[deep-learning|Practical Deep Learning for Coders]] | Top-down with math as needed | Practitioner |

## Related Concepts

- [[transformers]] — built on matrix operations and attention
- [[model-scaling]] — requires understanding computational complexity
- [[inference-time-compute-scaling]] — statistical reasoning about uncertainty
- [[dspy-framework|DSPy]] — declarative framework that abstracts but doesn't eliminate math

## Sources

- [[machine-learning|Mathematics for Machine Learning]] — Cambridge University Press book with free PDF
