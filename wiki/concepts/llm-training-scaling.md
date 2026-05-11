---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# LLM Training Scaling

## Definition

LLM training scaling is the set of techniques and strategies for training large language models across distributed GPU clusters, from single GPUs to thousands. It involves making critical decisions about parallelism (data, model, pipeline), communication patterns, memory management, and optimization techniques to achieve efficient training at extreme scale. The Ultra-Scale Playbook by Nanotron Research serves as a practical guide for these decisions.

## Key Aspects

- **Distributed Training**: Core challenge -- how to split computation, gradients, and optimizer state across multiple GPUs while maintaining training correctness
- **Data Parallelism**: Each GPU holds a complete model copy but trains on different data batches; gradients are averaged across GPUs after each step
- **Model Parallelism (Tensor Sharding)**: Model weights are split across GPUs; each GPU computes a portion of each matrix multiplication; requires high-bandwidth inter-GPU communication
- **Pipeline Parallelism**: Different layers of the model reside on different GPUs; data flows sequentially through the pipeline; suffers from pipeline bubbles (idle time)
- **Communication Overhead**: NVLink (300+ GB/s) enables fast intra-node communication; inter-node communication is orders of magnitude slower and becomes the bottleneck at scale
- **Memory Management**: Training requires storing model parameters, optimizer states, gradients, and activations; mixed precision and gradient checkpointing reduce memory footprint
- **Roofline-Guided Optimization**: Understanding whether each operation is compute-bound or memory-bound guides the choice of parallelism strategy
- **Practical Decision Points**: Cluster configuration, batch size selection, gradient accumulation, learning rate scaling, and checkpoint frequency all affect training efficiency and convergence

## Related Concepts

- [[inference-scaling]]
- [[jax-optimization]]
- [[hardware-design]]

## Sources

- [[nanotron-research]]
- [[the-ultra-scale-playbook]]
