---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Persistent Kernels

## Definition

Persistent Kernels are GPU kernels launched once and stay resident on the device for the entire computation duration, using custom synchronization mechanisms instead of CUDA's cooperative launch primitives. This eliminates per-step kernel launch overhead and enables fine-tuned synchronization strategies.

## Key Characteristics

- Single kernel launch for entire workload
- Resident thread blocks throughout computation
- Custom atomic barriers or flag-based synchronization
- Eliminates launch overhead (~10-30 us per launch)
- Enables productive use of idle blocks
- Better suited for autoregressive generation with many steps

## Key Proponents / Critics

- [[alpin-dale|Alpin Dale]] — Demonstrated persistent kernels for LLM decode
- [[elliot-arledge|Elliot Arledge]] — Original MegaQwen using cooperative kernels

## Related Concepts

- [[atomic-barriers|Atomic Barriers]] — Custom synchronization mechanism
- [[cuda-megakernel|CUDA Megakernel]] — Persistent kernel running entire model
- [[decode-optimization|Decode Optimization]] — Application for autoregressive generation
- [[warp-scheduling|Warp Scheduling]] — Execution within persistent kernel
- [[gpu-performance|GPU Performance]] — Metrics improved by persistence

## Related Entities

- [[alpin-dale|Alpin Dale]] — Expert using persistent kernels
- [[nvidia|NVIDIA]] — Hardware platform (Blackwell architecture)

## Sources

- [[hitting-1000-tokens-rtx-5090|Hitting 1,000 Tokens Per Second with RTX 5090]]

## Evolution

Persistent kernels evolved from cooperative launches (grid.sync()) with high overhead to custom atomic barrier implementations with monotonic generation counters avoiding ABA races. Modern implementations enable ~2-3 us barrier times vs ~10+ us for cooperative primitives.