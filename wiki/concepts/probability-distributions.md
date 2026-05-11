---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# probability-distributions

## Definition

A probability distribution is a mathematical function that assigns probabilities to all possible outcomes of a random variable, forming the foundational abstraction behind how large language models operate. LLMs are fundamentally probability engines: they learn the conditional distribution of the next token given all preceding tokens, then generate text by iteratively sampling from that distribution. Every technique used with LLMs -- prompt engineering, chain-of-thought, RAG, fine-tuning -- can be understood as a method of shaping or manipulating these underlying probability distributions.

## Key Aspects

- **Foundation of LLMs**: Language models learn probability distributions over tokens from massive text corpora via the principle "you know a word by the company it keeps"
- **Conditional Generation**: Text is produced by sampling one token at a time from P(next token | context), then appending that token to the context and recomputing
- **Temperature Controls Sampling**: Low temperature concentrates probability mass on high-probability tokens (predictable output); high temperature flattens the distribution (more creative/random)
- **Chain Rule of Probability**: Joint probability of a sequence decomposes as P(t1) x P(t2|t1) x P(t3|t1,t2) x ..., which is exactly how autoregressive models generate text
- **Compounding Errors**: Once an unlikely token is sampled, it becomes part of the context, potentially biasing future distributions toward incoherence
- **All Techniques Are Distribution Manipulation**: Prompt engineering shapes response type likelihood; chain-of-thought breaks large probabilistic leaps into smaller, higher-probability steps; RAG biases output toward retrieved facts; structured output constrains the token distribution to valid formats
- **Interactive Visualization**: Tools like the Block Multiverse visualization make these distributions tangible by showing probability mass across all possible future sequences as a branching tree

## Related Concepts

- [[sampling-from-distributions]] -- Drawing specific outcomes from probability models
- [[temperature-parameter]] -- Controlling randomness in sampling
- [[conditional-probability]] -- Distributions conditioned on additional context
- [[probability-mass-visualization]] -- Visualizing probability mass across possible continuations
- [[chain-of-thought]] -- Breaking large probabilistic steps into smaller ones

## Sources

- [[an-intuitive-guide-to-how-llms-work]] -- Probability-first explanation of LLM operation
- [[red-blob-games]] -- Interactive math visualizations including probability concepts
- [[block-multiverse-visualizations]] -- Interactive probability mass visualization for language models
