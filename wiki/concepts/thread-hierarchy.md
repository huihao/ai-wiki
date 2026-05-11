---
created: 2026-04-29
updated: 2026-05-09
tags: [cuda, gpu]
sources: 1
---

# Thread Hierarchy

## Definition

Thread hierarchy is the organizational structure of computational threads in GPU programming (particularly CUDA) that defines how threads are grouped, scheduled, and coordinated to execute parallel computations. The hierarchy consists of threads, thread blocks, and grids, with each level providing different scopes for communication, synchronization, and memory access — enabling efficient exploitation of the GPU's massively parallel architecture.

## Key Aspects

- **Three-level hierarchy**: Individual threads group into thread blocks, and thread blocks compose a grid. Each level corresponds to different hardware resources: threads map to CUDA cores, blocks map to Streaming Multiprocessors (SMs), and the grid spans the entire GPU.
- **Thread block**: A group of threads (up to 1024 on modern GPUs) that can synchronize via __syncthreads(), share shared memory (up to 48-164 KB per block), and cooperate on computations. Blocks are scheduled independently onto SMs.
- **Grid**: The top-level collection of all thread blocks launched by a single kernel invocation. The grid dimensions define the total parallelism and are specified in the kernel launch configuration <<<grid, block>>>.
- **Thread-level operations**: Each thread has its own registers and can perform independent computations, read/write to global memory, and participate in warp-level primitives (shuffles, reductions).
- **Shared memory**: Fast on-chip memory shared among threads within a block, enabling cooperative algorithms (reductions, prefix sums, tiled matrix multiplication) that would be impossible with global memory alone.
- **Execution model**: Threads within a block execute concurrently (though not necessarily simultaneously), with __syncthreads() providing barrier synchronization. Blocks execute in any order relative to each other, with no inter-block synchronization within a single kernel launch.

## Related Concepts

- [[cuda-architecture]]
- [[gpu-parallel-computing]]
- [[shared-memory]]
- [[warp-level-operations]]

## Sources

- [[cuda-architecture]]
