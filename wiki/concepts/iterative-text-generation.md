---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Iterative Text Generation

## Definition

Iterative text generation is the process by which LLMs produce text one token at a time, where each newly generated token is appended to the context and fed back into the model to compute the next probability distribution. This autoregressive loop -- sample a word, add it to context, compute new distribution, repeat -- is the fundamental mechanism behind all LLM text output, from chatbots to code generators.

## Key Aspects

- **Autoregressive Loop**: At each step, the model takes all previous tokens as input and outputs a probability distribution over the next token; one token is sampled and appended
- **Compounding Errors**: Once an unlikely word is sampled, it becomes part of the context, potentially steering subsequent generation toward incoherence; errors compound over long sequences
- **Temperature Controls**: Low temperature favors high-probability tokens (predictable output); high temperature introduces randomness (creative but potentially incoherent output)
- **Context Window Limit**: The maximum text length the model can process; once the context is full, early tokens may be truncated, causing the model to "forget" earlier conversation
- **Sampling Strategies**: Top-k (restrict to k most likely tokens), top-p (nucleus sampling), and temperature together control the diversity-coherence trade-off
- **Probability Manipulation**: All common LLM techniques (prompt engineering, chain-of-thought, RAG, fine-tuning) work by shaping the probability distributions that drive this iterative process
- **Chat as Growing Context**: Chat interfaces treat the entire conversation history as expanding context for the next generation step

## Related Concepts

- [[gpt-2]]
- [[hallucination]]
- [[loss-function]]
- [[kl-divergence]]

## Sources

- [[an-intuitive-guide-to-how-llms-work]]
- [[llm-fundamentals]]
