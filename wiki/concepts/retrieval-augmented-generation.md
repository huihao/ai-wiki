---
created: 2026-04-27
updated: 2026-04-27
tags: [architecture, production, rag]
sources: 3
---

# Retrieval Augmented Generation (RAG)

## Definition

An architecture pattern for LLM applications where the model retrieves relevant documents or facts from an external knowledge base before generating a response. RAG grounds the LLM in specific, up-to-date, or private information that was not in its training data.

## Key Proponents / Critics

- **Pioneers**: The term was coined in a 2020 Meta paper; original authors later founded Contextual AI and introduced "RAG 2.0"
- **Practitioners**: [[welcome-to-llamaindex-ts|LlamaIndex]], [[comprehensive-rag-ollama-langchain|LangChain]], [[cohere]], [[Chroma]], [[Pinecone]], Weaviate
- **Key researchers**: Nils Reimers (SentenceTransformers), the ColBERT team at Stanford

## Related Concepts

- [[prompt-engineering]] — RAG is essentially dynamic context injection
- [[llm-agents]] — agents often use RAG as a tool
- [[graphrag]] — knowledge-graph-enhanced retrieval
- [[word-embeddings|Embeddings]] — vector representations that power semantic search
- [[retrieval-augmented-generation|Information Retrieval]] — RAG is fundamentally an IR problem with a 60-year history
- [[llms-practical-guide|Long Context LLMs]] — alternative to RAG; "RAG vs. Long Context" is a perennial debate
- [[supervised-fine-tuning|Fine-tuning LLMs]] — alternative or complement to RAG for domain adaptation
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-Driven Development]] — structured specs combined with RAG for AI coding
- [[goedel-code-prover-hierarchical-proof-search|Hybrid Search]] — keyword + vector + sparse + graph retrieval strategies
- [[agentic-engine-optimization-source|Agentic engine optimization]] — optimizing docs for agent consumption in RAG pipelines
- [[retrieval-augmented-generation|Cache augmented generation]] — pre-computing context into KV cache
- [[retrieval-augmented-generation|Contextual retrieval]] — adding document-level context to each chunk

## Sources

- [[ai-engineering|The 2025 AI Engineering Reading List]]
- [[spec-rag-ai-programmer]]
- [[ai-data-engineer-return-to-basics]]
- [[the-evolution-of-modern-rag-architectures]] — walkthrough from naive RAG to Agentic RAG

## Evolution

- **Pre-2020**: TF-IDF, BM25, FAISS, HNSW — classical IR techniques that underpin modern RAG
- **2020**: The "RAG" paper from Meta coins the term
- **2023–2024**: RAG becomes the default architecture for production LLM apps. Chunking strategies, rerankers, HyDE, and multimodal RAG are developed.
- **2025**: GraphRAG gains traction. The field debates whether long-context models (1M+ tokens) will make classical RAG obsolete.
