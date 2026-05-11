---
created: 2026-04-29
updated: 2026-04-29
tags: [linear-algebra, mathematics]
sources: 1
---
# Matrix Operations
## Definition
Fundamental operations on matrices including multiplication, transpose, inverse, and trace. Matrices represent linear maps between vector spaces, and operations like multiplication compose these maps. The trace (sum of diagonal elements) is invariant under cyclic permutation: tr(AB) = tr(BA).
## Key Concepts
- **Matrix multiplication**: Composes linear transformations; O(n^3) for naive algorithm
- **Transpose**: Swaps rows and columns; (AB)^T = B^T * A^T
- **Inverse**: A * A^{-1} = I; exists only for full-rank square matrices
- **Trace**: Sum of diagonal elements; tr(AB) = tr(BA) (cyclic property)
- **Rank**: Dimension of column/row space; full rank required for invertibility
## Related Concepts
- [[eigendecomposition]] -- factoring matrices into simpler forms
- [[linear-algebra]] -- broader mathematical context
## Sources
- [[linear-algebra-crash-course]] -- covers matrix operations and properties
