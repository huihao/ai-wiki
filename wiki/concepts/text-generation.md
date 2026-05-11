---
created: 2026-04-29
updated: 2026-05-09
tags: [llm]
sources: 2
---

# Text Generation

## Definition

Text generation is the process by which language models produce natural language output by iteratively sampling tokens from conditional probability distributions. It is the core inference task for LLMs, powering applications from chatbots and code assistants to translation, summarization, and creative writing.

## Key Aspects

- Autoregressive generation produces one token at a time, each conditioned on all previously generated tokens, building output sequentially
- Hugging Face Transformers provides the generate() method with multiple decoding strategies: greedy, beam search, top-k, top-p (nucleus), and temperature-scaled sampling
- Pipeline abstraction simplifies text generation for common tasks, wrapping tokenization, generation, and detokenization into a single call
- RAG (Retrieval-Augmented Generation) enhances text generation by injecting retrieved context before generation, biasing output probabilities toward relevant facts
- Fine-tuning nudges the model's probability distribution toward domain-specific vocabulary and patterns without changing the generation mechanism
- Structured output constraints (JSON mode, grammar-based decoding) shape the allowable token space during generation to enforce format compliance
- Streaming generation enables real-time output delivery by yielding tokens as they are sampled, reducing time-to-first-token for interactive applications
- Decoding strategy choice involves trade-offs: greedy is fastest but repetitive, beam search is highest quality but slowest, top-p/top-k balance diversity and coherence

## Related Concepts

- [[autoregressive-models]]
- [[temperature-parameter]]
- [[retrieval-augmented-generation]]

## Sources

- [[transformers-hugging-face]]
- [[tuning-local-llms-with-rag]]
