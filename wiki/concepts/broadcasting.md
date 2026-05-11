---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Broadcasting

## Definition
Broadcasting is NumPy's mechanism for performing element-wise operations on arrays of different shapes without explicitly copying data. It automatically "stretches" smaller arrays to match the shape of larger ones, enabling concise and efficient array arithmetic that avoids explicit loops and temporary memory allocations.

## Key Aspects
- Rule 1: If arrays have different rank, prepend 1s to the lower-rank array's shape
- Rule 2: Arrays are compatible in a dimension if they have the same size OR one has size 1
- Rule 3: Arrays can broadcast together if compatible in all dimensions
- After broadcasting, each array behaves as if it had the elementwise maximum of input shapes
- In dimensions where one array has size 1, it behaves as if copied along that dimension
- Eliminates the need for explicit loops, making numerical code both faster and more readable
- Fundamental to deep learning implementations: adding biases to batches, scaling activations, etc.

## Related Concepts
- [[batch-normalization]]
- [[bezier-curves]]

## Sources
- [[python-numpy-tutorial]]
- [[vectorization]]
