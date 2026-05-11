---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# InfiniBand

## Definition

InfiniBand is a high-performance, low-latency interconnect technology used extensively in GPU clusters for distributed AI training and high-performance computing. It provides the high-bandwidth fabric that enables efficient multi-GPU and multi-node communication.

## Key Aspects

- Provides point-to-point bidirectional links with very high throughput and extremely low latency, essential for GPU-to-GPU communication at scale
- NCCL (NVIDIA Collective Communications Library) is optimized to use InfiniBand for collective operations like all-reduce across distributed GPUs
- NVIDIA SHARP (Scalable Hierarchical Aggregation and Reduction Protocol) enables in-network reduction directly on InfiniBand switches, reducing GPU overhead for collective operations
- InfiniBand works alongside NVLink for intra-node GPU communication, with InfiniBand handling inter-node traffic
- Supports RDMA (Remote Direct Memory Access) for zero-copy, kernel-bypass data transfer between nodes
- Forms the backbone of modern GPU supercomputer clusters used for training large language models

## Related Concepts

- [[nvlink]] -- High-bandwidth intra-node GPU-to-GPU interconnect
- [[nccl]] -- NVIDIA's library for efficient GPU collective communications
- [[sharp]] -- In-network computing for accelerated collective operations

## Sources

- [[nccl]]
- [[nvlink]]
- [[sharp]]
