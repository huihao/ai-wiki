---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Training Techniques

## Definition

Training techniques are methods for optimizing the computational efficiency and effectiveness of neural network training, enabling larger models, longer training runs, and better hardware utilization. Gradient accumulation and gradient checkpointing are two foundational techniques that address memory and throughput constraints on limited hardware.

## Key Aspects

- **Gradient accumulation** simulates larger batch sizes by accumulating gradients over multiple forward-backward passes before updating weights, enabling effective batch sizes that exceed GPU memory capacity
- **Gradient checkpointing** (activation recomputation) discards intermediate activations during the forward pass and recomputes them during the backward pass, trading ~33% more compute for significant memory savings
- Together, these techniques enable training models that would otherwise require more GPUs or larger memory than available
- Mixed precision training (FP16/BF16) further reduces memory footprint and increases throughput, though it introduces conversion overhead and potential numerical stability concerns
- FlashAttention optimizes the attention computation kernel for memory hierarchy, reducing both memory usage and compute time for attention layers
- FSDP (Fully Sharded Data Parallelism) distributes model parameters, gradients, and optimizer states across multiple GPUs
- DeepSpeed ZeRO stages progressively shard optimizer states (Stage 1), gradients (Stage 2), and parameters (Stage 3) to scale training to billions of parameters
- The Transformer FLOPs equation C = 6ND ties compute, model size, and training tokens, providing a framework for planning training runs

## Related Concepts

- [[gradient-accumulation]]
- [[gradient-checkpointing]]
- [[mixed-precision-training]]

## Sources

- [[gradient-accumulation]]
- [[gradient-checkpointing]]
