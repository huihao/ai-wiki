---
created: 2026-04-29
updated: 2026-04-29
tags: [attention, linear-algebra, mathematics]
sources: 2
---
# Dot Product
## Definition
The inner product of two vectors, computed as the sum of element-wise products. The dot product measures similarity or alignment between vectors: positive when vectors point in similar directions, negative when opposite, and zero when orthogonal. It induces the L2 norm and is fundamental to attention mechanisms in transformers.
## Key Concepts
- **Formula**: u . v = sum(u_i * v_i)
- **Geometric interpretation**: |u| * |v| * cos(theta) where theta is the angle between vectors
- **Orthogonality**: u . v = 0 means vectors are perpendicular
- **Attention scoring**: Used in scaled dot-product attention to compute relevance weights
## Related Concepts
- [[vector-norms]] -- L2 norm is induced by the dot product
- [[scaled-dot-product-attention]] -- transformer attention mechanism
## Sources
- [[linear-algebra-crash-course]] -- defines the inner product
- [[transformers-from-scratch]] -- uses dot product for attention scoring
