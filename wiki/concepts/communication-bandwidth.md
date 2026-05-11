---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Communication Bandwidth

## Definition

Communication bandwidth refers to the data transfer rate between GPUs during model parallelism in transformer inference. It is a critical bottleneck in distributed inference, as tensor parallelism requires all-reduce operations across GPUs to synchronize partial results, and the throughput of the interconnect (e.g., NVLink at 300GB/s) determines whether communication or compute is the limiting factor.

## Key Aspects

- **NVLink Throughput**: ~300GB/s per link between GPUs, with ~8 microsecond latency
- **Communication Formula**: 4 * (N-1) * d_model / N bytes per layer for N-way tensor parallelism
- **Bottleneck Threshold**: When compute time < communication time, adding GPUs provides diminishing returns
- **Small Batch Impact**: At batch size 1, communication overhead dominates; at batch 512, compute dominates
- **Gopher 260B Example**: 22ms/token at batch 1, 53ms/token at batch 512 on 16 GPUs — communication is the cost at small batch
- **Optimization Strategies**: Communication-compute overlap, gradient compression, locality-aware sharding
- **PCIe vs NVLink**: Intra-host NVLink is orders of magnitude faster than inter-host PCIe or network connections

## Related Concepts

- [[tensor-parallelism]]
- [[transformer-inference-arithmetic]]
- [[compute-bound]]
- [[kv-cache]]

## Sources

- [[transformer-inference-arithmetic]]
