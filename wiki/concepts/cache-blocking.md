---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Cache Blocking

## Definition

Dividing a computation into blocks that fit within a specific cache level (typically L1 data cache, 32KB on most modern CPUs) to minimize cache thrashing. In matrix multiplication, blocking the I-dimension to fit L1d cache reduces the working set per tile, keeping frequently accessed data in fast cache rather than spilling to slower L2/L3/RAM.

## Key Proponents / Critics

- S. Boehm — demonstrated L1 tiling reducing MMM from 89ms to 70ms

## Related Concepts

- [[tiling-strategies]] — the broader technique cache blocking belongs to
- [[loop-reordering]] — prerequisite: loops must be reordered for blocking to be effective
- [[simd]] — vectorization benefits from cache-friendly access patterns
- [[roofline-model]] — cache blocking shifts the arithmetic intensity operating point
- [[cpu-registers]] — lowest level of the memory hierarchy hierarchy

## Sources

- [[fast-mmm-cpu-from-scratch]] — primary source

## Evolution

- **Without blocking**: After loop reordering, MMM runs at 89ms but still suffers from L1 cache thrashing as matrix dimensions exceed L1d capacity (32KB)
- **L1 blocking (Boehm)**: Block the I-dimension to fit L1d cache. Reduces cache thrashing: 89ms → 70ms (21% improvement). Combined with multithreading and SIMD FMA, total optimization path goes from 4.4s naive → 16ms final
