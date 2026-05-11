---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Improving GPU Memory Oversubscription Performance

## Metadata

- **Author**: Chirayu Garg (NVIDIA)
- **Date**: 2021-10-05
- **URL**: https://developer.nvidia.com/blog/improving-gpu-memory-oversubscription-performance/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Improving GPU Memory Oversubscription Performance _ NVIDIA Technical Blog.md`

## Summary

A technical deep-dive into CUDA Unified Memory performance characteristics when GPU memory is oversubscribed (allocations exceed physical GPU VRAM). The benchmark analyzes three memory access patterns (grid-stride, block-stride, random-per-warp) across three hardware configurations (V100 PCIe, A100 PCIe, V100 NVLink), demonstrating performance can vary up to 100x based on access pattern, optimization strategy, and platform.

## Key Takeaways

- **Oversubscription factor**: Ratio of allocated memory to available GPU memory (e.g., 1.5 = 48GB allocated on 32GB GPU)
- **On-demand migration (baseline)**: Page faults trigger automatic migration; performance depends on:
  - Access pattern (block-stride > grid-stride, random worst)
  - CPU-GPU interconnect speed (PCIe Gen4 > Gen3, NVLink fastest)
  - GPU architecture (A100 generates more parallel page faults due to more SMs)
- **Zero-copy optimization**: Direct GPU access to pinned system memory; no migration overhead; better for single-use data or random access patterns
- **Data partitioning**: Distribute pages between CPU and GPU; optimal for mixed residency with reuse
- **Performance insights**:
  - Block-stride achieves higher bandwidth than grid-stride in fault-driven scenarios
  - Random access yields only hundreds of KB/s on x86 (thrashing), but better on Power9 (access counters)
  - NVLink theoretical bandwidth (75 GB/s) doesn't guarantee highest throughput; A100's more SMs matter
  - 128-byte warp alignment critical for optimal zero-copy bandwidth

## Entities Mentioned

- [[nvidia]] — author's company; GPU manufacturer and CUDA developer

## Concepts Mentioned

- [[cuda-unified-memory]] — the central technology being analyzed
- [[paged-attention]] — similar memory management principles (block-based allocation)
- [[gpu-memory-oversubscription]] — specific scenario where Unified Memory shines
- [[memory-migration]] — automatic page transfer mechanism
- [[zero-copy]] — optimization technique avoiding migration

## Raw Notes

### Benchmark Setup

- Allocation via `cudaMallocManaged`
- Three kernels: `read_thread` (grid-stride), `read_thread_blockCont` (block-stride), random warp
- Hardware: DGX 1V (V100-32GB-PCIe3), DGX A100 (A100-40GB-PCIe4), IBM Power9 (V100-32GB-NVLink)

### Access Patterns

1. **Grid-stride**: Each block accesses neighboring region, then strides by grid size
2. **Block-stride**: Each block accesses large contiguous chunk (deterministic per-block memory domain)
3. **Random-per-warp**: Each warp selects random page, accesses 128B region

### Optimization Strategies

1. **On-demand migration**: Baseline; pages fault on GPU access, migrate from CPU
2. **Zero-copy** (`cudaMemAdviseSetPreferredLocation` to CPU): Direct PCIe/NVLink access; no faults; optimal for single-use or random access
3. **Hybrid partitioning**: Manual page distribution (2MB pages); some on GPU, some mapped to CPU; best for mixed residency

### Performance Results

**On-demand migration**:
- V100-PCIe3: Grid ~10 GB/s, Block ~15 GB/s, Random ~0.5 GB/s
- A100-PCIe4: Grid ~20 GB/s, Block ~30 GB/s, Random ~0.4 GB/s
- V100-NVLink-P9: Grid ~15 GB/s, Block ~20 GB/s, Random ~3-4 GB/s (access counters help)

**Zero-copy**:
- A100-PCIe4: Grid ~24 GB/s, Random ~3-4 GB/s
- V100-NVLink-P9: Grid ~70 GB/s (near theoretical peak)
- More consistent across oversubscription factors

**Hybrid partitioning**:
- Gradual bandwidth drop as oversubscription increases (logarithmic scale)
- Combines GPU residency (fast) with CPU fallback

## Questions / Follow-ups

- How does this relate to [[paged-attention]] in LLM inference?
- Implications for consumer GPU memory optimization ([[context-kills-vram]])?