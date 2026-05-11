---
created: 2026-04-29
updated: 2026-05-09
tags: [deep-learning]
sources: 2
---

# Stride

## Definition

Stride is a metadata attribute of a PyTorch tensor that describes how many elements to skip in underlying physical storage when moving one position along a given dimension. Strides enable zero-copy views: multiple tensors can share the same storage while presenting different logical shapes by varying their stride values.

## Key Aspects

- Strides are computed as multipliers: for a tensor with shape (d1, d2, d3), the stride at dimension i determines how many storage elements to advance when incrementing that dimension's index
- A contiguous tensor with shape (3,4) and default strides of (4,1) can be transposed to shape (4,3) with strides (1,4) without copying data
- The storage-tensor decoupling is a distinctive feature of PyTorch: a tensor is a logical view (sizes, strides, offset) over shared physical storage
- Zero-copy operations (transpose, narrow, select, expand) modify only metadata, not data, making them effectively free
- Non-contiguous tensors may require explicit .contiguous() calls before certain CUDA kernels that assume contiguous memory layout
- PackedTensorAccessor in CUDA kernels uses 32-bit indexing (faster than 64-bit) with stride information for safe element access
- Stride information is critical for understanding and debugging memory access patterns in custom kernels

## Related Concepts

- [[tensor-storage]]
- [[pytorch-internals]]
- [[cuda-programming]]

## Sources

- [[pytorch-internals]]
