---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# JAX Sharding

## Definition

JAX sharding is the mechanism by which JAX (Google's high-performance numerical computing library) distributes tensors and computations across multiple devices, such as TPUs and GPUs. It specifies how logical arrays are partitioned into physical shards across a device mesh, enabling automatic parallelism for training and inference on large-scale hardware.

## Key Aspects

- `jax.sharding.PartitionSpec` defines how tensor dimensions map onto a device mesh using axis names like `('dp', 'tp')` for data and tensor parallelism
- The `jax.sharding.Mesh` object represents the physical arrangement of devices, mapping logical axis names to device coordinates
- Named sharding (`jax.sharding.NamedSharding`) attaches a PartitionSpec to a mesh, creating a declarative specification for how tensors are distributed
- Automatic parallelism in JAX uses sharding specifications to determine which operations can run locally and which require cross-device communication (all-gather, reduce-scatter)
- Sharding specifications propagate through the computation graph: JAX infers the required sharding of intermediate values based on the sharding of inputs and the operations applied
- XLA (Accelerated Linear Algebra) compiler performs the actual device assignment and communication insertion based on the sharding specifications provided by the user

## Related Concepts

- [[distributed-training]]
- [[tensor-parallelism]]
- [[data-parallelism]]

## Sources

- [[llm-sharding]]
