---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Training extremely large neural networks across thousands of GPUs

## Metadata

- **Author**: Jeremy Jordan
- **Date**: 2025-02-27
- **URL**: https://www.jeremyjordan.me/distributed-training/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/Training extremely large neural networks across thousands of GPUs.md

## Summary

A comprehensive technical guide explaining distributed training techniques for scaling neural network training across GPU clusters. Covers fundamental concepts, data parallelism, model parallelism (pipeline and tensor), and their combination for extreme-scale training like Llama 3.1 405B.

## Key Takeaways

- Llama 3.1 405B trained in 54 days on 16,000 H100 GPUs (3.8×10^25 FLOPs)
- Single GPU would take ~609 years assuming perfect utilization
- Distributed training splits work across machines via data and model parallelism
- Memory constraints: parameters, optimizer states, gradients, activations, input data
- Tricks for single-GPU: gradient accumulation, activation checkpointing, CPU offloading
- Large-batch training: two regimes—perfect scaling (linear LR scaling) and ineffective scaling
- Gradient noise scale increases during training → can increase batch size progressively
- Llama 3.1 batch schedule: 4M → 8M → 16M tokens during training

## Entities Mentioned

- [[jeremy-jordan|Jeremy Jordan]] — Author, ML blogger
- [[meta|Meta]] — Trained Llama 3.1 405B
- [[nvidia|NVIDIA]] — H100 GPU provider

## Concepts Mentioned

- [[distributed-training|Distributed Training]] — Core topic
- [[data-parallelism|Data Parallelism]] — Splitting batches across GPUs
- [[model-parallelism|Model Parallelism]] — Splitting model across GPUs
- [[pipeline-parallelism|Pipeline Parallelism]] — Distributing layers
- [[tensor-parallelism|Tensor Parallelism]] — Splitting layer operations
- [[gradient-accumulation|Gradient Accumulation]] — Memory reduction technique
- [[activation-checkpointing|Activation Checkpointing]] — Recompute activations trade-off
- [[large-batch-training|Large-Batch Training]] — Scaling batch sizes effectively

## Data Parallelism

- Each GPU holds complete model copy
- Batch split into chunks, processed independently
- All-reduce operation sums gradients across GPUs
- Ring all-reduce: maximizes bandwidth utilization
- Scales effective batch size, limited by model memory requirements
- Best for slower cross-node communication (minimal synchronization)

## Model Parallelism

### Pipeline Parallelism
- Distribute layers across GPUs (e.g., GPU0: layers 1-4, GPU1: layers 5-8)
- Sequential forward pass: activations passed between stages
- Sequential backward pass: gradients propagated backward
- Challenge: pipeline bubble (idle GPU time)
- Solution: micro-batches allowing parallel stage execution
- GPipe: micro-batches accumulate gradients before update
- PipeDream: update after each micro-batch (near-perfect utilization, more inconsistency)
- Minimizes cross-node communication (only passes activations)

### Tensor Parallelism
- Split individual layer operations across GPUs
- Linear layer Y = XW split two ways:
  - Column partitioning: split W along output dimension
  - Row partitioning: split W along input dimension
- Megatron-LM optimization: column partition → activation → row partition
- Requires high-speed interconnects (NVLink within node)
- Frequent communication: all-gather, all-reduce operations
- Best for intra-node GPUs with fast connections

## Network Topology Considerations

- Hierarchical structure: NVLink (high bandwidth within node), InfiniBand (slower cross-node)
- Llama 3.1 cluster: 8 GPUs per server (NVLink), 16 GPUs per rack, 192 racks (3,072 GPUs per pod), 8 pods (24K GPUs total)
- Configuration: tensor parallelism=8 (within node), pipeline parallelism=16 (cross-node), data parallelism=8-128

## Llama 3.1 Training Recipe

- Hardware: 16,000 H100 GPUs at 700W TDP with 80GB HBM3
- Compute: 3.8×10^25 FLOPs
- Duration: 54 days
- Batch schedule:
  - Initial: 4M tokens, sequences of 4,096 length
  - After 252M tokens: 8M tokens, sequences of 8,192 length
  - After 2.87T tokens: 16M tokens
- Result: "very stable" with few loss spikes, no divergence interventions

## Related Concepts

### Memory Reduction Techniques
- Gradient accumulation: Process smaller batches sequentially, accumulate gradients before update
- Activation checkpointing: Release activations during forward, recompute during backward
- CPU offloading: Transfer less-accessed state to CPU memory
- All trade compute time for memory savings

### Communication Primitives
- Scatter: distribute data to each GPU
- Gather: collect data to one GPU
- Broadcast: share same data to all GPUs
- Reduce: combine data to one GPU
- All-gather/all-reduce: share combined result with all GPUs

## Raw Notes

The article emphasizes understanding fundamentals before diving into distributed techniques. Neural networks trained via gradient descent: compute loss, calculate gradient (partial derivatives), update parameters toward lower loss.

Batch size scaling insight: McCandlish et al. (2018) paper demonstrates two regimes. Transition point (gradient noise scale) depends on dataset/task complexity, increases during training.

Key insight: Modern datasets allow extremely large batches before hitting ineffective scaling regime. ImageNet: tens of thousands of images optimal, RL tasks: millions per batch.

Communication overhead: Ring all-reduce avoids central coordinator bottleneck, maximizes bandwidth by simultaneous chunk sharing.

Pipeline bubble problem: Naive layer distribution creates massive idle time. Micro-batches solve this by allowing different GPUs to work on different batches simultaneously.

Tensor parallelism communication optimization: Megatron-LM's clever partitioning reduces synchronization points by 50% (column partition → activation → row partition → all-reduce).

Other techniques mentioned: context parallelism (long sequences), expert parallelism (sparse/MoE models), DualPipe (DeepSeek-V3 efficiency improvement).

## References

**Papers:**
- PyTorch Distributed: Experiences on Accelerating Data Parallel Training
- GPipe: Easy Scaling with Micro-Batch Pipeline Parallelism
- PipeDream: Fast and Efficient Pipeline Parallel DNN Training
- Megatron-LM: Training Multi-Billion Parameter Language Models Using Model Parallelism
- Efficient Large-Scale Language Model Training on GPU Clusters Using Megatron-LM
- The Ultra-Scale Playbook: Training LLMs on GPU Clusters
- The Llama 3 Herd of Models
- An Empirical Model of Large-Batch Training

**Talks:**
- Model vs Data Parallelism in Machine Learning (Mark Saroufim)
- Distributed Data Parallel in PyTorch Tutorial Series
- Efficient Large-Scale Language Model Training (Jared Casper)
- Fully Sharded Data Parallel (FSDP) and Pipeline Parallelism (Will Falcon)
- Stanford CS231N: Large Scale Distributed Training

## Questions / Follow-ups

- How do FSDP, context parallelism, and expert parallelism extend these foundational techniques?
- What are the optimal configurations for different cluster topologies?
- How does DualPipe (DeepSeek-V3) improve pipeline efficiency?
- What benchmarks compare different parallelism strategies?
- How do costs scale with different distributed training approaches?