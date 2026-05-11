---
created: 2026-04-29
updated: 2026-04-29
tags: [source, linear-algebra, deep-learning, math, course-material]
sources: 1
url: "https://vistalab-technion.github.io/cs236605/supplements/linear_algebra/"
title: "Linear Algebra Crash Course"
---

# Linear Algebra Crash Course

## Summary

A concise linear algebra reference document from the Technion CS236605 Deep Learning course, covering vectors, matrices, norms, eigendecomposition, and matrix functions. The document provides mathematical definitions, properties, and geometric interpretations essential for understanding deep learning algorithms.

## Key Takeaways

- Vectors in R^n can represent points, directions, or features; linear combinations span linear subspaces
- The inner product induces the Euclidean norm, and more generally Lp norms measure vector length with different geometric interpretations (L1 = Manhattan, L2 = Euclidean, L-infinity = max)
- The Cauchy-Schwarz inequality is the most important inequality in linear algebra: |<u,v>| <= |u| * |v|
- Matrices represent linear maps; the column space of A is the set of all possible outputs Ax
- Matrix rank equals both column rank and row rank; full rank is necessary for invertibility
- The trace is invariant under cyclic permutation: tr(AB) = tr(BA)
- Eigendecomposition factors a matrix into eigenvectors and eigenvalues: A = U * Lambda * U^{-1}
- For symmetric matrices, eigenvectors are orthonormal, giving the unitary eigendecomposition: A = U * Lambda * U^T
- Matrix functions (exponential, logarithm, powers) can be defined through eigendecomposition
- The Frobenius norm treats a matrix as a long vector; the operator norm measures maximum stretch

## Entities Mentioned

- [[technion]] -- Israel Institute of Technology, where this course is taught

## Concepts Mentioned

- [[linear-algebra]] -- mathematics of vectors, matrices, and linear transformations
- [[vector-norms]] -- functions measuring vector length (L1, L2, L-infinity families)
- [[eigendecomposition]] -- factoring matrices into eigenvectors and eigenvalues
- [[cauchy-schwarz-inequality]] -- fundamental bound on inner products
- [[frobenius-norm]] -- matrix norm treating the matrix as a vector
- [[operator-norm]] -- maximum stretch of a linear map between normed spaces
- [[matrix-rank]] -- dimension of the column/row space
- [[trace]] -- sum of diagonal elements, invariant under cyclic permutation
- [[column-space]] -- set of all possible linear combinations of matrix columns

## Raw Notes

- Includes exercises for proving key results (Cauchy-Schwarz, rank equality, etc.)
- Uses consistent notation: lowercase italic for scalars, lowercase bold for vectors, uppercase bold for matrices
- Designed as a quick refresher rather than exhaustive treatment
- Covers both the abstract mathematical definitions and their geometric interpretations
