---
created: 2026-04-29
updated: 2026-05-09
tags: [mathematics]
sources: 1
---

# Lp Norm

## Definition

An Lp norm is a member of a family of vector norms parameterized by p that measures the "size" or "length" of a vector in different ways. Each value of p produces a different geometry: L1 (manhattan distance), L2 (Euclidean distance), and L-infinity (maximum element) are the most commonly used, with distinct properties for robustness, optimization, and geometric interpretation.

## Key Aspects

- L1 norm: sum of absolute values; corresponds to mean absolute error; more robust to outliers; produces diamond-shaped unit circles
- L2 norm: square root of sum of squares; corresponds to Euclidean distance; most commonly used; produces circular unit circles
- L-infinity norm: maximum absolute element; useful for bounding worst-case behavior
- For p < q, the Lp unit circle contains the Lq unit circle, meaning Lp is a looser bound
- Cauchy-Schwarz inequality: |<u,v>| <= ||u|| * ||v||, with equality iff vectors are linearly dependent
- Inner product induces the Euclidean (L2) norm; the cosine of the angle between unit vectors equals their inner product
- Lp norms arise throughout machine learning: L1 regularization (Lasso), L2 regularization (Ridge), and adversarial robustness (Lp balls)

## Related Concepts

- [[matrix-calculus]]
- [[max-margin]]
- [[locality]]

## Sources

- [[linear-algebra-crash-course-cs236605]]
