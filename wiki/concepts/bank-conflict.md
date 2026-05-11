---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Bank Conflict

## Definition
A bank conflict occurs in GPU memory when multiple threads in a warp (typically 32 threads) attempt to access different addresses that map to the same memory bank simultaneously, forcing the accesses to serialize. Bank conflicts degrade memory throughput by increasing the effective memory latency, and are a critical performance concern in CUDA kernel optimization alongside memory coalescing.

## Key Aspects
- **Memory bank organization**: GPU shared memory is divided into equally-sized banks; consecutive 32-bit words map to consecutive banks, allowing parallel access when addresses are spread across banks
- **Conflict condition**: When two or more threads in a warp access different addresses in the same bank, the hardware serializes these accesses, reducing throughput proportionally to the number of conflicting addresses
- **N-way conflict**: An N-way bank conflict means N accesses must serialize, reducing effective bandwidth by a factor of N
- **Padding to avoid conflicts**: Adding dummy elements to shared memory arrays (e.g., declaring `float tile[TILE_SIZE + 1]` instead of `float tile[TILE_SIZE]`) shifts bank assignments and eliminates regular conflict patterns
- **Broadcast optimization**: When all threads in a warp access the same address, it resolves as a single broadcast without conflict (even though it targets one bank)
- **Distinct from coalescing**: Bank conflicts affect shared memory; memory coalescing affects global memory. Both must be optimized independently for peak GPU performance

## Related Concepts
- [[memory-coalescing]] -- the global-memory analog of bank conflict avoidance
- [[cuda-kernel]] -- GPU kernels where bank conflicts manifest
- [[shared-memory]] -- the GPU memory where bank conflicts occur

## Sources
- [[memory-coalescing]]
