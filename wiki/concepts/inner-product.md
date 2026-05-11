---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Inner Product

## Definition

The inner product (also called the dot product) of two vectors is a scalar value computed by summing the element-wise products of their components. It is one of the most fundamental operations in linear algebra, providing a measure of how much one vector extends in the direction of another. The inner product induces the Euclidean norm and defines the geometric angle between vectors.

## Key Aspects

- For vectors u and v in R^n, the inner product is defined as: <u, v> = sum(u_i * v_i)
- The cosine of the angle between two unit vectors equals their inner product: cos(theta) = <u, v> when both are normalized
- The Cauchy-Schwarz inequality bounds the inner product: |<u, v>| <= ||u|| * ||v||, with equality if and only if the vectors are linearly dependent
- If <u, v> = 0, the vectors are orthogonal -- they have no component in each other's direction
- Inner products form the basis of matrix multiplication, where each entry of AB is an inner product of a row of A and a column of B
- In machine learning, inner products underpin attention mechanisms (query-key dot products), similarity measures, and kernel methods

## Related Concepts

- [[linear-algebra]]
- [[linear-combination]]
- [[attention-mechanisms]]

## Sources

- [[linear-algebra-crash-course-cs236605]]
