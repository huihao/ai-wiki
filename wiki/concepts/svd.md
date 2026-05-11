---
created: 2026-04-29
updated: 2026-05-09
tags: [dimensionality-reduction, linear-algebra]
sources: 1
---

# SVD

## Definition

Singular Value Decomposition (SVD) is a fundamental matrix factorization technique that decomposes any m-by-n matrix A into the product A = U * Sigma * V^T, where U and V are orthogonal matrices of left and right singular vectors, and Sigma is a diagonal matrix of singular values ordered by magnitude. SVD is the mathematical backbone of dimensionality reduction, Principal Component Analysis (PCA), latent semantic analysis, and numerous applications in machine learning, signal processing, and data compression.

## Key Aspects

- **Optimal low-rank approximation**: The Eckart-Young-Mirsky theorem guarantees that truncating SVD to the top k singular values produces the best rank-k approximation of the original matrix in both the Frobenius and spectral norms, making it the theoretical foundation for dimensionality reduction.
- **Dimensionality reduction**: By keeping only the top k singular values and corresponding vectors, SVD reduces data from n dimensions to k while preserving maximum variance, forming the basis of PCA when applied to centered data.
- **Latent semantic analysis (LSA)**: In NLP, SVD applied to term-document matrices reveals latent semantic relationships between words and documents, capturing synonymy and polysemy that keyword matching misses.
- **Recommender systems**: SVD factorizes the user-item rating matrix into latent factor representations, enabling collaborative filtering by predicting missing ratings from the low-rank approximation.
- **Computational complexity**: Full SVD is O(min(mn^2, m^2n)), but truncated and randomized SVD algorithms (e.g., randomized power iteration) achieve near-optimal approximations in O(mnk) time for practical k << min(m,n).
- **Connection to PCA**: When applied to a centered data matrix, the right singular vectors V are the principal components, and the singular values relate directly to the eigenvalues of the covariance matrix.

## Related Concepts

- [[pca]]
- [[dimensionality-reduction]]
- [[matrix-factorization]]
- [[latent-semantic-analysis]]

## Sources

- [[dimensionality-reduction]]
