---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Model Parallelism

## Definition

Model parallelism distributes training by splitting a model across multiple GPUs when the model is too large to fit on a single GPU (considering parameters, optimizer states, gradients, and activations). Two main approaches: pipeline parallelism (layer-wise distribution) and tensor parallelism (operation-level distribution).

## Key Proponents / Critics

- [[jeremy-jordan|Jeremy Jordan]] — Detailed explanation of both approaches
- [[meta|Meta]] — Implemented combined parallelism for Llama 3.1
- Megatron-LM team — Pioneered tensor parallelism optimization

## Methods

### Pipeline Parallelism
- Distribute layers across GPUs (e.g., layers 1-4 on GPU0, layers 5-8 on GPU1)
- Sequential forward pass: activations passed between stages
- Sequential backward pass: gradients propagated backward
- Challenge: pipeline bubble (idle GPU time during sequential processing)
- Solution: micro-batches allowing parallel stage execution
- Implementations: GPipe (accumulate gradients), PipeDream (update each micro-batch)
- Minimizes cross-node communication (only passes activations between stages)

### Tensor Parallelism
- Split individual layer operations across GPUs
- Linear layer Y = XW partitioned:
  - Column: split weight matrix along output dimension (all-gather to concatenate outputs)
  - Row: split weight matrix along input dimension (all-reduce to sum outputs)
- Megatron-LM optimization: column partition → activation → row partition (50% fewer synchronization points)
- Requires high-speed interconnects (NVLink within node)
- Frequent communication: all-gather, all-reduce operations

## Related Concepts

- [[distributed-training|Distributed Training]] — Parent category
- [[data-parallelism|Data Parallelism]] — Alternative/complementary approach
- [[pipeline-parallelism|Pipeline Parallelism]] — Specific method
- [[tensor-parallelism|Tensor Parallelism]] — Specific method
- [[gpu-clusters|GPU Clusters]] — Hardware infrastructure

## Sources

- [[training-extremely-large-neural-networks|Training extremely large neural networks across thousands of GPUs]]

## Evolution

Model parallelism enables training models that exceed single-GPU memory capacity. Key considerations:

Network topology dictates optimal strategy:
- Tensor parallelism: best for intra-node GPUs (NVLink provides high bandwidth for frequent communication)
- Pipeline parallelism: best for cross-node (minimizes slow InfiniBand communication)

Hybrid approach: Modern training combines both. Llama 3.1 405B configuration:
- Tensor parallelism=8 (within node, NVLink)
- Pipeline parallelism=16 (cross-node, InfiniBand)
- Data parallelism=8-128 (variable during training)

Pipeline bubble problem: Sequential layer processing creates idle time. Micro-batches solve this by staggering computation—GPU0 processes micro-batch 1 while GPU1 processes micro-batch 0, increasing utilization.

GPipe vs. PipeDream:
- GPipe: Accumulate gradients across micro-batches, then update (more consistent, still has bubble)
- PipeDream: Update after each micro-batch (near-perfect utilization, more inconsistency due to different micro-batches seeing different model versions)

Megatron-LM breakthrough: Clever partitioning reduces communication. Column partition → element-wise activation (no communication) → row partition → single all-reduce. Saves 50% synchronization compared to naive column-column or row-row partitioning.

Advantages:
- Enables training models larger than single-GPU memory
- Tensor parallelism: high compute efficiency for intra-node
- Pipeline parallelism: minimal cross-node communication

Disadvantages:
- Pipeline parallelism: pipeline bubble reduces utilization (mitigated by micro-batches)
- Tensor parallelism: frequent communication overhead (requires fast interconnects)
- Complex implementation compared to data parallelism
- Optimal configuration depends on network topology

## Contradictions / Open Questions

**Utilization vs. consistency**: PipeDream achieves near-perfect utilization but introduces inconsistency from version differences. GPipe maintains consistency but has residual bubble. What's the optimal trade-off?

**Partitioning granularity**: How do you determine optimal partition boundaries for pipeline parallelism?

**Communication cost**: At what point does tensor parallelism communication overhead outweigh benefits?

**Beyond linear layers**: How does tensor parallelism work for attention mechanisms, embeddings, other architectures?

**Alternative parallelisms**: Context parallelism (long sequences), expert parallelism (MoE models). How do they complement these methods?