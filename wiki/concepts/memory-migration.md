---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Memory Migration

## Definition

Memory migration is the automatic transfer of data pages between CPU system memory and GPU device memory, a key mechanism in CUDA Unified Memory that enables GPU programs to access data that exceeds available VRAM. Performance depends critically on access patterns and interconnect speed.

## Key Aspects

- CUDA Unified Memory uses page faults to trigger on-demand migration: when the GPU accesses a page not resident in VRAM, it is automatically migrated from CPU memory
- Access pattern dramatically affects migration performance: block-stride patterns achieve ~15-30 GB/s while random access drops to hundreds of KB/s on PCIe systems
- CPU-GPU interconnect speed is critical: PCIe Gen4 (A100) outperforms PCIe Gen3 (V100), and NVLink provides the fastest migration bandwidth
- Zero-copy optimization avoids migration entirely by letting the GPU directly access pinned CPU memory via PCIe/NVLink -- optimal for single-use or random access patterns
- Data partitioning (hybrid residency) distributes pages between CPU and GPU, combining fast GPU-local access with CPU fallback for overflow pages
- GPU architecture matters: A100 generates more parallel page faults due to having more SMs, which can improve or worsen migration throughput depending on the access pattern

## Related Concepts

- [[memory-bandwidth]]
- [[page-faults]]
- [[occupancy]]

## Sources

- [[cuda-unified-memory]]
- [[improving-gpu-memory-oversubscription]]
