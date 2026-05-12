---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Representation Superposition

## Definition

Representation superposition is a phenomenon where neural networks, particularly large language models, encode more features than they have dimensions by allowing feature representations to overlap and share the same neurons. This mechanism has been identified as a primary driver of neural scaling laws, explaining why model performance improves predictably with size.

## Key Aspects

- LLMs represent more features than they have dimensions by overlapping representations in the same subspace
- Demonstrated as the primary mechanism governing neural scaling laws: under strong superposition, loss scales inversely with model dimension
- Validated across broad frequency distributions in open-source LLMs and confirmed against Chinchilla scaling laws
- Geometric overlaps in the strong superposition regime are the key driver of the observed power-law scaling behavior
- One of the NeurIPS 2025 Best Paper Award runners-up, recognized for its theoretical contribution to understanding neural network behavior
- Relates to the broader question of how neural networks manage to compress vast amounts of knowledge into finite parameter spaces
- Implications for model compression, pruning, and understanding what happens when models are reduced in size

## Related Concepts

- [[scaling-laws]] -- Empirical patterns where loss decreases as power law with model size
- [[mechanistic-interpretability]] -- Field studying internal representations of neural networks
- [[sparse-autoencoders]] -- Technique for probing superposed features
- [[feature-disentanglement]] -- Goal of separating superposed representations

## Sources

- [[announcing-neurips-2025-best-paper-awards]]
