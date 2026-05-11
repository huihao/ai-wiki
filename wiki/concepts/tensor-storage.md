---
created: 2026-04-29
updated: 2026-05-09
tags: [pytorch, systems]
sources: 1
---

# Tensor Storage

## Definition

Tensor storage refers to the physical memory allocation that backs one or more logical tensor views in deep learning frameworks like PyTorch. Multiple tensors can share the same underlying storage through different combinations of sizes, strides, and offsets, enabling zero-copy operations like slicing, transposition, and reshaping that create new tensor views without duplicating data.

## Key Aspects

- **Storage-tensor decoupling**: A tensor is a logical view (defined by sizes, strides, and offset) over a contiguous block of physical memory called storage. This separation enables efficient memory usage through shared storage.
- **Strides as indexing function**: Strides map logical indices to physical memory offsets — for a tensor with strides (s0, s1, s2), element [i,j,k] is stored at offset i*s0 + j*s1 + k*s2. Different stride configurations over the same storage create different views.
- **Zero-copy views**: Operations like transpose, narrow, and select create new tensors that share storage with the original. Editing a view modifies the underlying data, similar to Java's substring behavior pre-Java 7.
- **Contiguous vs. non-contiguous**: A tensor is contiguous when its strides correspond to a standard row-major layout. Non-contiguous tensors (e.g., after transpose) may require .contiguous() to create a new contiguous copy when certain operations demand it.
- **Storage sharing implications**: In-place operations on one view affect all views sharing that storage, which can cause subtle bugs. Detaching from shared storage requires .clone() or .detach().clone().
- **Memory efficiency**: Storage sharing dramatically reduces memory usage in neural networks — for example, a transposed weight matrix in an attention layer requires no additional memory, and gradient tensors can share storage structure with forward tensors.

## Related Concepts

- [[tensor]]
- [[stride]]
- [[pytorch]]
- [[memory-management]]

## Sources

- [[pytorch-internals]]
