---
created: 2026-04-29
updated: 2026-05-09
tags: [cuda, gpu, llm-inference]
sources: 2
---

# CUDA Megakernel

## Definition
A CUDA megakernel is a single, large GPU kernel that executes an entire model forward pass in one persistent GPU launch, eliminating kernel launch overhead and enabling custom synchronization between computation phases. This technique maximizes GPU utilization for memory-bound workloads like LLM token generation by keeping the kernel resident on the GPU.

## Key Aspects
- Single-token decode in LLMs is memory-bound: each step reads over 1 GB of weights, limited by memory bandwidth
- Persistent megakernels eliminate kernel launch overhead (typically tens of microseconds per launch)
- Custom atomic barriers replace cooperative groups for more flexible thread synchronization
- Redundant RMSNorm computes normalization independently per block to avoid barrier synchronization
- L1-bypassing 128-bit loads keep cache for activations rather than weights
- Idle thread blocks can prefetch weights for the next computation phase during attention computation ("productive spin")
- Achieved 71% bandwidth utilization on RTX 5090, reaching 1000+ tokens/second on small models
- A single 1,200-line CUDA megakernel can replace dozens of separate kernel launches

## Related Concepts
- [[cuda-kernels]]
- [[generalization]]

## Sources
- [[hitting-1000-tokens-rtx-5090]]
- [[persistent-kernels]]
