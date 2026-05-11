---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Cache-Augmented Generation

## Definition
Cache-Augmented Generation (CAG) is a retrieval architecture that pre-computes relevant context and loads it directly into the LLM's KV cache before inference, eliminating the runtime retrieval step of traditional RAG. Instead of querying a vector database at each request, CAG pre-loads the most relevant documents into the model's context window, enabling faster and more predictable inference.

## Key Aspects
- **Pre-computed context**: Unlike RAG which retrieves relevant chunks at query time, CAG pre-loads context into the KV cache, avoiding per-query retrieval latency
- **KV cache optimization**: The pre-loaded context is stored as key-value pairs in the transformer's attention cache, making it immediately available for attention computation without re-encoding
- **Limitations**: CAG is bounded by context window length, cannot dynamically update with fresh data (static cache), and may load irrelevant context wasting cache capacity
- **Hybrid CAG + RAG**: The practical approach is to cache rarely-changing, frequently-accessed data via CAG while using RAG for dynamic or rarely-accessed data
- **Predictability**: CAG provides more consistent latency than RAG since retrieval time is eliminated from the critical path
- **Security considerations**: Loading entire knowledge bases into the cache raises data isolation concerns, as all cached content is accessible to the model during generation

## Related Concepts
- [[retrieval-augmented-generation]] -- the traditional retrieval-augmented approach CAG seeks to improve upon
- [[kv-cache]] -- the transformer memory structure CAG optimizes
- [[context-window]] -- the limiting factor for how much context CAG can pre-load

## Sources
- [[evolution-modern-rag-architectures]]
