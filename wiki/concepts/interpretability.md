---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Interpretability

## Definition

Interpretability is the degree to which a human can understand the cause-and-effect relationship between a model's inputs and its outputs. In the context of mechanistic interpretability, it refers to reverse-engineering the internal computational mechanisms of neural networks -- identifying specific circuits, features, and algorithms that the model implements to perform its tasks.

## Key Aspects

- Distinguished from explainability (post-hoc justifications) by seeking to actually understand what the model computes internally, not just rationalize its outputs
- Mechanistic interpretability has identified features in language models that correspond to human-interpretable concepts such as objects, relations, and even high-level reasoning patterns
- Linear representations hypothesis: many internal concepts are encoded as directions in activation space, meaning they can be recovered via linear probes or dictionary learning
- Superposition is a key challenge: networks pack more features than they have dimensions, requiring techniques like sparse autoencoders to disentangle
- Circuit analysis traces computation through specific attention heads, MLP layers, and residual streams to understand how models implement behaviors
- Implications for safety: interpretability can reveal deceptive alignment, sycophancy, and failure modes that are invisible from external testing alone

## Related Concepts

- [[mechanistic-interpretability]]
- [[linear-representations]]
- [[superposition]]

## Sources

- [[mechanistic-interpretability]]
