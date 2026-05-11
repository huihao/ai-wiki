---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Intermediate Activations

## Definition

Intermediate activations are the intermediate tensor values produced during the forward pass of a neural network, sitting between layers (after layer normalization, attention, and MLP sub-layers in transformers). These activations must be stored in memory during the forward pass for use in the backward pass during training, making them a significant contributor to GPU memory consumption -- especially during transformer inference where they can account for approximately 5% of total latency cost for large models.

## Key Aspects

- **Memory Cost**: Intermediate activations (softmax outputs, layernorm outputs, attention weights, MLP activations) must be stored during forward pass for backpropagation during training
- **Transformer Inference**: During inference, intermediate activations contribute roughly 5% of total latency for large models; more significant for smaller models
- **KV Cache Relationship**: The KV cache is a specific form of intermediate state that avoids recomputing key and value vectors across generation steps, saving approximately 1/6 of compute
- **Softmax and LayerNorm**: These operations produce intermediate results that cannot be fused away without kernel-level optimization
- **Kernel Fusion**: Combining multiple operations (e.g., attention + softmax) into single GPU kernels reduces the need to materialize intermediate activations in memory
- **Memory-Bound Operations**: Many intermediate activation operations are memory-bandwidth-bound rather than compute-bound, meaning memory access patterns matter more than raw FLOPS
- **Gradient Checkpointing**: During training, a technique to trade compute for memory by selectively recomputing activations instead of storing them all

## Related Concepts

- [[gpu-memory-hierarchy]]
- [[gpu-memory-oversubscription]]
- [[gpt-2]]

## Sources

- [[kipply]]
- [[transformer-inference-arithmetic]]
