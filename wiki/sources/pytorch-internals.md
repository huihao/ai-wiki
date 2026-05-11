---
created: 2026-04-29
updated: 2026-04-29
url: "https://blog.ezyang.com/2019/05/pytorch-internals/"
title: "PyTorch internals"
tags: [source, pytorch, systems, deep-learning]
source: unknown
---

# PyTorch Internals

**Author:** Edward Yang (ezyang)
**Published:** May 16, 2019
**URL:** https://blog.ezyang.com/2019/05/pytorch-internals/

## Summary

A deep dive into PyTorch's C++ codebase architecture, explaining how tensors, autograd, and operator dispatch work under the hood. Originally a talk at the PyTorch NYC meetup, this essay provides a conceptual map of a "tensor library that supports automatic differentiation" and practical tools for navigating the codebase.

## Key Takeaways

1. **Tensor = data + metadata**: Tensors consist of physical data (storage) and logical metadata (sizes, strides, offset). Strides enable zero-copy views by indexing into shared storage.
2. **Storage-Tensor decoupling**: Multiple tensors can share the same physical storage. A tensor is a logical view defined by sizes, strides, and offset into storage.
3. **Two dispatches for operators**: When calling `torch.mm`, first dispatch on device/layout (dynamic, virtual call), then dispatch on dtype (switch statement).
4. **Trinity of extensions**: Device (CPU/CUDA/TPU), layout (strided/sparse/quantized), and dtype (float/int/quantized) are the three tensor extension points.
5. **Autograd architecture**: Variable wraps Tensor with AutogradMeta. Reverse-mode AD walks computations backward, replacing forward ops with backward ops.
6. **Four key directories**: `torch/` (Python frontend), `torch/csrc/` (Python-C++ binding, autograd engine), `aten/` (A Tensor Library - kernel implementations), `c10/` (core abstractions: Tensor, Storage).
7. **Kernel writing tools**: TensorAccessor (safe indexing), TensorIterator (broadcasting/type promotion), AT_DISPATCH_ALL_TYPES (dtype dispatch), Vec256 (vectorized CPU ops).
8. **Legacy TH code**: C-style, manually refactored, living in `generic/` directories — should be ported to ATen, not extended.
9. **Development efficiency**: Edit .cpp not headers to avoid recompilation; use ccache; build on beefy servers, not laptops for CUDA.

## Entities Mentioned

- **Edward Yang (ezyang)** — PyTorch core developer, author of this internals guide
- **PyTorch** — Deep learning framework with automatic differentiation
- **ATen** — "A Tensor Library", PyTorch's C++ tensor operation library
- **Caffe2** — Facebook's deep learning framework, merged into PyTorch

## Concepts Mentioned

- [[stride]] — Metadata describing how to index into physical tensor storage
- [[automatic-differentiation]] — Computing gradients by walking computations backward
- [[dynamic-dispatch]] — Runtime polymorphism via virtual function calls for device/layout routing
- [[tensor-storage]] — Physical memory backing tensor data, shared across tensor views
- [[kernel-writing]] — Implementing low-level tensor operations in C++/CUDA

## Raw Notes

- Strides are PyTorch's distinctive feature: multiply each index by respective stride, sum to get physical offset
- Views don't copy data; editing a view reflects in original tensor (like Java substring pre-Java-7)
- TensorImpl struct has fixed layout: common prefix + strided-specific fields + custom suffix for extensions
- Variable-Tensor merge was in progress at time of writing (2019)
- TH (Torch) legacy code uses `generic/` directory compiled multiple times with different `#define scalar_t`
- `AT_DISPATCH_ALL_TYPES` macro generates dtype-specialized kernels
- PackedTensorAccessor useful for CUDA kernel launches (32-bit indexing faster than 64-bit on CUDA)
- CPU vectorization via Vec256 class with runtime CPU feature detection

## Questions / Follow-ups

- How has the ATen/Type dispatch changed since 2019? (c10::Dispatcher was introduced)
- What is the current status of the Variable-Tensor merge?
- How does TorchDynamo/torch.compile relate to this dispatch architecture?
