---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# MLP Layer

## Definition

An MLP (Multi-Layer Perceptron) layer within a transformer is a feed-forward neural network that processes each token's representation after attention has routed information between tokens. It refines token representations by expanding them to a higher-dimensional space, applying a nonlinear activation function, and projecting back down, acting as the computational workhorse of each transformer block.

## Key Aspects

- **Structure**: Expands embedding dimensions 4x (e.g., 768 to 3,072), applies GELU activation, then projects back (3,072 to 768)
- **Role in transformer block**: Attention decides which tokens to focus on; the MLP layer does the actual information processing on those focused representations
- **GELU activation**: Smooth activation function preferred over ReLU in transformers — positive values pass through mostly unchanged, negative values are smoothly reduced toward zero
- **4x expansion ratio**: Empirically determined to work well; creates sufficient representational capacity for complex transformations before compressing back
- **Two linear transformations**: First projection (c_fc) expands dimensions, second projection (c_proj) compresses back, with activation between them
- **Complementary to attention**: While attention handles token-to-token communication, MLP handles within-token feature transformation
- **GPT-2 example**: 768-dim input expanded to 3,072, GELU applied, projected back to 768 — repeated across all 12 transformer blocks
- **Parameter count**: Dominates model size — MLP layers contain roughly 2/3 of all transformer parameters

## Related Concepts

- [[mlp-multilayer-perceptron]]
- [[transformers]]
- [[gelu]]
- [[attention-mechanisms]]

## Sources

- [[part3-model-architecture-building-llm-from-scratch-rust]]
