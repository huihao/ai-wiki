---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Circuit Analysis

## Definition

Circuit analysis in mechanistic interpretability is the method of reverse-engineering neural network behavior by tracing how specific neurons, attention heads, and MLP layers compose to implement particular functions. Rather than treating models as black boxes, circuit analysis identifies subgraphs of computation (circuits) that are responsible for specific capabilities or behaviors.

## Key Aspects

- **Induction Heads**: Attention head pairs that implement in-context learning by copying patterns from earlier tokens
- **Superposition**: Features are represented as linear combinations of neurons, allowing networks to encode more features than they have neurons
- **Feature Visualization**: Techniques to reveal what individual neurons and circuits are detecting
- **Activation Patching**: Swapping activations between inputs to isolate which components are causally responsible for a behavior
- **End-to-End Reversal**: Tracing a circuit from output logits all the way back to input tokens
- **Graph Structure**: Circuits are subgraphs within the larger network, connected by edges representing information flow
- **Phase Transitions**: Circuit formation can appear suddenly during training, not gradually

## Related Concepts

- [[mechanistic-interpretability]]
- [[linear-representations]]
- [[alignment]]
- [[interpretability]]

## Sources

- [[mechanistic-interpretability]]
