---
created: 2026-04-29
updated: 2026-05-09
tags: [llm, probability]
sources: 2
---

# Sampling from Distributions

## Definition

Sampling from distributions is the process of selecting discrete outcomes from a probability distribution, which is the fundamental mechanism by which language models generate text. Given a conditional probability distribution over possible next tokens, sampling determines which token is actually produced, with the choice of sampling strategy controlling the trade-off between creativity and determinism.

## Key Aspects

- LLMs generate text by iteratively sampling from conditional distributions: sample a token, add it to context, compute new distribution, repeat
- Greedy sampling (always picking the highest-probability token) produces repetitive, deterministic text
- Temperature scaling adjusts the distribution shape: low temperature sharpens (more deterministic), high temperature flattens (more random)
- Temperature controls the trade-off: always picking most probable creates repetitive text; sampling introduces needed variability
- Once an unlikely token is sampled, it becomes context that shifts future distributions, creating compounding errors
- The word with the highest conditional probability is not always the best choice -- diversity matters for coherent generation
- Training builds sophisticated models of word relationships without explicit rules, but sampling determines how those models produce output
- Common techniques (prompt engineering, chain-of-thought, RAG) work by reshaping the distributions from which tokens are sampled

## Related Concepts

- [[probability-distributions]]
- [[sampling-strategies]]
- [[temperature-parameter]]
- [[top-k-sampling]]
- [[nucleus-sampling]]

## Sources

- [[an-intuitive-guide-to-how-llms-work]]
- [[llm-fundamentals]]
