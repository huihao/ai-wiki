---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Memory Bandwidth

## Definition

Memory bandwidth is the rate at which data can be read from or stored into memory, serving as a critical bottleneck in GPU computing and transformer inference. It determines how quickly a processor can access the data it needs to perform computations.

## Key Aspects

- For small batch sizes in transformer inference, memory bandwidth is the primary bottleneck: latency is dominated by loading weights from GPU memory rather than performing arithmetic
- The flops-to-memory ratio on an A100 is 208 -- batches below this threshold are memory-bound, while larger batches become compute-bound (flops-bound)
- Achievable memory bandwidth determines real-world inference speed: a T4 GPU achieves ~265 GB/s (83% of its 320 GB/s peak) through optimized kernels
- KV cache storage is memory-bound: a 52B model requires ~2MB per token in the KV cache, constraining batch size by available GPU VRAM
- Grid-stride loops, unified memory prefetching, and kernel fusion are techniques to maximize effective memory bandwidth utilization
- NVLink interconnect (300 GB/s) versus PCIe Gen4 significantly impacts multi-GPU tensor parallelism communication bandwidth

## Related Concepts

- [[transformer-inference-arithmetic]]
- [[occupancy]]
- [[page-faults]]
- [[mixed-precision]]

## Sources

- [[transformer-inference-arithmetic]]
- [[kipply]]
