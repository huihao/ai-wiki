---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# Unified Memory in CUDA

## Overview

CUDA programming model introduced more than 7 years ago providing simple interface for GPU memory management without manual migration between host and device.

## Core Features

### Automatic Memory Management

- Single memory space accessible from both CPU and GPU
- No explicit cudaMemcpy calls needed
- Automatic page migration based on access patterns
- Prototyping-friendly without manual memory management

### Oversubscription Support

Starting from Pascal GPU architecture (2016+):
- Applications can allocate virtual memory larger than GPU physical memory
- Automatic eviction of pages to system memory
- Enables scaling to larger problem sizes
- All system memory (CPU + GPU) available to application

### Performance Characteristics

**On-demand migration (baseline):**
- Page fault triggers migration from CPU to GPU
- Performance depends on access pattern and interconnect speed
- Random access: very poor (few hundred KB/s on x86)
- Sequential access: moderate (12-35 GB/s depending on hardware)

**Zero-copy optimization:**
- Direct GPU access to pinned system memory
- No migration overhead
- Better for single-use data
- Consistent 3-4 GB/s for random access

**Data partitioning:**
- Distribute pages between CPU and GPU memory
- 2MB page size optimal for GPU MMU
- Best for reusable data with mixed residency

## Hardware Dependencies

Performance varies significantly based on:

1. **GPU architecture** — A100 (108 SMs) generates more page faults than V100
2. **Interconnect type** — NVLink (75 GB/s) > PCIe Gen4 (32 GB/s) > PCIe Gen3 (16 GB/s)
3. **CPU architecture** — Power9 access counters reduce thrashing vs x86

## Access Patterns

- **Grid stride** — Sequential with grid-sized jumps
- **Block stride** — Large contiguous regions per block
- **Random warp** — Unstructured, worst performance

## Performance Hints

CUDA APIs for optimization:
- `cudaMemPrefetchAsync` — Explicit prefetch to GPU
- `cudaMemAdvise` — Set preferred location, accessed-by hints
- `cudaMallocHost` — Allocate pinned system memory

## Applications

Especially effective for:
- Large data analytics
- Large deep learning models
- Graph applications
- Recommendation systems with embeddings
- Hash tables and unstructured workloads

## Best Practices

1. Use zero-copy for single-use data
2. Prefetch reusable data to GPU
3. Partition memory for mixed workloads
4. Align warp access to 128 bytes
5. Use intra-block synchronization for efficiency

## Related Concepts

- [[gpu-oversubscription|GPU Memory Oversubscription]] — Key capability of Unified Memory
- [[zero-copy|Zero-Copy Memory]] — Optimization strategy
- [[page-faults|Page Faults]] — Trigger mechanism for migration
- [[cuda|CUDA]] — NVIDIA's GPU programming platform

## Sources

- [[improving-gpu-memory-oversubscription-performance|Improving GPU Memory Oversubscription Performance]] — Detailed performance analysis