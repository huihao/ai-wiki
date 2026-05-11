---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# MLP (Multi-Layer Perceptron)

## Definition

A Multi-Layer Perceptron (MLP) is a class of feedforward artificial neural network composed of multiple layers of interconnected neurons, where each layer applies a linear transformation followed by a nonlinear activation function. In the context of transformer architectures, the MLP serves as the within-token processing component that refines representations after attention has routed information between tokens.

## Key Aspects

- **Three key transformer components**: Embedding (token + positional encoding), Transformer Block (multi-head attention + MLP), and Output Probabilities
- **MLP expansion and compression**: Expands 768 dimensions to 3,072, applies GELU activation, then contracts back to 768 (in GPT-2)
- **Feed-forward nature**: Unlike attention, MLPs process each token independently — the same MLP weights apply to every position
- **Nonlinearity provider**: The GELU activation between linear layers introduces nonlinearity, enabling the network to learn complex function approximations
- **Role in generation**: Together with attention, MLPs transform token representations to predict the next token's probability distribution
- **Temperature interaction**: MLP outputs feed into softmax where temperature controls the randomness of token selection (<1 deterministic, >1 creative)
- **Auxiliary components**: Layer normalization, dropout, and residual connections work alongside MLPs to stabilize training and improve gradient flow

## Related Concepts

- [[mlp-layer]]
- [[transformers]]
- [[neural-networks]]
- [[gelu]]

## Sources

- [[transformer-explainer-visually-explained]]
