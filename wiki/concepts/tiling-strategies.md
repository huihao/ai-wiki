---
created: 2026-04-29
updated: 2026-05-09
tags: [gpu, optimization]
sources: 1
---

# Tiling Strategies

## Definition

Tiling strategies are GPU optimization techniques that partition data and computation into small, manageable blocks (tiles) that fit efficiently into fast on-chip memory (shared memory, registers, or cache), reducing expensive global memory accesses and maximizing arithmetic intensity. Tiling is fundamental to achieving high performance in GPU kernels, particularly for memory-bound operations like matrix multiplication and convolutions.

## Key Aspects

- **Memory hierarchy exploitation**: Tiling exploits the GPU memory hierarchy — data is loaded from slow global memory into fast shared memory or registers, computed upon intensively while resident on-chip, then written back, minimizing the ratio of memory accesses to arithmetic operations.
- **Shared memory tiling**: The most common pattern — threads cooperatively load a tile of input data into shared memory, perform computations using the cached data, then synchronize and load the next tile. This reduces global memory bandwidth requirements by the tile dimensions.
- **Register tiling**: Even finer-grained than shared memory tiling — individual threads keep multiple output elements in registers, performing several multiply-accumulate operations per global memory load, maximizing arithmetic intensity at the thread level.
- **Algorithmic tiling**: For operations like matrix multiplication C = A x B, tiling divides the computation into sub-matrix multiplications where each sub-matrix fits in shared memory, reducing the O(n^3) computation's memory access pattern from O(n^3) global reads to O(n^3/s) where s is the tile size.
- **Bank conflict avoidance**: Tiling designs must consider shared memory bank conflicts — when multiple threads in a warp access the same bank, accesses are serialized. Padding tiles or adjusting access patterns mitigates these conflicts.
- **Cache-oblivious vs. cache-aware**: Cache-oblivious algorithms recursively decompose problems without explicit knowledge of cache sizes, while cache-aware algorithms explicitly tune tile dimensions to hardware parameters — the latter typically achieving better performance on GPUs.

## Related Concepts

- [[cuda-architecture]]
- [[shared-memory]]
- [[gpu-optimization]]
- [[memory-bandwidth]]

## Sources

- [[index]]
