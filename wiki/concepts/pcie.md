---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# PCIe

## Definition

PCIe (Peripheral Component Interconnect Express) is the high-speed serial interconnect standard used for communication between CPUs, GPUs, storage devices, and accelerators, forming the critical data transfer backbone whose bandwidth limitations shape GPU memory management and zero-copy strategies.

## Key Aspects

- **Bandwidth as Bottleneck**: PCIe transfer speeds (typically 32 GB/s for PCIe 5.0 x16) are orders of magnitude slower than GPU HBM bandwidth (2+ TB/s), making PCIe the dominant bottleneck for host-to-device data transfers
- **Zero-Copy Implications**: Zero-copy memory techniques (CUDA unified memory, ROCm managed memory) are motivated by PCIe limitations, avoiding unnecessary host-device copies by allowing GPU to access page-locked host memory directly over PCIe
- **GPU Memory Oversubscription**: When GPU memory is insufficient, techniques like CUDA unified memory and host-staging rely on PCIe to page data between CPU and GPU memory, with performance directly proportional to PCIe bandwidth
- **Topology Awareness**: Multi-GPU systems use PCIe switches and root complexes whose topology affects achievable bandwidth between specific device pairs, influencing sharding strategies
- **NVLink Alternative**: For intra-node multi-GPU communication, NVLink provides 10x higher bandwidth than PCIe, creating a two-tier memory hierarchy where GPU-GPU communication uses NVLink while host-GPU uses PCIe

## Related Concepts

- [[zero-copy]] -- Memory techniques motivated by PCIe transfer limitations
- [[cuda-unified-memory]] -- Abstraction that manages PCIe transfers transparently
- [[gpu-memory-oversubscription]] -- Techniques for exceeding GPU memory using PCIe paging
- [[infiniband]] -- Network interconnect for inter-node communication, complementing PCIe's intra-node role

## Sources

- [[zero-copy]]
