---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Linear Representations

## Definition

The linear representations hypothesis is the claim that many concepts and features inside neural networks are encoded as linear directions in activation space, meaning they can be identified, manipulated, and measured using linear probes or simple vector arithmetic. This hypothesis is central to mechanistic interpretability, suggesting that the internal representations of language models have more structure than a naive black-box view would imply.

## Key Aspects

- If a concept is linearly represented, a linear probe (a simple linear classifier trained on activations) can reliably detect whether the concept is present
- Linear representation implies that arithmetic on activation vectors can manipulate concepts: subtracting the "not" direction from a representation can flip its meaning
- Foundational work in interpretability has identified linear directions corresponding to sentiment, truth, toxicity, and other high-level features in language models
- The linear representation hypothesis enables practical techniques like representation engineering (directly editing internal activations to change model behavior)
- Controversy exists around the scope of linear representations: superposition (features packed more densely than dimensions) requires non-linear methods like sparse autoencoders to disentangle
- Implications for alignment: if safety-relevant concepts are linearly represented, they may be directly steerable without retraining

## Related Concepts

- [[mechanistic-interpretability]]
- [[interpretability]]
- [[superposition]]

## Sources

- [[mechanistic-interpretability]]
