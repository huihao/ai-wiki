---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Warp Divergence

## Definition

Warp divergence is a performance phenomenon in NVIDIA GPUs where threads within the same warp (a group of 32 threads executing in lockstep on a single SM) take different execution paths through conditional branches, forcing the GPU to serialize execution of each path and disabling threads not on the current path, reducing effective throughput.

## Key Aspects

- NVIDIA GPUs execute threads in warps of 32 using SIMT (Single Instruction, Multiple Threads) scheduling: all 32 threads in a warp must execute the same instruction at the same time.
- When an if-else branch causes threads within a warp to diverge, the GPU serializes the execution: first the true branch runs with only the diverging threads active, then the false branch runs with the remaining threads active.
- Warp divergence can reduce throughput by up to 2x (for 50/50 branch splits) because both paths must execute fully even though each path uses only a fraction of the warp.
- In ML workloads, warp divergence is most problematic in conditional operations like dropout (random thread masking), sparse attention (variable-length sequences), and ReLU (conditional zeroing).
- The H100 GPU has 132 SMs, each with multiple warp schedulers that can issue instructions from different warps in the same cycle, partially hiding divergence latency by switching to a non-divergent warp.
- Mitigation strategies include branchless programming (using arithmetic instead of conditionals), predication (executing both paths and selecting results), and restructuring data layouts so threads in the same warp follow the same path.
- Tensor Cores avoid divergence entirely by executing fixed matrix operations across the entire warp, which is one reason they are so much faster than CUDA cores for ML workloads.

## Related Concepts

- [[warp-scheduler]] -- the hardware unit that selects which warps to execute each cycle
- [[streaming-multiprocessor]] -- the SM that hosts multiple warps and their schedulers
- [[cuda-programming]] -- the programming model where warp divergence is a key optimization concern

## Sources

- [[how-to-think-about-gpus]]
