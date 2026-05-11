---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 2
---

# Distributed Training

## Definition

Distributed training enables training extremely large neural networks across thousands of GPUs by splitting the model training process across a large cluster of machines. Techniques include data parallelism, model parallelism (pipeline and tensor), and their combinations for maximum efficiency at scale.

## Key Proponents / Critics

- [[meta|Meta]] — Trained Llama 3.1 405B on 16K GPUs
- [[nanotron-research|Nanotron Research]] — Created comprehensive scaling playbook
- [[jeremy-jordan|Jeremy Jordan]] — Documented fundamentals and techniques
- [[nvidia|NVIDIA]] — Provides hardware infrastructure (H100 GPUs, NVLink)

## Methods

- **Data parallelism** — Splits input batch across GPUs, each holds full model copy
- **Pipeline parallelism** — Distributes layers across GPUs, sequential processing
- **Tensor parallelism** — Splits individual layer operations across GPUs
- **Fully sharded data parallelism (FSDP)** — Combines approaches for extreme scale
- **Context parallelism** — For training on long sequence lengths
- **Expert parallelism** — For training sparse models (MoE)

## Related Concepts

- [[gpu-clusters|GPU Clusters]] — Hardware infrastructure for distributed training
- [[data-parallelism|Data Parallelism]] — Batch distribution approach
- [[model-parallelism|Model Parallelism]] — Model distribution approach
- [[pipeline-parallelism|Pipeline Parallelism]] — Layer-wise distribution
- [[tensor-parallelism|Tensor Parallelism]] — Operation-level distribution
- [[inference-time-compute-scaling|Inference-Time Compute Scaling]] — Alternative scaling axis

## Sources

- [[the-ultra-scale-playbook|The Ultra-Scale Playbook]]
- [[training-extremely-large-neural-networks|Training Extremely Large Neural Networks]]

## Evolution

Distributed training has enabled the training of models like Llama 3.1 405B (3.8 × 10^25 FLOPs on 16,000 H100 GPUs in 54 days). Key considerations:

- Network topology matters: NVLink (high bandwidth within nodes), InfiniBand (slower cross-node)
- Optimal configuration depends on cluster topology and communication patterns
- Data parallelism works well for slower cross-node connections (minimal synchronization)
- Tensor parallelism best for high-speed intra-node connections (frequent communication)
- Pipeline parallelism minimizes cross-node communication (only passes activations)

Example: Llama 3.1 405B used tensor parallelism=8, pipeline parallelism=16, data parallelism=8-128.

Memory considerations:
- Model parameters, optimizer states, gradients, activations, input data all consume memory
- Tricks: gradient accumulation, activation checkpointing, CPU offloading (trade compute for memory)

Challenges:
- Pipeline bubble (idle GPU time) — mitigated by micro-batches
- Communication overhead — minimized by clever partitioning strategies
- Synchronization costs — balanced based on network topology