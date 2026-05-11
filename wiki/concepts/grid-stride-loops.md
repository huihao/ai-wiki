---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Grid-Stride Loops

## Definition

A grid-stride loop is a CUDA kernel pattern where each thread processes multiple elements of an array by striding through it with a step equal to the total number of threads in the grid. This allows kernels to handle arbitrary-sized inputs correctly regardless of how many thread blocks are launched, decoupling the kernel logic from the grid configuration.

## Key Aspects

- **Pattern**: `for (int i = threadIdx.x + blockIdx.x * blockDim.x; i < N; i += blockDim.x * gridDim.x)` — each thread processes elements at stride `totalThreads`
- **Grid Independence**: Kernels work correctly for any grid size; launching more blocks just reduces iterations per thread, enabling easy scaling across GPU generations
- **Memory Coalescing**: Adjacent threads access adjacent memory locations in the first iteration, ensuring coalesced memory access for maximum bandwidth utilization
- **Efficiency**: Achieves near-peak memory bandwidth (265 GB/s on T4, 83% of theoretical peak) because all threads are continuously processing data
- **Flexible Scaling**: Same kernel runs on GPUs with different numbers of SMs without code changes; more SMs = fewer iterations per thread = faster completion

## Related Concepts
- [[gpu-memory-bandwidth]]
- [[gpu]]

## Sources
- [[an-even-easier-introduction-to-cuda]]
