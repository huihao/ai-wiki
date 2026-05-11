---
created: 2026-04-29
updated: 2026-04-29
tags: [source]
sources: 1
---

# Linear Algebra Crash Course (CS236605)

## Metadata

- **Author**: Technion (VistaLab)
- **Date**: N/A
- **URL**: https://vistalab-technion.github.io/cs236605/supplements/linear_algebra/
- **Access Date**: 2026-04-29
- **Raw File**: `raw/053_Linear Algebra Crash Course _ CS236605_ Deep Learning.md`

## Summary

Comprehensive linear algebra reference covering notation, linear/affine spaces, inner products, norms, matrices, eigendecomposition, matrix functions, and positive definite matrices. Designed as a refresher for deep learning coursework.

## Key Takeaways

- **Linear combinations** define linear subspaces; **affine subspaces** are linear subspaces shifted away from origin.
- **Inner product** induces the Euclidean norm; cosine of angle between unit vectors equals their inner product.
- **Cauchy-Schwarz inequality**: |<u,v>| <= |u| * |v|, with equality iff vectors are linearly dependent.
- **l_p norms**: l_1 (mean absolute error, more robust), l_2 (Euclidean), l_infinity (max element). For p < q, l_p unit circle contains l_q unit circle.
- **Matrix as linear map**: A maps u to v = Au; column space = span of columns.
- **Row rank = Column rank**: Fundamental theorem of linear algebra.
- **Trace**: trace(AB) = trace(BA), invariant under cyclic permutation.
- **Eigendecomposition**: A = U * Lambda * U^(-1); eigenvectors are only scaled (not rotated) by A.
- **Symmetric matrices** admit unitary eigendecomposition: A = U * Lambda * U^T.
- **Positive definite matrices**: All eigenvalues > 0; quadratic form x^T * A * x > 0 for all x != 0; represents convex surfaces.
- **Matrix functions**: Apply scalar function to eigenvalues via eigendecomposition (matrix exponential, logarithm).

## Entities Mentioned

- [[technion]] — Israeli Institute of Technology.

## Concepts Mentioned

- [[linear-combination]] — Sum of vectors scaled by scalars.
- [[inner-product]] — Dot product inducing norm and angle.
- [[cauchy-schwarz-inequality]] — |<u,v>| <= |u| * |v|.
- [[lp-norm]] — Family of norms parameterized by p.
- [[frobenius-norm]] — Matrix norm as Euclidean norm of column-stack.
- [[eigendecomposition]] — Factorization into eigenvectors and eigenvalues.
- [[positive-definite-matrix]] — Symmetric matrix with all positive eigenvalues.
- [[quadratic-form]] — Scalar function x^T * A * x.
- [[trace]] — Sum of diagonal entries; invariant under cyclic permutation.

## Raw Notes

- Includes exercises for proving key theorems.
- Notation: scalars (italic), vectors (bold lowercase), matrices (bold uppercase).
- Convexity of positive definite matrices has profound impact on optimization.
- Matrix function construction differs from element-wise application.

## Questions / Follow-ups

- How does SVD relate to eigendecomposition for non-square matrices?
- What role do positive definite matrices play in kernel methods?
