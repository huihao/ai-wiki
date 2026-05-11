---
created: 2026-04-29
updated: 2026-04-29
tags: [linear-algebra, mathematics]
sources: 2
---
# Vector Norms
## Definition
Functions that measure the "length" or "size" of a vector. The most common are L1 (Manhattan), L2 (Euclidean), and L-infinity (max) norms. Norms must satisfy three axioms: absolute homogeneity, subadditivity (triangle inequality), and positive definiteness.
## Key Concepts
- **L1 norm**: Sum of absolute values, more robust to outliers (used in Lasso regularization)
- **L2 norm**: Square root of sum of squares, standard Euclidean distance (used in Ridge regularization)
- **L-infinity norm**: Maximum absolute value
- **Unit circle**: Set of vectors with norm equal to 1 (shape depends on norm type)
- **Cauchy-Schwarz inequality**: |<u,v>| <= |u| * |v|
## Related Concepts
- [[linear-algebra]] -- norms are a fundamental concept
- [[dot-product]] -- the L2 norm is induced by the dot product
## Sources
- [[linear-algebra-crash-course]] -- covers Lp norms in detail
- [[intro-linear-algebra-for-applied-ml]] -- discusses norms for ML applications
