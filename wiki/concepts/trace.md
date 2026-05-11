---
created: 2026-04-29
updated: 2026-04-29
tags: [invariant, linear-algebra, matrices]
sources: 1
---
# Trace

## Definition

The trace of a square matrix is the sum of its diagonal elements, equal to the sum of its eigenvalues. It is invariant under cyclic permutation (tr(AB) = tr(BA)) and provides a basis-independent characterization of linear transformations.

## Key Concepts

- Definition: tr(A) = sum_i a_ii for a square matrix A
- The trace equals the sum of eigenvalues: tr(A) = sum lambda_i (counting multiplicity)
- Cyclic invariance: tr(AB) = tr(BA), tr(ABC) = tr(CAB) = tr(BCA) (but NOT tr(BAC) in general)
- Linearity: tr(A + B) = tr(A) + tr(B), tr(cA) = c * tr(A)
- The trace is the derivative of the determinant at the identity: d/dt det(I + tA)|_{t=0} = tr(A)
- For the Frobenius inner product: tr(A^T B) = <A, B>_F
- Trace is used in defining loss functions: negative log-likelihood involves trace of matrix expressions
- The trace of a product of matrices is invariant under cyclic permutations, simplifying matrix calculus
- Jacobi's formula: d/dt det(A(t)) = tr(adj(A(t)) * dA/dt)

## Related Concepts

- [[matrix-operations]]
- [[eigendecomposition]]
- [[matrix-rank]]
- [[frobenius-norm]]

## Sources

- [[linear-algebra-crash-course]]
