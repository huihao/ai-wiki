---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Covariance Matrix

## Definition

A covariance matrix is a square matrix that captures the pairwise covariance between every pair of variables in a dataset, describing how variables vary together. It is a fundamental building block in statistics and machine learning, forming the basis for Principal Component Analysis (PCA), Gaussian processes, and many dimensionality reduction and generative modeling techniques.

## Key Aspects

- Each element (i, j) represents the covariance between variables i and j, measuring linear co-dependence
- The diagonal elements are the variances of individual variables; off-diagonal elements capture pairwise relationships
- Symmetric by definition: covariance(X, Y) equals covariance(Y, X)
- Positive covariance indicates variables move in the same direction; negative covariance indicates opposite movement; zero indicates no linear relationship
- Eigendecomposition of the covariance matrix reveals principal components (directions of maximum variance), which is the foundation of PCA
- The eigenvalues indicate the amount of variance explained by each principal component
- Computationally expensive for high-dimensional data (O(d^2) elements for d features), motivating approximate methods

## Related Concepts

- [[pca]]
- [[dimensionality-reduction]]
- [[eigenvalues]]
- [[gaussian-processes]]
- [[feature-engineering]]

## Sources

- [[pca]]
