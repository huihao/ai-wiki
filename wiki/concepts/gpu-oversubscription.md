---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# GPU Memory Oversubscription

## Overview

Technique of allocating virtual memory larger than physical GPU memory, enabled by CUDA Unified Memory starting from Pascal GPU architecture.

## Mechanism

### How It Works

1. Allocate memory using `cudaMallocManaged` larger than GPU capacity
2. GPU accesses virtual memory addresses resident on CPU
3. Page fault triggers migration from CPU to GPU over interconnect
4. When GPU memory fills, automatic eviction of pages back to CPU
5. Active addresses remain accessible through migration/eviction cycles

### Oversubscription Factor

Parameter controlling allocation size relative to GPU memory:

- Factor = 1.0: allocate exactly GPU memory size
- Factor < 1.0: not oversubscribed (GPU memory sufficient)
- Factor > 1.0: oversubscribed
  - Example: factor 1.5 with 32GB GPU → allocate 48GB

### Page Sizes

- x86 systems: default 4KB system memory pages
- Power9 systems: default 64KB pages (helps migrate larger chunks)
- GPU MMU: operates optimally with 2MB pages

## Performance Characteristics

**Baseline (on-demand migration):**
- Sequential access: moderate bandwidth (12-35 GB/s)
- Random access: very poor (few hundred KB/s)
- Performance decreases as oversubscription factor increases

**Optimization strategies:**

1. **Zero-copy** — Direct GPU access to pinned system memory
   - No eviction/migration overhead
   - Consistent performance across oversubscription levels
   - Best for single-use data

2. **Data partitioning** — Explicit distribution between CPU and GPU
   - 2MB pages for optimal GPU MMU
   - Round-robin mapping based on oversubscription factor
   - Best for reusable data

## Hardware Impact

- **A100 vs V100** — More SMs → more page faults → higher bandwidth
- **NVLink vs PCIe** — Faster interconnect → faster migration
- **Power9 vs x86** — Access counters → less thrashing for random access

## Access Patterns

**Sequential (grid stride, block stride):**
- Better performance due to predictable faults
- Block stride outperforms grid stride in oversubscription
- Bandwidth decreases with oversubscription factor

**Random (random warp):**
- Worst performance (thrashing)
- Small fraction of migrated memory actually used
- Many page faults with high overhead
- Power9 mitigates with access counters

## Applications

Useful for:
- Large deep learning models
- Graph applications
- Hash tables
- Recommendation systems with embeddings
- Large data analytics
- Unstructured memory access patterns

## Limitations

- Random access performance poor on x86 (thrashing)
- Performance drops with higher oversubscription factors
- Requires careful optimization for production use
- Not suitable for all workload types

## Best Practices

- Test access patterns before committing to oversubscription
- Use zero-copy for single-use, random access workloads
- Use data partitioning for reusable data
- Consider hardware platform (NVLink > PCIe)
- Implement 128-byte alignment for warp access

## Related Concepts

- [[unified-memory|Unified Memory]] — Programming model enabling oversubscription
- [[zero-copy|Zero-Copy Memory]] — Alternative optimization strategy
- [[page-faults|Page Faults]] — Mechanism triggering migrations
- [[cuda|CUDA]] — Platform providing oversubscription support

## Sources

- [[improving-gpu-memory-oversubscription-performance|Improving GPU Memory Oversubscription Performance]] — Comprehensive performance analysis