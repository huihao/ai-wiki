---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# NTK-by-Parts

## Definition

NTK-by-parts is a context window extension method for large language models that partitions the Neural Tangent Kernel (NTK) frequency components, applying different scaling factors to high-frequency and low-frequency components to preserve both local precision and global coherence when extending beyond the training context length.

## Key Aspects

- Based on the Neural Tangent Kernel (NTK) theory, which characterizes how neural networks learn features at different frequency scales
- Unlike naive position interpolation (which uniformly scales all positions), NTK-by-parts applies frequency-dependent scaling to avoid degrading high-frequency local information
- Builds on NTK-aware scaling by decomposing the kernel into frequency bands and treating each band differently
- YaRN (Yet another RoPE extensioN) incorporates NTK-by-parts as a key component for practical context window extension
- Dynamic scaling adjusts the interpolation factor based on the ratio of target to training context length
- Preserves the model's ability to attend to both nearby tokens (high-frequency, local) and distant tokens (low-frequency, global)
- Enables extending LLaMA and similar models from 4K to 32K+ context without retraining

## Related Concepts

- [[ntk-aware-scaling]] -- Earlier approach to position-aware context extension
- [[dynamic-scaling]] -- Adaptive scaling based on context length ratio
- [[yarn]] -- Practical implementation combining NTK-by-parts with other extension techniques

## Sources

- [[dynamic-scaling]]
- [[ntk-aware-scaling]]
- [[yarn]]
