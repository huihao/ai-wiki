---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Kernel Writing

## Definition

Kernel writing is the practice of implementing low-level tensor operations in C++ or CUDA to extend or optimize a deep learning framework. In the context of PyTorch, this involves using ATen (A Tensor Library) APIs, dispatch macros, and vectorization tools to write efficient kernels that handle device-specific and dtype-specific computation across CPUs and GPUs.

## Key Aspects

- PyTorch operators require two dispatches: first on device/layout (dynamic dispatch via virtual call), then on dtype (switch statement via AT_DISPATCH_ALL_TYPES macro)
- Key tools for kernel authors: `TensorAccessor` (safe multi-dimensional indexing), `TensorIterator` (broadcasting and type promotion), `AT_DISPATCH_ALL_TYPES` (dtype dispatch), `Vec256` (vectorized CPU operations)
- `PackedTensorAccessor` is preferred for CUDA kernels because 32-bit indexing is significantly faster than 64-bit on GPU hardware
- CPU vectorization uses the `Vec256` class with runtime CPU feature detection to select AVX/AVX2/AVX-512 implementations
- Legacy TH (Torch) code lives in `generic/` directories and should not be extended -- new kernels should be written using ATen APIs
- Edit `.cpp` files rather than headers to avoid recompilation cascades; use ccache and build on beefy servers for CUDA targets

## Related Concepts

- [[pytorch-internals]]
- [[cuda-architecture]]
- [[tensor-operations]]

## Sources

- [[pytorch-internals]]
