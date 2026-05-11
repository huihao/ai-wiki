---
created: 2026-04-29
updated: 2026-05-09
tags: [ai, nlp]
sources: 1
---

# LLM

## Definition

A Large Language Model (LLM) is a neural network trained on massive text datasets that can generate, understand, and reason over natural language. LLMs are the core engine powering modern Retrieval Augmented Generation (RAG) systems, which address key LLM limitations including hallucinations, fixed context windows, and lack of access to non-public or real-time data.

## Key Aspects

- RAG emerged specifically to solve LLM limitations: hallucinations, context window constraints, and inability to access proprietary data
- Naive RAG uses chunking, embedding, vector storage, retrieval, and generation but is often insufficient for production use
- Advanced techniques improve accuracy through query alteration, reranking, and embedding model fine-tuning
- Contextual Retrieval (Anthropic) situates chunks within whole-document context before embedding, combining contextual embeddings with TF-IDF
- Cache Augmented Generation pre-computes context into KV cache but is limited by context length and security concerns
- Agentic RAG adds autonomous data source routing and reflection loops for iterative answer improvement
- MCP (Model Context Protocol) by Anthropic can extend Agentic RAG with standardized tool interfaces

## Related Concepts

- [[llm-as-judge]]
- [[llm-evaluation-approach]]
- [[llm-training-cost]]
- [[longmemeval]]

## Sources

- [[evolution-modern-rag-architectures]]
