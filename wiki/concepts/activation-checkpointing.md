---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, training]
sources: 1
---

# Activation Checkpointing

## Definition

Activation checkpointing (also called gradient checkpointing) is a memory optimization technique for training large neural networks that trades computation for memory by selectively discarding intermediate activations during the forward pass and recomputing them during the backward pass. This enables training models that would otherwise exceed GPU memory capacity.

## Key Aspects

- Reduces activation memory at the cost of additional recomputation during backpropagation
- Memory reduced from O(n) to O(√n) with ~30% compute overhead from recomputation
- Critical technique for training extremely large models like Llama 3.1 405B (which required 16,000 H100 GPUs)
- Works alongside other memory-saving tricks: gradient accumulation and CPU offloading
- Single GPU training would take ~609 years for Llama 3.1 405B without distributed training optimizations
- Part of a broader toolkit for distributed training that includes data parallelism, pipeline parallelism, and tensor parallelism
- The memory saved depends on how aggressively checkpoints are placed — more checkpoints save more memory but require more recomputation
- In the Transformer FLOPs equation, activation checkpointing raises FLOPs from ~6ND to ~8ND (~33% increase), but the additional FLOPs are mostly cheap elementwise operations (activations, layer norm) that are memory-bandwidth-bound, not compute-bound
- Practical use case: training transformers with 48+ layers on a single 12GB GPU

## How It Works

1. Divide the model into sections, selecting certain layers as checkpoints
2. Forward pass: only save activations at checkpoint layers, discard others
3. Backward pass: recompute intermediate activations from the nearest checkpoints
4. Compute gradients locally using the recomputed activations, then discard them

## Related Concepts

- [[activation-atlases]]
- [[apache-spark]]
- [[ai-chips]]

## Sources

- [[training-extremely-large-neural-networks]]
- [[transformers-from-scratch]] — describes checkpointing for very large models
- [[flops-calculus]]
- [[the-flops-calculus-of-language-model-training]]
