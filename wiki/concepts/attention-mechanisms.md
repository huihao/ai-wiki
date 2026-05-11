---
created: 2026-04-30
updated: 2026-05-09
tags: []
sources: 6
---

# Attention Mechanisms

## Definition

Attention mechanisms are neural network components that learn to selectively focus on relevant parts of the input when producing an output, enabling models to weigh the importance of different input elements dynamically. In transformers, self-attention computes pairwise relationships between all tokens in a sequence, allowing each token to attend to every other token and capture long-range dependencies without the recurrence or convolution found in earlier architectures.

## Key Aspects

- **Core computation**: Self-attention projects inputs into Query, Key, and Value vectors, then computes scaled dot-product attention scores to determine how much each token should "attend to" every other token, producing a context-aware weighted combination.
- **Multi-head attention**: Multiple attention heads operate in parallel, each learning to capture different types of relationships (syntactic, semantic, positional), and their outputs are concatenated and projected to form the final representation.
- **Attention collapse and head specialization**: Not all attention heads are equally useful; some specialize in specific linguistic patterns while others may become redundant. Research explores pruning or merging heads for efficiency.
- **Positional bias**: Attention scores are inherently permutation-invariant, so positional encodings (sinusoidal, learned, ALiBi, RoPE) are essential for injecting sequence order information. ALiBi (Attention with Linear Biases) adds distance-based biases directly into attention scores without learned embeddings.
- **Interpretability**: Attention weights provide a visual and analytical window into model behavior, as popularized by Distill and related work. Attention visualization reveals which tokens the model deems important for each prediction, though attention weights should not be conflated with feature importance.
- **Inference constraints**: During autoregressive decoding, the KV-cache stores previously computed Key and Value vectors to avoid redundant computation, making attention a primary consumer of GPU memory in long-context inference.

## Related Concepts

- [[transformers]]
- [[self-attention]]
- [[multi-head-attention]]
- [[positional-encoding]]
- [[alibi-position-encoding]]

## Sources

- [[ai-insights-blog-avichala]] -- Covers attention mechanisms, attention collapse, and ALiBi positional bias
- [[dive-into-deep-learning]] -- Interactive textbook with attention mechanisms and transformers chapters
- [[distill-pub]] -- Pioneering interactive visualizations of attention mechanisms
