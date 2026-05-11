---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# GPU Clusters

## Definition

GPU clusters are collections of interconnected graphics processing units (GPUs) working together to perform large-scale parallel computations, most commonly used for training large language models and other deep learning workloads. Scaling from a single GPU to hundreds or thousands requires careful orchestration of data distribution, model sharding, and inter-GPU communication to achieve efficient utilization of compute resources.

## Key Aspects

- GPU clusters serve as the foundational infrastructure for training frontier LLMs, where a single GPU is insufficient for both model parameters and training data throughput
- Training at cluster scale requires choosing between data parallelism (replicating the model across GPUs with different data shards) and model parallelism (splitting model weights across GPUs, including tensor and pipeline parallelism)
- Inter-GPU communication bandwidth (e.g., NVLink at ~300 GB/s, InfiniBand across nodes) is a critical bottleneck that limits scaling efficiency; communication volume grows as O(d_model * (N-1)/N) per layer for tensor parallelism
- Cluster configuration involves trade-offs between compute-bound and memory-bound regimes: small batch sizes are memory-bandwidth-bound while large batch sizes shift to flops-bound operation (the crossover point depends on GPU arithmetic intensity, e.g., ~208 for A100)
- Practical scaling guides like the Ultra-Scale Playbook by Nanotron Research walk through concrete steps for configuring distributed training across thousands of GPUs, covering activation checkpointing, mixed-precision training, and gradient accumulation strategies
- Network topology (tree, fat-tree, torus) and topology-aware placement significantly impact achievable bandwidth and thus training throughput at scale

## Related Concepts

- [[distributed-training]]
- [[data-parallelism]]
- [[model-parallelism]]
- [[tensor-parallelism]]
- [[pipeline-parallelism]]
- [[training-infrastructure]]
- [[gpu-programming]]

## Sources

- [[the-ultra-scale-playbook]]
- [[distributed-training]]
- [[model-parallelism]]
- [[nanotron-research]]
