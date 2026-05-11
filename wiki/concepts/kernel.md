---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Kernel (GPU Computing)

## Definition

In GPU computing, a kernel is a function written in a parallel programming language (such as CUDA or OpenCL) that is executed concurrently across many threads on the GPU's streaming multiprocessors. Each thread runs the same kernel code on different data, enabling massive data-parallelism for workloads such as matrix multiplication, convolution, and neural network inference.

## Key Aspects

- A kernel is launched onto the GPU with a grid of thread blocks; each block maps to a streaming multiprocessor, and threads within a block share shared memory
- GPU decode for LLM inference is memory-bound: each token generation reads the full weight matrix, so kernel performance is limited by memory bandwidth, not arithmetic throughput
- Persistent kernels keep threads alive across multiple operations, avoiding launch overhead and enabling techniques like atomic barriers and L2 prefetching
- Fused kernels combine multiple operations (e.g., RMSNorm + attention + MLP) into a single kernel, reducing memory traffic between operations
- Megakernels push this further, implementing the entire inference pipeline for a layer in one persistent kernel launch
- CUDA kernel optimization involves careful management of shared memory, warp-level primitives, register pressure, and memory access patterns

## Related Concepts

- [[cuda-architecture]]
- [[kernel-writing]]
- [[inference-speed]]

## Sources

- [[cuda-architecture]]
