---
created: 2026-04-28
updated: 2026-05-09
tags: [interpretability, mechanistic-interpretability, neural-network]
sources: 0
---

# Sparse autoencoders

## Definition

Sparse autoencoders (SAEs) are neural network architectures that learn compressed, interpretable representations of a model's internal activations by enforcing sparsity constraints on the hidden layer. In the context of large language models, SAEs are applied to the activations of transformer layers to decompose them into a larger set of interpretable features, where only a small number of features are active for any given input. This makes SAEs a key tool in mechanistic interpretability, enabling researchers to identify and understand individual concepts encoded in a model's representations.

## Key Proponents / Critics

- [[anthropic]] — leading researcher in applying sparse autoencoders to interpret Claude's internal representations
- [[christopher-olah]] — Anthropic researcher and pioneer of neural network interpretability who champions SAEs

## Related Concepts

- [[mechanistic-interpretability]] — the broader field that SAEs serve as a primary tool for
- [[autoencoders]] — the base architecture that sparse autoencoders extend with sparsity constraints
- [[neural-network-interpretability]] — SAEs are a key method for understanding neural network internals
- [[representation-superposition]] — the problem SAEs solve: features in neural networks are mixed together in superposition
- [[interpretability]] — the overarching goal that sparse autoencoders advance
- [[feature-visualization]] — a complementary technique for understanding model internals
- [[embeddings]] — SAEs operate on and produce interpretable embedding-space representations
- [[activation-function]] — SAEs decompose post-activation vectors into sparse features

## Related Entities

- [[anthropic]] — published landmark work on applying SAEs to Claude for feature identification
- [[openai]] — also conducts mechanistic interpretability research using sparse autoencoders

## Sources

- No source pages currently link to this concept

## Evolution

- **2017**: Sparse autoencoders are introduced in the context of representation learning
- **2022**: Cunningham et al. apply SAEs to GPT-2 for interpreting neuron-level features
- **2023**: Anthropic publishes groundbreaking work applying SAEs to Claude, identifying millions of interpretable features
- **2024**: OpenAI and Anthropic both expand SAE research, discovering features related to safety-relevant behaviors
- **2025**: SAEs become a standard tool in the mechanistic interpretability toolkit
