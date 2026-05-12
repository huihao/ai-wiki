---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Loop Reordering

## Definition

Changing the nesting order of loops in a computation to improve cache locality and enable SIMD vectorization. In matrix multiplication, swapping from RCI to RIC order (row of A, column of B, inner dimension) ensures the inner loop accesses columns of B and C sequentially in memory, enabling hardware vectorization. This single change — with no algorithmic improvement — produces the largest speedup in cache-aware MMM optimization.

## Key Proponents / Critics

- S. Boehm — demonstrated 16x speedup from loop reordering alone in MMM

## Related Concepts

- [[tiling-strategies]] — complementary technique: blocking computation to fit cache
- [[cache-blocking]] — specific to L1 cache tiling
- [[simd]] — loop reordering enables SIMD vectorization of the inner loop
- [[roofline-model]] — determines whether loop reordering moves a computation from memory-bound to compute-bound
- [[memory-bandwidth]] — RAM throughput as bottleneck that loop reordering helps avoid

## Sources

- [[fast-mmm-cpu-from-scratch]] — primary source demonstrating 16x speedup from loop reordering

## Evolution

- **Naive RCI order**: 4.4s for 1024x1024 MMM (2 GFLOPs). Compiler flags (-O3, -march=native, -ffast-math) bring it to 1.6s
- **RIC reordering (Boehm)**: Swapping inner loops from RCI to RIC yields 16x speedup (1.6s → 89ms). The inner loop over columns of B and C now accesses memory sequentially, enabling SIMD vectorization. This single change — no algorithmic modification — produces the largest improvement in the entire optimization chain
- **Key insight**: Memory access patterns matter more than algorithmic complexity for real-world performance. The same computation, reorganized for cache locality, can be orders of magnitude faster
