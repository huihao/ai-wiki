---
created: 2026-04-29
updated: 2026-05-09
tags: [llm, probability]
sources: 2
---

# Conditional Probability Distributions

## Definition
A conditional probability distribution describes the probability of each possible outcome given that some other event or condition has already occurred. In the context of LLMs, this is the core mechanism: at each generation step, the model computes a probability distribution over all possible next tokens conditioned on the entire preceding context.

## Key Aspects
- LLMs are fundamentally "fancy probability engines" that model conditional distributions of tokens
- The distribution shifts with every new token added to the context, making generation dynamic
- Context window provides the conditioning information; longer context enables richer conditions
- Temperature parameter controls how deterministic or stochastic the sampling from this distribution is
- Prompt engineering works by shaping the conditional distribution toward desired response types
- RAG systems bias the conditional distribution toward specific retrieved information
- The chain "sample token, append to context, recompute distribution" drives all autoregressive generation

## Related Concepts
- [[compounding-errors-in-llms]]
- [[cross-entropy]]

## Sources
- [[an-intuitive-guide-to-how-llms-work]]
- [[llm-fundamentals]]
