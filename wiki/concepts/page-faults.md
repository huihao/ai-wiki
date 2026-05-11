---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Page Faults

## Definition

A page fault occurs when a program accesses a memory page that is not currently mapped into physical memory (GPU VRAM in CUDA contexts), requiring the operating system or CUDA runtime to fetch the page from secondary storage (CPU system memory). In GPU computing, page faults are a primary performance bottleneck when using CUDA Unified Memory.

## Key Aspects

- In CUDA Unified Memory, page faults trigger automatic migration of data pages from CPU to GPU memory, introducing latency proportional to the interconnect speed
- On-demand migration (baseline): GPU page faults cause synchronous data transfer from CPU, with performance varying from hundreds of KB/s (random access on PCIe) to 30 GB/s (block-stride on A100)
- Prefetching (`cudaMemPrefetchAsync`) eliminates page faults by proactively migrating data before the GPU accesses it, achieving 1932x speedup in optimized CUDA examples
- Zero-copy optimization avoids page faults entirely by letting the GPU directly access pinned CPU memory, ideal for single-use or random access patterns
- Random access patterns cause severe page fault thrashing on PCIe systems (V100-A100), while NVLink-based systems handle random access better due to higher bandwidth
- The number of SMs affects page fault parallelism: A100 generates more simultaneous page faults than V100 due to having more SMs, which can improve or degrade throughput
- Grid-stride loops are more page-fault-friendly than random access because they access neighboring memory regions, improving spatial locality

## Related Concepts

- [[memory-migration]]
- [[memory-bandwidth]]

## Sources

- [[gpu-oversubscription]]
- [[unified-memory]]
