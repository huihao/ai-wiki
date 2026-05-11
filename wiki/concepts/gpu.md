---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# GPU

## Definition

A Graphics Processing Unit (GPU) is a specialized processor designed for massively parallel computation, originally built for graphics rendering and now central to machine learning training and inference. In the context of AI infrastructure, GPUs provide the parallel compute backbone for training large neural networks and serving inference at scale, as exemplified by platforms like Prime Intellect's distributed compute infrastructure.

## Key Aspects

- **Massive Parallelism**: GPUs contain thousands of cores that execute the same operation simultaneously (SIMD/SIMT), enabling orders-of-magnitude speedup over CPUs for matrix operations
- **CUDA Platform**: NVIDIA's CUDA framework enables general-purpose GPU programming using C++ extensions, making GPUs accessible for ML workloads
- **Memory Architecture**: GPUs have dedicated high-bandwidth memory (HBM) separate from system RAM; memory bandwidth is often the primary bottleneck for ML inference
- **Multi-Cloud Deployment**: Platforms like Prime Intellect offer GPU access across multiple cloud providers with Infiniband networking for distributed training
- **GPU Tiers**: Consumer GPUs (RTX 3060/4090) for local inference; data center GPUs (A100, H100) for training and large-scale inference; specialized ML accelerators (TPUs) as alternatives

## Related Concepts
- [[gpu-inference]]
- [[gpu-memory-bandwidth]]
- [[grid-stride-loops]]

## Sources
- [[prime-intellect-open-superintelligence-stack]]
