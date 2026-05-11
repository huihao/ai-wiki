---
created: 2026-04-27
updated: 2026-04-27
tags: [entity, framework, rag, typescript, python]
sources: 1
---

# LlamaIndex

## Overview

A leading open-source framework for "context engineering" — building LLM applications that connect models to private or domain-specific data. Founded by Jerry Liu. Provides the data layer between LLMs and external knowledge sources.

## Core Capabilities

- **Data connectors**: Ingest from APIs, files, SQL databases, and dozens of sources
- **Indexes & retrievers**: Store and retrieve data optimized for LLM consumption
- **Agents and Engines**: Query interfaces with chat and reasoning capabilities over data
- **Workflows**: Fine-grained orchestration of multi-step, event-driven processes
- **Observability**: Integrations for tracing and evaluation

## Two Implementations

| | LlamaIndex (Python) | LlamaIndex.TS |
|---|---|---|
| **Language** | Python | TypeScript |
| **Maturity** | More mature, larger ecosystem | Rapidly growing |
| **Runtimes** | Python | Node.js, Deno, Bun, Cloudflare Workers |
| **Use case** | Research, data pipelines, complex RAG | Web apps, edge deployment, TypeScript stacks |

## Key Concepts

- **Context engineering**: Injecting the right pieces of data into the LLM prompt at the right time. Goes beyond RAG to include agent memory, extraction, summarization.
- **RAG (Retrieval-Augmented Generation)**: The most popular context engineering pattern — retrieve relevant documents, then generate answers.
- **LlamaCloud**: Managed parsing (LlamaParse), extraction (LlamaExtract), and indexing services with free tiers.

## Related Concepts

- [[retrieval-augmented-generation]] — core pattern LlamaIndex implements
- [[llm-agents]] — agents built with LlamaIndex tools
- [[llama|Secure RAG]] — securing RAG with fine-grained authorization
- [[dspy-framework|DSPy]] — alternative declarative framework for LLM programming
- [[comprehensive-rag-ollama-langchain|LangChain]] — similar framework (competitor)

## Sources

- [[welcome-to-llamaindex-ts|Welcome to LlamaIndex.TS]] — official TypeScript documentation
- [[llama|Build a Secure RAG Agent]] — tutorial using LlamaIndex with Auth0 FGA
