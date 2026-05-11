---
created: 2026-04-29
updated: 2026-04-29
tags: [inequality, linear-algebra, mathematics]
sources: 1
---
# Cauchy-Schwarz Inequality

## Definition

The Cauchy-Schwarz inequality states that for any vectors u and v in an inner product space, the absolute value of their inner product is bounded by the product of their norms: |<u,v>| <= ||u|| * ||v||. It is one of the most fundamental inequalities in linear algebra and analysis.

## Key Concepts

- In Euclidean space: |u^T v| <= ||u||_2 * ||v||_2, with equality if and only if u and v are linearly dependent
- Geometric interpretation: the cosine of the angle between two vectors has absolute value at most 1
- The inequality generalizes to any inner product space, not just Euclidean space
- It is the foundation for defining the angle between vectors in abstract vector spaces
- Cauchy-Schwarz implies the triangle inequality for norms: ||u + v|| <= ||u|| + ||v|||
- Used extensively in machine learning: bounding attention scores, proving generalization bounds
- The proof typically uses the fact that ||u - tv||^2 >= 0 for all scalars t, then minimizing
- In probability theory, it bounds the correlation between random variables: |Cov(X,Y)| <= sqrt(Var(X)Var(Y))
- The Titu's lemma (Engel's form) is a useful corollary: sum(a_i^2/b_i) >= (sum a_i)^2 / (sum b_i)

## Related Concepts

- [[vector-norms]]
- [[dot-product]]
- [[frobenius-norm]]
- [[matrix-operations]]

## Sources

- [[linear-algebra-crash-course]]
- [[intro-linear-algebra-for-applied-ml]]
