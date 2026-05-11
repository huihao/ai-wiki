---
created: 2026-04-29
updated: 2026-05-09
tags: [gpu]
sources: 2
---

# Thread Blocks

## Definition

Thread blocks are groups of CUDA threads that execute concurrently on a single streaming multiprocessor (SM), sharing fast shared memory and synchronizing via barriers. They form the fundamental unit of GPU parallelism, mapping work from the programmer's grid-level decomposition onto physical hardware resources.

## Key Aspects

- A thread block is launched with the execution configuration syntax `<<<blocks, threads>>>`, specifying the number of blocks and threads per block
- Threads within a block share a configurable amount of shared memory (up to 48KB on older architectures, more on newer) for low-latency inter-thread communication
- __syncthreads() provides an in-block barrier ensuring all threads reach a synchronization point before any proceed
- Block size should be a multiple of the warp size (32) to avoid underutilizing SM execution slots
- Grid-stride loops allow thread blocks to process arrays larger than the total thread count by having each thread iterate with a stride equal to the total grid size
- The CUDA runtime schedules blocks across available SMs; blocks on the same SM can share L1 cache but not shared memory across block boundaries
- Optimal block size depends on occupancy (how many blocks fit per SM), register usage, and shared memory requirements per thread
- In the CUDA tutorial, progressing from a single block (256 threads) to multiple blocks with prefetching achieved a 1932x speedup over single-threaded CPU execution

## Related Concepts

- [[cuda-programming]]
- [[gpu-parallel-computing]]
- [[cuda-kernels]]

## Sources

- [[an-even-easier-introduction-to-cuda]]
