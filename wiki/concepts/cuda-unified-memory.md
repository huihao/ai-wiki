---
created: 2026-04-28
updated: 2026-04-28
tags: [cuda, memory-management]
sources: 1
---

# CUDA Unified Memory

## Definition

A CUDA feature that provides a single memory address space accessible from both CPU and GPU, with automatic data migration. Introduced in CUDA 6 (2013), it enables oversubscription (allocations larger than GPU VRAM) by paging memory between system RAM and GPU memory, similar to virtual memory in OSes.

## Key Proponents / Critics

- **Proponents**: NVIDIA (developer), Mark Harris (CUDA educator)
- **Adoption**: Essential for large-scale LLM inference, analytics, and oversubscription scenarios

## Performance Characteristics

### On-Demand Migration
- Baseline behavior: page faults trigger automatic CPU→GPU migration
- Performance depends on:
  - **Access pattern**: Sequential (grid/block-stride) ~10-30 GB/s; random ~0.5 GB/s (thrashing)
  - **Interconnect**: PCIe Gen4 > Gen3; NVLink fastest (but more SMs on newer GPUs also matter)
  - **Architecture**: A100's 108 SMs generate more parallel page faults → higher bandwidth

### Zero-Copy Optimization
- **Setup**: Pin memory on CPU with `cudaMemAdviseSetPreferredLocation(cudaCpuDeviceId)`
- **Behavior**: GPU accesses CPU memory directly over PCIe/NVLink; no migration overhead
- **Best for**: Single-use data, random access patterns, avoiding fault penalties
- **Bandwidth**: A100 PCIe4 ~24 GB/s; V100 NVLink ~70 GB/s (near theoretical peak)
- **128-byte warp alignment** critical for optimal performance

### Hybrid Partitioning
- **Setup**: Distribute pages (2MB size) between GPU and CPU manually
- **Behavior**: GPU-resident pages fast; CPU-mapped pages slower but fault-free
- **Best for**: Mixed residency with reuse; deterministic memory domains
- **Gradual bandwidth degradation** as oversubscription factor increases

## Related Concepts

- [[paged-attention]] — similar block-based memory management in LLM inference
- [[gpu-memory-oversubscription]] — Unified Memory's primary use case
- [[memory-migration]] — automatic page transfer mechanism
- [[zero-copy]] — optimization avoiding migration
- [[cuda]] — parent platform

## Related Entities

- [[nvidia]] — developer of CUDA and Unified Memory

## Sources

- [[improving-gpu-memory-oversubscription]] — comprehensive benchmark analysis with visual diagrams

## Evolution

- **2013**: Introduced in CUDA 6 for simplified memory management
- **Pascal (2016)**: Enabled oversubscription, using all CPU+GPU memory in system
- **2021**: Performance optimization strategies documented (zero-copy, partitioning)
- **2025**: Widely used in LLM inference systems (vLLM, etc.) for handling long contexts
