---
created: 2026-04-29
updated: 2026-05-09
tags: [gpu, memory]
sources: 5
---

# Improving GPU Memory Oversubscription Performance

## Definition

GPU memory oversubscription occurs when the total memory allocated by an application exceeds the physical GPU VRAM, requiring the system to manage data placement and migration between CPU and GPU memory dynamically. CUDA Unified Memory provides the foundation for this by presenting a single coherent memory space, but performance varies dramatically (up to 100x) depending on access patterns, optimization strategies, and hardware interconnects. Understanding oversubscription performance is critical for training and inference workloads that must fit large models or datasets into limited GPU memory.

## Key Aspects

- **On-demand migration (baseline behavior)**: When the GPU accesses a page residing in CPU memory, a page fault triggers automatic migration over the CPU-GPU interconnect. Performance depends heavily on access pattern (contiguous block-stride is fastest, random-per-warp is slowest), interconnect bandwidth (PCIe Gen4 > Gen3, NVLink fastest), and GPU architecture (more SMs generate more parallel page faults).
- **Zero-copy optimization**: Instead of migrating pages, the GPU directly accesses pinned host memory over PCIe or NVLink. This eliminates migration overhead and is optimal for single-use data or random access patterns. Requires 128-byte warp-aligned access for best bandwidth. On V100-NVLink, zero-copy achieves near-theoretical 70 GB/s.
- **Data partitioning / hybrid residency**: Pages are manually distributed between CPU and GPU using `cudaMemAdvise`. Some pages reside on GPU for fast access, others stay on CPU and are accessed via zero-copy. This hybrid approach provides the best balance for workloads with data reuse, with gradual bandwidth degradation as oversubscription increases.
- **Performance varies by access pattern**: Grid-stride kernels achieve ~10-20 GB/s, block-stride ~15-30 GB/s, and random access as low as 0.4 GB/s on PCIe systems. Power9 with NVLink and hardware access counters performs better on random access (~3-4 GB/s).
- **Practical implications for LLM workloads**: Oversubscription techniques are essential for serving large language models that exceed GPU memory. PagedAttention in vLLM applies similar block-based memory management principles. Unified Memory prefetching (`cudaMemPrefetchAsync`) can eliminate page-fault bottlenecks in predictable access patterns.

## Related Concepts

- [[cuda-unified-memory]] -- the underlying CUDA memory management technology
- [[gpu-memory-oversubscription]] -- the oversubscription scenario and its characteristics
- [[zero-copy]] -- direct GPU access to host memory without migration
- [[paged-attention]] -- block-based memory management for LLM inference
- [[gpu-memory-hierarchy]] -- the full GPU memory subsystem (HBM, L2, SMEM, registers)

## Sources

- [[improving-gpu-memory-oversubscription]] -- NVIDIA technical blog benchmarking oversubscription strategies
- [[chirayu-garg]] -- author (NVIDIA) of the oversubscription performance analysis
- [[paged-attention]] -- related memory management technique for LLM serving
- [[unified-memory]] -- CUDA Unified Memory documentation and guidance
- [[zero-copy]] -- zero-copy memory access optimization technique
