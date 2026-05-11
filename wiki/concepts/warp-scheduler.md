---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Warp Scheduler

## Definition

The warp scheduler is a hardware unit within each NVIDIA GPU Streaming Multiprocessor (SM) that selects which of the resident warps is ready to execute and issues its next instruction, enabling latency hiding by switching between warps while others wait for memory or arithmetic operations to complete.

## Key Aspects

- Each SM on modern NVIDIA GPUs (132 SMs on H100) contains multiple warp schedulers that independently select ready warps each clock cycle, enabling instruction-level parallelism across warps.
- The scheduler maintains warp state (active, stalled on memory, stalled on dependencies) and selects the next warp whose operands are available, hiding memory latency by executing compute-bound warps while memory-bound warps wait.
- On the H100, each SM has four warp schedulers, each capable of issuing one instruction per cycle to its selected warp, meaning an SM can issue up to four instructions per cycle from different warps.
- The warp scheduler works in concert with the register file and shared memory to manage the hardware's SIMT execution model: it reads the program counter of each resident warp and dispatches the next ready instruction.
- Warp-level scheduling is what gives GPUs their throughput advantage over CPUs: while a CPU core stalls on a cache miss, the warp scheduler immediately switches to another ready warp with zero context-switch overhead.
- In the context of TPU vs GPU comparison, GPUs have more fine-grained scheduling (warp-level) while TPUs have coarser-grained scheduling (matrix-level), giving GPUs better latency hiding but TPUs better raw throughput for regular matrix operations.

## Related Concepts

- [[warp-divergence]] -- the performance cost when warps take different branch paths
- [[streaming-multiprocessor]] -- the SM that contains warp schedulers
- [[cuda-programming]] -- the programming model where warp scheduling is a key abstraction

## Sources

- [[how-to-think-about-gpus]]
