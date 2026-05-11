---
created: 2026-04-29
updated: 2026-05-09
tags: [gpu, inference, performance]
sources: 1
---

# FLOPS-Bound

## Definition

A computation is FLOPS-bound (floating-point operations per second bound) when its performance is limited by the GPU's compute throughput rather than by memory bandwidth. In transformer inference, whether a workload is memory-bound or FLOPS-bound depends on the batch size: small batches are memory-bound (limited by loading weights from HBM), while large batches become FLOPS-bound (limited by the GPU's arithmetic throughput).

## Key Aspects

- The memory-to-FLOPS ratio of a GPU determines the crossover point: on an A100 with a 208:1 ratio, batch sizes below 208 are memory-bound, above 208 are FLOPS-bound
- For memory-bound inference (small batch): latency is dominated by loading model weights from HBM, and the arithmetic units are underutilized; adding more compute does not help
- For FLOPS-bound inference (large batch): the GPU's arithmetic units are fully utilized, and latency scales with the number of floating-point operations per token
- The latency equation for FLOPS-bound regime: latency = 2 * P * B / (N * A_f), where P is parameter count, B is batch size, N is number of GPUs, and A_f is FLOPS throughput
- The latency equation for memory-bound regime: latency = 2 * P / (N * A_b * B) + communication overhead, where A_b is memory bandwidth
- Kernel fusion reduces the number of memory round-trips by combining multiple operations into single GPU kernels, potentially shifting a workload from memory-bound to FLOPS-bound
- Understanding the memory/FLOPS boundary is essential for inference optimization: optimizing the wrong bottleneck yields no improvement

## Related Concepts

- [[transformer-inference-arithmetic]]
- [[memory-bandwidth]]
- [[gpu-memory]]

## Sources

- [[transformer-inference-arithmetic]]
