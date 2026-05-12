---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Arithmetic Intensity

## Definition
Arithmetic intensity is the ratio of floating-point operations (FLOPs) to memory bytes transferred for a given computation. It is a fundamental metric in performance analysis that determines whether a workload is compute-bound (high arithmetic intensity) or memory-bound (low arithmetic intensity), guiding optimization strategies for GPU kernels and ML workloads.

## Key Aspects
- Defined as FLOPs per byte of memory accessed; higher values indicate more computation per memory transfer
- Roofline analysis uses arithmetic intensity to predict achievable performance on a given hardware architecture
- Matrix multiplications have high arithmetic intensity (compute-bound); elementwise operations like activations and layer norm have low intensity (memory-bound)
- In Transformer training, weight FLOPs (O(d^2)) dominate attention FLOPs (O(dL)), making matrix operations the primary compute bottleneck
- Understanding arithmetic intensity helps explain why practical GPU throughput (50-150 TFLOP/s on A100) is far below theoretical peak (312 TFLOP/s)

## Related Concepts
- [[activation-checkpointing]]
- [[cache-economics]]

## Sources
- [[index]]
- [[roofline-analysis]]
