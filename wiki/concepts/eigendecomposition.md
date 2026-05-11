---
created: 2026-04-29
updated: 2026-04-29
tags: [linear-algebra, mathematics]
sources: 1
---

# Eigendecomposition

## Definition

Factorization of a square matrix into eigenvectors and eigenvalues: A = U Λ U⁻¹. Eigenvectors are directions only scaled (not rotated) by the matrix; eigenvalues measure the scaling factor. For symmetric matrices, eigenvectors are orthonormal: A = U Λ Uᵀ.

## Key Properties

- Trace(A) = Σ λᵢ (sum of eigenvalues)
- Det(A) = Π λᵢ (product of eigenvalues)
- Symmetric matrices admit unitary eigendecomposition
- Geometric interpretation: change of coordinates where matrix action is pure scaling

## Matrix Functions

- Aᵖ = U Λᵖ U⁻¹ (efficient power computation)
- exp(A) = U exp(Λ) U⁻¹ (matrix exponential)
- A⁻¹ = U Λ⁻¹ U⁻¹ (matrix inverse via eigenvalues)

## Positive Definite Matrices

- Symmetric matrix A ≻ 0 iff all eigenvalues > 0
- Quadratic form xᵀAx > 0 for all x ≠ 0
- Represents convex surfaces (cup-shaped in n-dimensions)
- Crucial for optimization: ensures unique global minimum

## Related Concepts

- [[positive-definite-matrix]] — All eigenvalues > 0
- [[singular-value-decomposition]] — Generalization for non-square matrices
- [[trace]] — Sum of diagonal = sum of eigenvalues

## Sources

- [[linear-algebra-crash-course-cs236605]] — Technion linear algebra reference
