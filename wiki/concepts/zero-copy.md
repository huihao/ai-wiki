---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# Zero-Copy Memory in CUDA

## Overview

Memory allocation strategy where GPU directly accesses pinned system memory over CPU-GPU interconnect without migrating data to GPU memory. Alternative to Unified Memory's on-demand migration approach.

## Mechanism

### Allocation Methods

1. **cudaMallocHost** — Allocate pinned system memory directly
2. **Unified Memory hints** — Set preferred location to CPU:
   ```cpp
   cudaMemAdvise(ptr, size, cudaMemAdviseSetPreferredLocation, cudaCpuDeviceId);
   cudaMemAdvise(ptr, size, cudaMemAdviseSetAccessedBy, gpu_device);
   ```

### Access Pattern

- GPU loads/stores go directly over PCIe or NVLink to system memory
- No page fault events
- No memory transfers (HtoD or DtoH) during kernel execution
- GPU MMU translates to system memory addresses

## Performance Characteristics

**Advantages:**
- Eliminates migration overhead
- Consistent performance across oversubscription levels
- No eviction thrashing
- Better for random access patterns (3-4 GB/s)

**Limitations:**
- Lower aggregate bandwidth than GPU-resident memory
- PCIe Gen3: ~12-16 GB/s theoretical
- PCIe Gen4: ~32 GB/s theoretical
- NVLink: ~75 GB/s theoretical
- Latency higher than GPU memory access

## Comparison to On-Demand Migration

**Zero-copy wins for:**
- Single-use data (no reuse benefit)
- Random access patterns (avoid thrashing)
- Mixed CPU/GPU access (no ownership transfer overhead)
- Low GPU memory scenarios

**Migration wins for:**
- Repeated access to same data (amortize migration cost)
- Sequential patterns (efficient bulk migration)
- High reuse factor
- When GPU memory available

## Hardware Platform Performance

**V100-PCIe3-x86:**
- Grid stride: ~12-15 GB/s
- Random: ~3-4 GB/s

**A100-PCIe4-x86:**
- Grid stride: ~25-32 GB/s (PCIe Gen4 advantage)
- Random: ~3-4 GB/s
- Degradation with oversubscription due to MMU misses

**V100-NVLink-P9:**
- Grid stride: ~75 GB/s (approaches peak NVLink)
- Random: ~3-4 GB/s

## Best Practices

1. **128-byte warp alignment** — Critical for efficient PCIe/DRAM utilization
2. **Block stride optimization** — Align per-warp access to 128 bytes
3. **Use for single-use data** — Don't migrate if no reuse
4. **Consider interconnect speed** — NVLink > PCIe Gen4 > PCIe Gen3
5. **Test workload characteristics** — Compare zero-copy vs migration for specific case

## Applications

Ideal for:
- Streaming data processed once
- Random access workloads
- Oversubscribed memory scenarios
- Mixed CPU/GPU data access
- Data analytics with sparse access

## Implementation Tips

From NVIDIA benchmarks:
- Block stride pattern needs 128-byte alignment to match grid stride performance
- Grid stride inherently has 128-byte alignment
- Use intra-block synchronization for efficient address translation

## Related Concepts

- [[unified-memory|Unified Memory]] — Programming model supporting zero-copy via hints
- [[gpu-oversubscription|GPU Memory Oversubscription]] — Zero-copy as optimization strategy
- [[pcie|PCIe]] — CPU-GPU interconnect for zero-copy access
- [[nvlink|NVLink]] — Faster interconnect improving zero-copy performance

## Sources

- [[improving-gpu-memory-oversubscription-performance|Improving GPU Memory Oversubscription Performance]] — Performance benchmarks and optimization guidance