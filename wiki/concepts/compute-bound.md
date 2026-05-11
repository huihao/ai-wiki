---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Compute-Bound

## Definition

Compute-bound is a performance classification for operations where the limiting factor is the processor's peak computational throughput rather than memory bandwidth. In transformer inference, large-batch generation and attention computation are typically compute-bound, meaning adding more compute (GPUs) directly improves performance.

## Key Aspects

- **Peak Compute Throughput**: The operation runs at the maximum FLOPS of the hardware
- **High Arithmetic Intensity**: Many operations performed per byte of data moved (above the ridge point on the roofline)
- **Large Batch Inference**: At batch sizes above ~208 on A100, transformer inference transitions from memory-bound to compute-bound
- **Optimization Focus**: Increase arithmetic intensity through kernel fusion, batch processing, and efficient compute kernels
- **A100 Ridge Point**: ~208 operations per byte — above this, compute is the bottleneck; below, memory is
- **Scaling Behavior**: Adding GPUs in compute-bound regime improves throughput proportionally
- **Training vs. Inference**: Forward/backward passes on large matrices are compute-bound; KV cache loading is memory-bound

## Related Concepts

- [[roofline-analysis]]
- [[compute-resources]]
- [[communication-bandwidth]]
- [[memory-bound]]

## Sources

- [[roofline-analysis]]
