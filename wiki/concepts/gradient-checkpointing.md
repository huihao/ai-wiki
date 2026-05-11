---
created: 2026-04-28
updated: 2026-04-28
tags: [optimization, training]
sources: 0
---

# Gradient Checkpointing

## Definition

Gradient checkpointing is a memory optimization technique that trades computation for memory during training. Instead of storing all intermediate activations for backpropagation, only some activations are checkpointed (saved). Others are recomputed during the backward pass. This reduces memory from O(n) to O(√n) with modest compute overhead.

## How It Works

1. Divide model into sections/checkpoints
2. Forward pass: only save activations at checkpoints
3. Backward pass: recompute intermediate activations from checkpoints
4. Compute gradients locally, discard recomputed values

## Key Attributes

- **Memory reduction**: O(√n) instead of O(n) memory for activations
- **Compute cost**: ~30% slower due to recomputation
- **Use case**: Training models too large for single forward/backward pass

## Related Concepts

- [[gradient-accumulation|Gradient Accumulation]] — simulates larger batches
- [[gradient-descent|Gradient Descent]] — base optimization algorithm
- [[fine-tuning|Fine-tuning]] — checkpointing enables fine-tuning large models
- [[training-techniques]] — memory optimization family

## Sources

- [[transformers-from-scratch]] — describes checkpointing for very large models

## Use Cases

- Training transformers with 48+ layers on 12GB GPU
- Fine-tuning large language models
- Memory-constrained training environments
- Deep architectures where activations dominate memory