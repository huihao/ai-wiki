---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# GPU Memory Oversubscription

## Definition

GPU memory oversubscription occurs when the total memory allocated on the GPU exceeds the available physical VRAM, relying on system (CPU) memory as overflow storage. Using CUDA Unified Memory, pages automatically migrate between CPU and GPU on demand via page faults. Performance under oversubscription depends critically on access patterns, CPU-GPU interconnect speed, and optimization strategies such as zero-copy access or data partitioning.

## Key Aspects

- **Oversubscription Factor**: Ratio of allocated memory to available VRAM (e.g., 1.5x means 48GB allocated on a 32GB GPU)
- **On-Demand Migration**: Baseline strategy where page faults trigger automatic CPU-to-GPU data transfer; performance varies up to 100x based on access pattern and hardware
- **Access Pattern Impact**: Block-stride patterns achieve higher bandwidth than grid-stride; random access yields only hundreds of KB/s on PCIe systems due to thrashing
- **Zero-Copy Optimization**: Direct GPU access to pinned system memory without migration; optimal for single-use or random access patterns; achieves near-NVLink theoretical bandwidth (70 GB/s on V100-NVLink)
- **Data Partitioning (Hybrid)**: Manually distributing pages between CPU and GPU; combines fast GPU residency for hot data with CPU fallback for cold data
- **Interconnect Matters**: PCIe Gen4 (A100) outperforms Gen3 (V100); NVLink provides highest bandwidth but does not always win when GPU SM count is a bottleneck
- 128-byte warp alignment is critical for optimal zero-copy bandwidth
- A100 generates more parallel page faults than V100 due to having more SMs, affecting on-demand migration performance

## Related Concepts

- [[gpu-memory-hierarchy]]
- [[gpu-parallel-computing]]
- [[hardware-design]]

## Sources

- [[cuda-unified-memory]]
- [[improving-gpu-memory-oversubscription]]
