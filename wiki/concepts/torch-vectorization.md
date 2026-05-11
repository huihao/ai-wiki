---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Torch Vectorization

## Definition

Torch vectorization is the practice of replacing explicit Python for-loops with PyTorch tensor operations that execute element-wise or along batch dimensions in compiled C++/CUDA code, yielding orders-of-magnitude speedups by exploiting SIMD parallelism, memory locality, and GPU acceleration.

## Key Aspects

- Python for-loops carry interpreter overhead per iteration; vectorized tensor operations dispatch to optimized C++/CUDA kernels that process entire arrays in one call.
- NumPy vectorized operations can be roughly 100x faster than equivalent Python loops on million-element arrays due to dense memory layout and eliminated dynamic type checking.
- PyTorch extends NumPy vectorization to GPUs: the same tensor operations run on CUDA with automatic parallelism across thousands of cores.
- Locality of reference is a key advantage: vectorized arrays are densely packed in contiguous memory, enabling CPU cache prefetching and efficient memory access patterns.
- All major ML frameworks (PyTorch, TensorFlow, JAX) are built on vectorized array operations as their computational primitive.
- When a computation cannot be fully vectorized, techniques like `torch.vmap` (batched transforms), custom CUDA kernels, and `torch.compile` can bridge the gap.
- Vectorized code is also more readable and less error-prone than manual loop-based implementations.

## Related Concepts

- [[numpy-vectorization]] -- the foundational vectorization paradigm that PyTorch extends
- [[cuda-programming]] -- GPU kernel execution underlying torch tensor operations
- [[torch-compile]] -- JIT compilation that fuses vectorized operations into efficient kernels

## Sources

- [[forget-for-loop-embrace-vectorization]]
