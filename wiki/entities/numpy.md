---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, organization]
sources: 2
---

# NumPy

## Summary
NumPy (Numerical Python) is the fundamental package for scientific computing in Python, providing the N-dimensional array object (ndarray), mathematical functions, and tools for integrating C/C++ and Fortran code. It is the backbone of the Python data science ecosystem, underpinning nearly every major numerical and machine learning library.

## Key Attributes
- **Type**: Scientific computing library
- **Language**: Python (with C and Fortran components)
- **Notable for**: Foundational array computing library; the basis for virtually all Python ML/data science tools
- **Created**: 2005 (evolved from Numeric and numarray); original author Travis Oliphant
- **License**: BSD
- **Key features**: N-dimensional arrays, broadcasting, vectorized operations, linear algebra, Fourier transforms, random number generation
- **Performance**: Operations are implemented in C, providing near-native speed for numerical computation

## Related Entities
- [[scipy]] — built on top of NumPy for scientific algorithms
- [[pandas]] — data manipulation library built on NumPy arrays
- [[matplotlib]] — visualization library that works with NumPy arrays
- [[pytorch]] — deep learning framework that uses NumPy-like tensors

## Related Concepts
- [[numpy-array]] — the core ndarray data structure
- [[numpy-vectorization]] — the practice of replacing loops with vectorized operations
- [[python-optimization]] — NumPy's vectorized operations are key to Python performance
- [[matrix-multiplication]] — NumPy provides optimized matrix operations via BLAS/LAPACK

## Sources
- [[machine-learning-from-scratch]] — references NumPy as essential for ML from-scratch implementations
- [[python-numpy-tutorial]] — tutorial on NumPy fundamentals for scientific computing

## Contradictions / Open Questions
- NumPy's Global Interpreter Lock (GIL) constraints limit true multi-threaded parallelism, which is why alternatives like JAX and frameworks like PyTorch implement their own computation backends.
