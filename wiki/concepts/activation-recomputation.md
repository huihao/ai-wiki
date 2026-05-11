---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Activation Recomputation

## Definition
Activation recomputation (also called gradient checkpointing) is a memory optimization technique for training large neural networks where intermediate activations are discarded after the forward pass and recalculated during the backward pass when needed. This trades increased compute — raising FLOPs from approximately 6ND to 8ND for Transformers — for significantly reduced memory consumption, enabling training of larger models.

## Key Aspects
- Reduces memory consumption by not storing all intermediate activations, instead recomputing them on demand during backpropagation
- Increases compute by roughly 33% (from 6ND to 8ND in the Transformer FLOPs equation) as the cost of memory savings
- Essential for training very large models where full activation storage would exceed GPU memory
- The tradeoff is favorable because memory bandwidth, not compute, is often the bottleneck for elementwise operations like activations and layer normalization
- Practical throughput remains high because the additional FLOPs are mostly cheap elementwise operations, not matrix multiplications

## Related Concepts
- [[activation-quantization]]
- [[batch-normalization]]

## Sources
- [[flops-calculus]]
- [[the-flops-calculus-of-language-model-training]]
