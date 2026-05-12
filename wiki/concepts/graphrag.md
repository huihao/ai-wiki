---
created: 2026-04-28
updated: 2026-05-09
tags: [deep-learning, knowledge-graph, rag, retrieval]
sources: 3
---

# GraphRAG

## Definition
GraphRAG (Graph-based Retrieval-Augmented Generation) is an enhanced RAG architecture that augments traditional vector-based retrieval with knowledge graph structures to improve context assembly and multi-hop reasoning. Rather than retrieving isolated text chunks by vector similarity, GraphRAG constructs a knowledge graph from source documents — extracting entities, relationships, and community structures — and uses graph traversal and community summarization to assemble richer, more connected context for the LLM. This enables the system to answer questions that require synthesizing information scattered across multiple documents and following chains of relationships.

## Key Proponents / Critics
- [[microsoft-research]] — released the original GraphRAG framework and paper (Edge et al., 2024)
- Darren Edge — lead author of the Microsoft GraphRAG paper
- Neo4j — provides graph database infrastructure for GraphRAG implementations

## Related Concepts
- [[retrieval-augmented-generation]] — GraphRAG extends standard RAG with graph-based retrieval
- [[rag-architecture]] — GraphRAG is a specific architectural pattern within the RAG paradigm
- [[knowledge-graph]] — GraphRAG constructs and queries knowledge graphs for retrieval
- [[knowledge-graph]] — the graph structure that GraphRAG builds from source documents
- [[entity-extraction]] — a key step in building the knowledge graph for GraphRAG
- [[relationship-extraction]] — extracting edges/relationships between entities in the graph
- [[multi-hop-reasoning]] — GraphRAG enables answering questions that require following multiple relationship hops
- [[chunking-strategy]] — GraphRAG's community-based summarization is an alternative to traditional chunking
- [[agentic-rag]] — GraphRAG can be combined with agentic retrieval strategies

## Related Entities
- [[microsoft-research]] — developed and released GraphRAG
- [[langchain]] — provides GraphRAG integration via LlamaIndex and LangChain frameworks
- [[llamaindex]] — supports knowledge graph construction and querying for GraphRAG

## Sources
- [[advanced-techniques-rag]] — discusses graph-based retrieval approaches in advanced RAG
- [[turn-website-into-graph-knowledge-base]] — covers building knowledge graphs from web content
- [[rag-pipelines-from-scratch]] — discusses GraphRAG as an advanced RAG pattern

## Evolution
- **2024**: Microsoft Research publishes "From Local to Global: A Graph RAG Approach" (Edge et al.)
- **2024**: Microsoft releases the open-source GraphRAG framework on GitHub
- **2024**: LlamaIndex and LangChain add GraphRAG integration modules
- **2024**: LightRAG and nano-graphrag emerge as lighter-weight alternatives
- **2025**: GraphRAG adoption grows as enterprises seek to improve multi-document reasoning in RAG systems
