---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, systems]
sources: 1
---

# Operator Dispatch

## Definition

PyTorch's mechanism for routing tensor operation calls to the correct kernel implementation based on device type, layout, and dtype. Uses two levels of dispatch: dynamic dispatch (virtual function call) for device/layout, and static dispatch (switch statement) for dtype.

## Key Details

- **Device/layout dispatch**: Dynamic dispatch via virtual function call on Type object — routes to CPU/CUDA/TPU kernels
- **Dtype dispatch**: Switch statement (AT_DISPATCH_ALL_TYPES macro) for float/int/quantized specializations
- **Variable dispatch**: Additional layer for autograd metadata recording before kernel execution
- **Extension points**: Device, layout, dtype — their Cartesian product defines all possible tensor types
- **Auto-generated code**: Most dispatch code is generated, not hand-written

## Related Concepts

- [[tensor-storage]] — Underlying data model for dispatched operations
- [[automatic-differentiation]] — Variable dispatch records backward pass info

## Sources

- [[pytorch-internals]] — PyTorch internals deep dive by ezyang
