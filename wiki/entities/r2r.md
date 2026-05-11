---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, software-library]
sources: 1
---

# R2R (Reason-to-Retrieve)

## Summary

R2R (Reason to Retrieve) is an advanced, production-ready AI retrieval platform offering Agentic Retrieval-Augmented Generation (RAG) with a RESTful API. It provides multimodal content ingestion, hybrid search, configurable GraphRAG, and user/document management with an intuitive UI.

## Key Attributes

- **Type**: Production-ready AI retrieval platform
- **Features**: Multimodal ingestion, hybrid search, GraphRAG, deep research agent
- **Backend**: Postgres for unified relational and vector search
- **Interface**: Web UI (Co-Pilot) + Python/JavaScript SDKs
- **Repository**: https://github.com/SciPhi-AI/R2R

## Capabilities

- **Multimodal Ingestion**: Support for .txt, .pdf, .json, .png, .mp3, and more
- **Hybrid Search**: Combine vector search, full-text search, and GraphRAG
- **GraphRAG**: Automatic entity and relationship extraction for graph-based knowledge
- **Deep Research Agent**: Multi-step reasoning agent for complex queries
- **Collections & User Management**: Document organization and access control
- **RESTful API**: Production-ready backend services

## Related Entities

- [[crawl4ai|Crawl4AI]] — Data source feeding into R2R
- [[postgres|PostgreSQL]] — Unified backend database
- [[pydantic|Pydantic]] — Used for structured data validation

## Related Concepts

- [[graphrag|GraphRAG]] — Core feature for graph-based retrieval
- [[hybrid-search|Hybrid Search]] — Multiple search modalities combined
- [[multimodal-rag|Multimodal RAG]] — Support for diverse content formats
- [[entity-extraction|Entity Extraction]] — Automatic entity identification
- [[relationship-extraction|Relationship Extraction]] — Connection identification
- [[deep-research-agent|Deep Research Agent]] — Multi-hop reasoning capability

## Sources

- [[turn-website-into-graph-knowledge-base|Turn Any Website into a Graph Knowledge Base with Co-Pilot]]

## Contradictions / Open Questions

- How does GraphRAG performance compare to vector-only RAG?
- What graph algorithms enable multi-hop reasoning?
- What are the scalability limits for document ingestion?