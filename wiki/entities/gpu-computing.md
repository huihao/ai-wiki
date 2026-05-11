---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/architecture]
sources: 1
---

# GPU Computing

## Summary
GPU computing refers to the use of graphics processing units (GPUs) for general-purpose parallel computation beyond their original graphics rendering purpose. GPUs contain thousands of small, efficient cores optimized for executing the same operation on many data points simultaneously (SIMD/SIMT), making them ideal for the matrix operations that dominate deep learning training and inference. GPU computing has been the primary enabler of the deep learning revolution.

## Key Attributes
- **Type**: concept/architecture
- **Notable for**: providing the massive parallelism that makes training large neural networks practical
- **Other facts**: NVIDIA's CUDA platform (launched in 2007) made GPU computing accessible to researchers; modern AI GPUs include NVIDIA A100, H100, and the newer Blackwell architecture; key metrics include FLOPS (compute throughput), memory bandwidth, and VRAM capacity; GPUs are organized into Streaming Multiprocessors (SMs) containing CUDA cores; competition from AMD ROCm, Intel oneAPI, and custom ASICs (TPUs, AWS Inferentia)

## Related Entities
- [[nvidia]] -- NVIDIA dominates the AI GPU market with its CUDA ecosystem
- [[aws-inferentia]] -- Amazon's custom AI inference chips as GPU alternatives
- [[apple-silicon]] -- Apple's unified memory architecture enables efficient on-device GPU compute
- [[lambda-labs]] -- a cloud GPU provider for AI workloads
- [[vast-ai]] -- a marketplace for renting GPU compute

## Related Concepts
- [[cuda-programming]] -- NVIDIA's parallel computing platform for GPU programming
- [[cuda-architecture]] -- the hardware architecture of NVIDIA GPUs
- [[gpu-optimization]] -- techniques for maximizing GPU utilization and performance
- [[gpu-memory-bandwidth]] -- a key bottleneck in GPU computing performance
- [[mixed-precision-training]] -- using lower-precision arithmetic to accelerate GPU computation
- [[tensor-core]] -- specialized GPU units for matrix multiplication
- [[parallel-computing]] -- the broader field of parallel computation that GPU computing belongs to

## Sources
- [[pytorch-in-one-hour]] -- covers using GPU computing with PyTorch for model training

## Contradictions / Open Questions
- The AI industry's dependence on NVIDIA GPUs raises concerns about supply chain concentration and cost. Custom silicon (TPUs, Trainium) and open GPU architectures (AMD ROCm, Intel) are emerging alternatives, but the CUDA software ecosystem's maturity remains a significant competitive moat.
