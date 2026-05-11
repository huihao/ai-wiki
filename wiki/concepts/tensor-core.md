---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# tensor-core

## Definition

A tensor core is a specialized hardware processing unit on NVIDIA GPUs designed to accelerate matrix multiply-and-accumulate operations -- the dominant computation in deep learning training and inference. Introduced with the Volta architecture (2017), tensor cores perform mixed-precision (FP16 input, FP32 accumulation) matrix operations in a single clock cycle, achieving dramatically higher throughput than performing the same operations on standard CUDA cores. Understanding tensor cores is essential for reasoning about GPU performance, training throughput, and the economics of large-scale model training.

## Key Aspects

- **Matrix Multiply-Accumulate**: Tensor cores execute the operation D = A x B + C where A, B, C, D are matrices, performing an entire matrix multiplication in hardware rather than looping over individual elements
- **Mixed Precision**: Originally designed for FP16 inputs with FP32 accumulation; newer generations (A100, H100) support BF16, INT8, FP8, and other formats for flexible precision-performance tradeoffs
- **Dramatic Throughput Advantage**: An A100 achieves 312 TFLOPS with tensor cores (FP16) compared to 19.5 TFLOPS with standard CUDA cores -- a 16x improvement for applicable workloads
- **Practical Throughput Reality**: Real-world training throughput is 50-150 teraWFLOP/s per A100 (not the theoretical peak), due to memory bandwidth limitations, communication overhead, and non-matrix operations
- **FLOPs Calculus Connection**: The Transformer FLOPs equation C = 6ND (compute = 6 x parameters x tokens) assumes efficient tensor core utilization; with activation recomputation it becomes 8ND
- **Weight FLOPs vs. Attention FLOPs**: In large models, weight matrix operations (O(d^2)) dominate attention operations (O(dL)), making tensor core efficiency the primary performance factor
- **GPU Hierarchy**: Tensor cores reside within Streaming Multiprocessors (SMs), which group CUDA cores, tensor cores, shared memory, and registers into execution units

## Related Concepts

- [[streaming-multiprocessor]] -- The SM is the GPU execution unit containing tensor cores
- [[cuda-programming]] -- The programming model for utilizing GPU cores including tensor cores
- [[gpu-memory-bandwidth]] -- Often the actual bottleneck limiting tensor core utilization
- [[mixed-precision-training]] -- Training technique that leverages tensor core mixed-precision support
- [[flops-calculus]] -- Mathematical framework for estimating compute requirements

## Sources

- [[cuda-architecture]] -- CUDA programming model and GPU architecture fundamentals
- [[modal]] -- Cloud GPU platform demonstrating tensor core utilization in practice
- [[streaming-multiprocessor]] -- GPU building block that houses tensor cores
