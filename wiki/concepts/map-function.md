---
created: 2026-04-29
updated: 2026-05-09
tags: [programming]
sources: 1
---

# Map Function

## Definition

The map function is a higher-order function that applies a given function to each element of a collection, returning a new collection of results. In data science contexts, map serves as an alternative to for-loops for element-wise operations, though it remains slower than NumPy's vectorized operations due to Python-level function call overhead.

## Key Aspects

- Applies a function independently to each element, producing a new collection without modifying the original
- In Python, map() returns a lazy iterator; wrapping in list() materializes the results
- Faster than raw for-loops due to reduced Python interpreter overhead, but still slower than NumPy vectorization
- List comprehensions are generally preferred over map in Python for readability, with similar performance
- The fundamental limitation is that map operates element-by-element in Python, missing NumPy's advantages: contiguous memory, C-level loops, and SIMD instructions
- Vectorization (NumPy) bypasses Python's function call overhead entirely by operating on entire arrays at the C level
- Conceptually important as a bridge between imperative loops and functional programming paradigms

## Related Concepts

- [[locality-of-reference]]
- [[map-function]]
- [[vectorization]]

## Sources

- [[forget-for-loop-embrace-vectorization]]
