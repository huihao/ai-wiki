---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# The Evolution of Modern RAG Architectures

## Metadata

- **Author**: Aurimas Griciūnas
- **Date**: 2025-04-07
- **URL**: https://www.newsletter.swirlai.com/p/the-evolution-of-modern-rag-architectures?ref=dailydev
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/rag/The evolution of Modern RAG Architectures.md

## Summary

A comprehensive overview of RAG (Retrieval Augmented Generation) system evolution from Naive RAG through Advanced techniques to Agentic RAG. The article explains how each architectural iteration addressed limitations of previous approaches, covering preprocessing, retrieval, generation components, and emerging techniques like Contextual Retrieval, Cache Augmented Generation, and Agentic RAG with reflection and data source routing.

## Key Takeaways

- RAG emerged to solve LLM limitations: hallucinations, context windows, lack of non-public data access
- Naive RAG: chunking, embedding, vector storage, retrieval, generation—often insufficient for real business problems
- Advanced techniques improve accuracy: query alteration, reranking, embedding model fine-tuning
- Contextual Retrieval: situate chunks within whole documents before embedding, combine contextual + TF-IDF
- Cache Augmented Generation: pre-compute context into KV cache—limited by context length, security, static cache issues
- Agentic RAG adds data source routing and reflection loops for iterative answer improvement
- MCP (Model Context Protocol) by Anthropic can supercharge Agentic RAG development
- Simpler architectures preferable; complexity brings evaluation, latency, cost challenges

## Entities Mentioned

- [[anthropic|Anthropic]] — Company proposing Contextual Retrieval and MCP
- [[vector-databases|Vector Databases]] — Storage for embeddings in Naive RAG
- [[embedding-models|Embedding Models]] — Models transforming text to vectors
- [[tf-idf|TF-IDF]] — Traditional information retrieval technique used in Contextual Retrieval
- [[model-context-protocol|Model Context Protocol]] — Anthropic's protocol for agentic applications
- [[llm|LLM]] — Large Language Models powering RAG generation

## Concepts Mentioned

- [[rag|Retrieval Augmented Generation]] — Core technique integrating external data with LLMs
- [[naive-rag|Naive RAG]] — Basic RAG implementation with chunking and vector search
- [[contextual-retrieval|Contextual Retrieval]] — Embedding chunks with document context
- [[cache-augmented-generation|Cache Augmented Generation]] — Pre-computing context in KV cache
- [[agentic-rag|Agentic RAG]] — RAG with autonomous routing and reflection
- [[query-alteration|Query Alteration]] — Rewriting/expanding queries for better retrieval
- [[reranking|Reranking]] — Second-stage ranking with heavier models
- [[data-source-routing|Data Source Routing]] — Agents choosing which sources to query

## Raw Notes

Naive RAG preprocessing: split corpus into chunks, embed with embedding model, store in vector DB. Retrieval: embed query, run ANN search, map vectors to text chunks, pass to LLM with prompt.

Advanced techniques address Naive RAG limitations. Query rewriting fixes grammar, simplifies. Query expansion creates variations for broader retrieval. Reranking uses larger models on more documents. Fine-tuning embedding models for specific domains like medical data.

Contextual Retrieval steps: chunk document, generate context for each chunk with LLM, combine chunk + context, pass through TF-IDF embedder AND LLM embedder, store both. Retrieval: hybrid search (ANN + TF-IDF), rank fusion, rerank, generate.

CAG limitations: doesn't solve long context inaccuracies, security issues with loading entire knowledge bases, static cache prevents fresh data updates. Practical fusion of CAG and RAG: cache rarely-changing often-hit data, retrieve dynamic data.

Agentic RAG workflow: analyze query (rewrite, decide if data needed), route to data sources (real-time user data, internal docs, web), retrieve and rerank, compose answer, analyze/summarize/evaluate, if insufficient rewrite and repeat.

## Questions / Follow-ups

- What are the evaluation metrics comparing Naive, Contextual, and Agentic RAG?
- How does MCP specifically improve Agentic RAG implementations?
- What are the latency impacts of reflection loops in Agentic RAG?
- How do cost profiles compare across different RAG architectures?