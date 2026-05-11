---
created: 2026-04-29
updated: 2026-05-09
tags: [linear-algebra, mathematics]
sources: 1
---

# Eigenvector

## Definition

An eigenvector of a square matrix A is a nonzero vector v such that multiplying A by v produces a scalar multiple of v: Av = λv, where λ is the corresponding eigenvalue. The eigenvector defines a direction that is preserved under the linear transformation represented by A, while the eigenvalue scales it.

## Key Aspects

- Eigenvectors represent directions that remain unchanged (only scaled) by a linear transformation
- The eigenvalue λ quantifies the scaling factor: λ > 1 stretches, 0 < λ < 1 shrinks, λ < 0 reverses direction
- A matrix may have multiple eigenvectors, each with its own eigenvalue; together they reveal the matrix's intrinsic geometric behavior
- Computing eigenvectors requires solving the characteristic equation det(A - λI) = 0 for eigenvalues, then finding the null space of (A - λI)
- In machine learning, eigenvectors of covariance matrices define principal components (PCA), capturing directions of maximum variance
- PageRank models the web as a transition matrix; its principal eigenvector gives the importance ranking of all pages
- Eigenvector centrality in graph theory measures node importance by the eigenvector of the adjacency matrix

## Related Concepts

- [[eigenvalue]]
- [[pca]]
- [[principal-component-analysis]]

## Sources

- [[matrix-calculus-deep-learning]]
