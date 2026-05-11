---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Atomic Barriers

## Definition

Atomic Barriers are custom GPU synchronization mechanisms using atomic operations on counters and generation flags to coordinate thread blocks. Unlike CUDA's cooperative launch grid.sync(), atomic barriers have lower overhead (~2-3 us vs ~10+ us) and can be tuned for specific workload patterns.

## Key Characteristics

- Atomic counter tracking arrived blocks
- Monotonic generation counter avoiding ABA races
- Per-block local generation tracking
- fence.acq_rel.gpu for memory ordering
- Last block resets counter and advances generation
- Other blocks spin on generation monotonic increase
- ~2-3 us per barrier vs ~10+ us for grid.sync()

## Key Proponents / Critics

- [[alpin-dale|Alpin Dale]] — Demonstrated atomic barrier advantages

## Related Concepts

- [[persistent-kernels|Persistent Kernels]] — Kernel type using custom barriers
- [[warp|Warp]] — Execution unit synchronized at block level
- [[decode-optimization|Decode Optimization]] — Application requiring fast barriers
- [[synchronization-overhead|Synchronization Overhead]] — Cost reduced by atomic barriers

## Related Entities

- [[nvidia|NVIDIA]] — Hardware supporting atomic operations
- [[alpin-dale|Alpin Dale]] — Expert implementing atomic barriers

## Sources

- [[hitting-1000-tokens-rtx-5090|Hitting 1,000 Tokens Per Second with RTX 5090]]

## Evolution

Atomic barriers evolved from naive sense-reversing barriers with ABA races to monotonic generation counters with per-block tracking. The key insight: wait condition should be *generation > my_local_gen (monotonic) instead of *generation != last_read (ABA vulnerable). fence.acq_rel.gpu provides ordering without full __threadfence() overhead on Blackwell.