---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Matrices

## Definition

A matrix is a rectangular array of numbers arranged in rows and columns, serving as a fundamental structure in linear algebra for representing and computing linear transformations, systems of equations, and data relationships. In machine learning, matrices encode neural network weights, datasets, and attention computations, making fluency with matrix operations essential for understanding and implementing modern AI systems.

## Key Aspects

- **Core operations**: Matrix multiplication, transposition, inversion, and decomposition (LU, QR, SVD, eigendecomposition) are the building blocks of both theoretical linear algebra and practical ML computation. Every forward pass through a neural network is fundamentally a sequence of matrix multiplications interspersed with nonlinear activations.
- **Representing data and models**: A dataset is naturally a matrix where rows are samples and columns are features. A neural network layer is defined by its weight matrix (and bias vector); an attention head computes Q, K, V projection matrices that transform embeddings into query, key, and value representations.
- **Least squares and fitting**: The least-squares problem—finding the matrix solution that minimizes squared error—is the mathematical backbone of linear regression, PCA, and many optimization algorithms. Solving it via normal equations, QR factorization, or SVD is a core skill for ML practitioners.
- **Transformations and geometry**: Matrices encode geometric transformations (rotation, scaling, projection), which helps build intuition for what neural network layers actually do to data as it flows through the network. Understanding eigenvalues and singular values reveals how a transformation stretches, compresses, or rotates space.
- **Applied context in ML/AI**: Applied linear algebra courses (e.g., Stanford ENGR108 by Stephen Boyd and Lieven Vandenberghe) focus specifically on the matrix concepts most relevant to data science and engineering: vector spaces, matrix factorizations, least squares, and their computational implementation in Python and Julia.
- **Dimensionality and scaling**: The shape of matrices directly determines computational cost and memory requirements. Attention in transformers is O(n^2) in sequence length because it involves matrix multiplications of n x n matrices; understanding matrix scaling properties is essential for reasoning about model efficiency and inference cost.

## Related Concepts

- [[linear-algebra-fundamentals]]
- [[vectors]]
- [[least-squares]]
- [[attention-mechanisms]]
- [[linear-algebra]]

## Sources

- [[introduction-to-applied-linear-algebra]]
- [[lieven-vandenberghe]]
- [[linear-algebra-fundamentals]]
- [[stephen-boyd]]
