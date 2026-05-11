---
created: 2026-04-28
updated: 2026-05-09
tags: [caching, inference, llm, optimization]
sources: 2
---

# Prefix Caching

## Definition
Prefix caching is an LLM inference optimization that stores the computed key-value (KV) states of shared prompt prefixes so that subsequent requests sharing the same prefix can skip the expensive prefill computation. In practice, many requests share common system prompts, few-shot examples, or document headers. By caching their KV states, the server avoids re-processing these tokens, reducing first-token latency and GPU compute. This is especially valuable for multi-turn conversations and RAG pipelines where large context blocks are reused across requests.

## Key Proponents / Critics
- [[vllm]] — pioneered automatic prefix caching with its "Automatic Prefix Caching" (APC) feature
- Sglang — supports prefix caching as part of its RadixAttention system
- [[anthropic-api]] — Anthropic's prompt caching feature exposes prefix caching to API users

## Related Concepts
- [[kv-cache]] — prefix caching is built on top of the KV cache mechanism, extending it across requests
- [[prompt-caching]] — the API-level abstraction that exposes prefix caching to end users
- [[continuous-batching]] — prefix caching integrates with continuous batching for efficient serving
- [[inference-optimization]] — prefix caching is one of the key inference optimization techniques
- [[context-window]] — prefix caching reduces redundant computation within and across context windows
- [[chunked-prefill]] — complementary technique that breaks long prefill into chunks for scheduling

## Related Entities
- [[vllm]] — implements prefix caching via hash-based block matching
- Sglang — implements prefix caching via RadixAttention with a radix tree structure
- [[anthropic-api]] — offers prompt caching for Claude models
- [[openai]] — offers automatic prompt caching for GPT models

## Sources
- [[inside-vllm]] — covers vLLM's prefix caching implementation and block management
- [[the-state-of-llm-reasoning-model-inference]] — discusses prefix caching as an inference optimization

## Evolution
- **2023**: vLLM introduces Automatic Prefix Caching, matching shared prefixes via block hashes
- **2023**: SGLang introduces RadixAttention, using a radix tree for efficient prefix matching
- **2024**: Anthropic launches prompt caching for Claude, enabling API-level prefix reuse
- **2024**: OpenAI adds automatic prompt caching to the ChatCompletions API
- **2024**: SGLang extends prefix caching with constraint-guided caching for structured generation
