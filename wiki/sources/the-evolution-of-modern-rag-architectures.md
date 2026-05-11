---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# The evolution of Modern RAG Architectures

## Metadata

- **Author**: Aurimas Griciūnas
- **Date**: 2025-04-07
- **URL**: https://www.newsletter.swirlai.com/p/the-evolution-of-modern-rag-architectures
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/rag/The evolution of Modern RAG Architectures.md`

## Summary

A newsletter walkthrough of RAG evolution from naive implementations through advanced techniques (query rewriting, reranking, contextual retrieval) to Cache Augmented Generation (CAG) and finally Agentic RAG with data source routing and reflection.

## Key Takeaways

- **Naive RAG** solves hallucinations, limited context, and lack of access to private data, but accuracy is often too low for real business problems.
- **Advanced techniques**: query rewriting/expansion, reranking with larger models, fine-tuning embedding models for domain-specific retrieval.
- **Contextual Retrieval** (Anthropic): situate each chunk within the full document using an LLM, then embed with both TF-IDF and semantic encoders; combine via rank fusion.
- **Cache Augmented Generation (CAG)**: pre-compute external context into the KV cache. Promising but limited by context-length inaccuracies, data security, and static cache updates.
- **Agentic RAG** adds data source routing and reflection: the agent decides which sources to query, evaluates answer quality, and can rewrite/retry if needed.
- MCP (Model Context Protocol) can supercharge Agentic RAG by standardizing tool interfaces.

## Entities Mentioned

- [[aurimas-griciunas|Aurimas Griciūnas]] — Author of SwirlAI Newsletter.
- [[anthropic]] — Introduced Contextual Retrieval.
- [[openai]] — GPT models referenced.

## Concepts Mentioned

- [[retrieval-augmented-generation]] — Core technique.
- [[comprehensive-rag-ollama-langchain|Naive RAG]] — Basic chunk + embed + retrieve + generate pipeline.
- [[grouped-query-attention|Query rewriting]] — Using an LLM to reformulate queries for better retrieval.
- [[anki|Reranking]] — Reordering retrieved documents with a heavier model.
- [[retrieval-augmented-generation|Contextual retrieval]] — Adding document-level context to each chunk.
- [[retrieval-augmented-generation|Cache augmented generation]] — Storing context in the KV cache.
- [[agentic-rag]] — Agent-driven routing and reflection over retrieval.
- [[model-context-protocol]] — Standard protocol for agent tools.
- [[vector-embeddings-mallya|Vector database]] — Storage for embeddings.
- [[goedel-code-prover-hierarchical-proof-search|Approximate nearest neighbor search]] — Retrieval mechanism.

## Raw Notes

- Prompt caching can reduce costs for contextual retrieval's expensive chunk-situating step.
- A practical CAG+RAG fusion is described: cache rarely-changing data, retrieve dynamic data.
- Challenges of complex RAG: evaluation difficulty, increased latency, higher cost.

## Questions / Follow-ups

- How does Agentic RAG compare to fully agentic systems that generate their own retrieval tools?
- What are the best practices for evaluating end-to-end RAG accuracy?
