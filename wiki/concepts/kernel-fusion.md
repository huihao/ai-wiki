---
created: 2026-04-28
updated: 2026-05-09
tags: [cuda, deep-learning, gpu, optimization]
sources: 3
---

# Kernel Fusion

## Definition
Kernel fusion is a GPU optimization technique that combines multiple small CUDA kernel executions into a single larger kernel, eliminating the overhead of launching separate kernels and reducing intermediate data writes to global memory. When consecutive operations (e.g., bias addition followed by activation and normalization) each write their results back to HBM before the next kernel reads them, fusion keeps intermediate data in registers or shared memory. This reduces memory bandwidth pressure and kernel launch latency, often yielding 2-5x speedups for memory-bound operations.

## Key Proponents / Critics
- [[nvidia]] — cuDNN and TensorRT use kernel fusion extensively in their optimized libraries
- [[meta-ai]] — torch.compile's inductor backend performs automatic kernel fusion via Triton

## Related Concepts
- [[flash-attention]] — a canonical example of kernel fusion applied to the attention mechanism
- [[cuda-kernels]] — kernel fusion eliminates redundant kernel launches and intermediate memory traffic
- [[torch-compile]] — PyTorch's compiler automatically fuses compatible operations into single kernels
- [[memory-bandwidth]] — fusion reduces the number of reads/writes to HBM, alleviating bandwidth bottlenecks
- [[roofline-model]] — fusion shifts operations from memory-bound to compute-bound on the roofline
- [[kernel-writing]] — the practice of writing custom CUDA kernels, which often involves manual fusion
- [[cuda-megakernel]] — the extreme end of kernel fusion, combining an entire model into one kernel

## Related Entities
- [[nvidia]] — provides cuDNN and TensorRT with aggressive fusion passes
- [[pytorch]] — torch.compile and Triton backend perform automatic kernel fusion

## Sources
- [[cuda-optimization]] — discusses kernel fusion as a key optimization strategy for CUDA programs
- [[the-ultra-scale-playbook]] — covers kernel fusion in the context of large-scale model optimization
- [[gpu-glossary]] — defines kernel fusion in the context of GPU execution models

## Evolution
- **2016**: CuDNN introduces fusion of convolution, bias, and activation into single kernels
- **2018**: TensorRT automates layer and kernel fusion during model optimization for inference
- **2021**: Triton (OpenAI) enables easier authoring of fused kernels with automatic tiling
- **2023**: torch.compile (PyTorch 2.0) brings automatic kernel fusion to general PyTorch models via inductor
- **2024**: CUDA Graphs + kernel fusion reduce launch overhead for repeated inference workloads
