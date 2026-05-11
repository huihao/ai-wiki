---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, systems]
sources: 1
---

# Tensor-Storage Architecture

## Definition

PyTorch's internal representation where a Tensor (logical view with sizes, strides, offset) is decoupled from its Storage (physical data). Multiple tensors can share the same storage via different views, enabling zero-copy operations like slicing and transposing.

## Key Details

- **Storage**: Physical memory block with a fixed dtype and size
- **Tensor**: Logical view defined by sizes (dimensions), strides (step sizes per dimension), and offset (starting position in storage)
- **Views**: Tensors created from slicing share storage; editing a view reflects in the original
- **Stride formula**: physical_address = Σ(index[i] × stride[i]) + offset
- **Zero-copy guarantee**: No data duplication for common operations like rows, columns, slices

## Related Concepts

- [[stride]] — How indexing translates to physical memory positions
- [[automatic-differentiation]] — Requires tracking which operations created views

## Sources

- [[pytorch-internals]] — PyTorch internals deep dive by ezyang
