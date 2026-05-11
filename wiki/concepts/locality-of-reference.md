---
created: 2026-04-29
updated: 2026-05-09
tags: [performance]
sources: 1
---

# Locality of Reference

## Definition

Locality of reference is a performance principle describing how data that is stored close together in memory tends to be accessed together, leading to significant speed improvements when operations exploit this spatial grouping. In data science, this concept explains why NumPy's densely packed arrays vastly outperform Python for-loops for numerical computation.

## Key Aspects

- NumPy arrays are densely packed homogeneous arrays in contiguous memory, unlike Python lists which store pointers to scattered objects
- Locality of reference means CPU caches can pre-fetch adjacent data, reducing memory access latency
- Combined with C-based implementations avoiding Python's dynamic type checking, NumPy achieves approximately 100x speedup over for-loops on million-element arrays
- For-loops are slow for large datasets due to Python interpreter overhead on each iteration
- Vectorization leverages locality of reference to process entire arrays in a single operation
- This principle underpins the performance of Pandas, scikit-learn, and TensorFlow, which all build on NumPy
- List comprehensions and map functions are faster than raw for-loops but still cannot match NumPy's contiguous memory operations

## Related Concepts

- [[locality]]
- [[map-function]]
- [[memory-bound]]

## Sources

- [[forget-for-loop-embrace-vectorization]]
