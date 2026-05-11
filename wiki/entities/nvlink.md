---
created: 2026-04-28
updated: 2026-05-09
tags: [entity, hardware, gpu, networking]
sources: 1
---

# NVLink

## Summary

NVIDIA's high-bandwidth, low-latency GPU-to-GPU interconnect technology designed for multi-GPU systems. Enables direct communication between GPUs within a node, bypassing slower PCIe and CPU pathways.

## Key Attributes

- **Bandwidth**: Up to 900 GB/s full-duplex on latest generation (NVLink 5.0 on B200)
  - NVLink 3.0 (Ampere): 300 GB/s per GPU
  - NVLink 4.0 (Hopper): 450 GB/s per GPU
  - NVLink 5.0 (Blackwell): 900 GB/s per GPU
- **Topology**: All-to-all connectivity within nodes (typically 8 GPUs)
- **Use cases**: Tensor parallelism, expert parallelism, intra-node collectives
- **NVLink Domains**: Standard H100/A100 nodes have 8 GPUs in single NVLink domain; GB200 NVL72 has 72 GPUs in single NVLink domain with full 900 GB/s GPU-to-GPU bandwidth

| Generation | GPU | Ports per GPU | Bandwidth per port | Total bandwidth |
|------------|-----|---------------|---------------------|-----------------|
| NVLink 3.0 | A100 | 12 | 25 GB/s | 300 GB/s |
| NVLink 4.0 | H100 | 18 | 25 GB/s | 450 GB/s |
| NVLink 5.0 | B200/GB200 | 18 | 50 GB/s | 900 GB/s |

## Related Entities

- [[nvidia]] — developer of NVLink technology

## Related Concepts

- [[nccl]] — collective communications library using NVLink
- [[infiniband]] — scale-out networking beyond NVLink
- [[tensor-parallelism]] — common use case for NVLink bandwidth
- [[gpu-architecture]] — hardware context
- [[data-parallelism]] — intra-node NVLink enables fast gradient sync

## Sources

- [[how-to-think-about-gpus]]

## Contradictions / Open Questions

- None identified
