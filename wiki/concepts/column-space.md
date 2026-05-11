---
created: 2026-04-29
updated: 2026-04-29
tags: [linear-algebra, matrices, subspaces]
sources: 1
---
# Column Space

## Definition

The column space (range or image) of a matrix A is the set of all possible linear combinations of its columns, equivalently the set of all vectors b for which the equation Ax = b has a solution. It is a subspace of R^m for an m-by-n matrix.

## Key Concepts

- The column space is spanned by the columns of A: col(A) = {Ax : x in R^n}
- The dimension of the column space equals the rank of the matrix
- Ax = b has a solution if and only if b is in the column space of A
- The column space is orthogonal to the left nullspace (N(A^T))
- A fundamental theorem: R^n = col(A^T) direct-sum N(A), and R^m = col(A) direct-sum N(A^T)
- In least squares problems, the projection of b onto col(A) gives the best approximation when b is not in col(A)
- The four fundamental subspaces (column space, row space, nullspace, left nullspace) fully characterize a matrix
- In deep learning, the column space of a weight matrix determines what outputs the layer can represent
- A full column rank matrix has a column space of dimension n, meaning all columns are linearly independent

## Related Concepts

- [[matrix-rank]]
- [[matrix-operations]]
- [[eigendecomposition]]

## Sources

- [[linear-algebra-crash-course]]
