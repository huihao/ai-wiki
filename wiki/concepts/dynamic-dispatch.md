---
created: 2026-04-29
updated: 2026-05-09
tags: [deep-learning, pytorch]
sources: 1
---

# Dynamic Dispatch

## Definition

Dynamic dispatch is a runtime polymorphism mechanism used in PyTorch's operator system to route tensor operations to the correct kernel implementation based on the tensor's device, layout, and data type. When a user calls an operator like `torch.mm`, the system first dispatches on device/layout via a virtual function call, then dispatches on dtype via a switch statement.

## Key Aspects

- Two-stage dispatch: first on device/layout (dynamic virtual call), then on dtype (switch statement)
- The "trinity of extensions" defines dispatch targets: Device (CPU/CUDA/TPU), Layout (strided/sparse/quantized), and Dtype (float/int/quantized)
- `AT_DISPATCH_ALL_TYPES` macro generates dtype-specialized kernels by expanding a macro over all supported types
- The `c10::Dispatcher` (introduced post-2019) centralizes dispatch routing for all operators
- Enables PyTorch's extensibility: new backends plug in by registering new dispatch targets, not by modifying core library code
- Replaces the older TH (Torch) legacy dispatch that used `generic/` directories with `#define scalar_t` for type specialization

## Related Concepts

- [[tensor-storage]]
- [[automatic-differentiation]]
- [[kernel-writing]]

## Sources

- [[pytorch-internals]]
