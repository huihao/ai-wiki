---
created: 2026-04-29
updated: 2026-04-29
tags: [dimensionality, linear-algebra, matrices]
sources: 1
---
# Matrix Rank

## Definition

The rank of a matrix is the dimension of the column space (or row space), representing the maximum number of linearly independent columns (or rows). Rank equals both column rank and row rank, and a matrix is invertible if and only if it has full rank.

## Key Concepts

- Column rank = row rank = rank of the matrix (this is a theorem, not a definition)
- A matrix has full rank if its rank equals min(m, n) for an m-by-n matrix
- Rank deficiency occurs when rank < min(m, n), meaning columns (or rows) are linearly dependent
- The rank-nullity theorem: rank(A) + nullity(A) = n (number of columns)
- Low-rank approximation: SVD truncation keeps the top-k singular values/vectors for compression
- The rank of a product is at most the minimum of the ranks: rank(AB) <= min(rank(A), rank(B))
- In deep learning, weight matrices are often effectively low-rank, enabling compression and efficiency
- Low-rank adaptation (LoRA) exploits this for efficient fine-tuning of large models
- Computing rank via Gaussian elimination: rank equals the number of non-zero pivots

## Related Concepts

- [[matrix-operations]]
- [[eigendecomposition]]
- [[column-space]]
- [[trace]]

## Sources

- [[linear-algebra-crash-course]]
- [[intro-linear-algebra-for-applied-ml]]
