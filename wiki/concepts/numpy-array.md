---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# NumPy Array

## Definition

A NumPy array (ndarray) is the fundamental data structure in the NumPy library -- a densely packed, homogeneous, fixed-size multidimensional array that enables vectorized arithmetic operations implemented in C, bypassing Python's interpreter overhead to achieve orders-of-magnitude speed improvements over native Python loops.

## Key Aspects

- NumPy arrays are stored as contiguous blocks of memory with uniform data types, unlike Python lists which are arrays of pointers to scattered objects
- Vectorized operations (element-wise arithmetic, dot products, matrix operations) execute in compiled C code, avoiding per-element Python interpreter overhead
- Benchmark: NumPy operations can be approximately 100x faster than equivalent for-loops on million-element arrays
- Benefits from locality of reference -- contiguous memory layout means CPU cache hits are far more frequent
- Foundation for the entire scientific Python ecosystem: Pandas, scikit-learn, TensorFlow, and PyTorch all build on NumPy arrays
- Supports broadcasting rules that allow operations between arrays of different shapes without explicit loops
- Alternatives to for-loops (map, list comprehension) are still significantly slower than NumPy vectorization

## Related Concepts

- [[vectorization]] -- The technique of replacing loops with array operations
- [[pandas]] -- Data analysis library built on NumPy
- [[stochastic-gradient-descent]] -- Training algorithms that rely heavily on array operations

## Sources

- [[forget-for-loop-embrace-vectorization]]
- [[tirthajyoti-sarkar]]
- [[vectorization]]
