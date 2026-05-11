---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Linear Combination

## Definition

A linear combination is an expression constructed from a set of vectors by multiplying each vector by a scalar and summing the results. It is the most fundamental operation in linear algebra, defining the span of a set of vectors (all possible linear combinations) and forming the basis for understanding subspaces, basis vectors, and the range of linear transformations.

## Key Aspects

- For vectors v_1, v_2, ..., v_n and scalars a_1, a_2, ..., a_n, the linear combination is: a_1*v_1 + a_2*v_2 + ... + a_n*v_n
- The span of a set of vectors is the set of all possible linear combinations of those vectors
- A linear subspace is any set of vectors that is closed under linear combinations: if u and v are in the subspace, so is any linear combination of them
- An affine subspace is a linear subspace shifted away from the origin: {a_1*v_1 + ... + a_n*v_n + b | sum(a_i) = 1}
- In machine learning, every layer of a neural network computes a linear combination of its inputs (via matrix multiplication) followed by a non-linear activation
- The coefficients of the linear combination in attention mechanisms (query-key weights) determine how much each value vector contributes to the output

## Related Concepts

- [[inner-product]]
- [[linear-transformation]]
- [[linear-algebra]]

## Sources

- [[linear-algebra-crash-course-cs236605]]
