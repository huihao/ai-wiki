---
created: 2026-04-28
updated: 2026-04-28
tags: [source, tutorial, rag, haystack]
sources: 1
---

# RAG Pipelines from Scratch

## Metadata

- **Author**: Sara Zan
- **Date**: 2023-10-27
- **URL**: https://www.zansara.dev/posts/2023-10-27-haystack-series-rag/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/RAG Pipelines from scratch.md`

## Summary

A comprehensive tutorial by Sara Zan on building Retrieval-Augmented Generation (RAG) pipelines using Haystack 2.0. Progresses from basic LLM queries to production-ready RAG systems with Elasticsearch, demonstrating how to ground LLMs with relevant, up-to-date information without fine-tuning.

## Key Takeaways

### What is RAG?
- RAG was first defined in a Meta 2020 paper to solve LLM limitations: limited knowledge, hallucination, inability to cite sources
- Provides relevant context snippets alongside user questions
- Grounds LLMs in reality without costly fine-tuning
- System consists of two parts: retriever finds relevant snippets, LLM generates coherent answer

### Haystack 2.0 Components

**Generators (LLM Components)**
- OpenAIGenerator for GPT-3.5/GPT-4 models
- HuggingFaceLocalGenerator for local models
- HuggingFaceTGIGenerator for HuggingFace inference
- Supports streaming callbacks, custom parameters

**PromptBuilder (Structured Prompts)**
- Jinja2 templating syntax with {{ variable }} interpolation
- Enables complex prompts from simpler schemas
- Can chain multiple PromptBuilder instances
- Supports for loops, if statements, filters

**Retrievers (Document Search)**
- InMemoryBM25Retriever: fast exact word matching
- InMemoryEmbeddingRetriever: semantic similarity
- ElasticsearchBM25Retriever: production-ready backend
- Supports metadata filtering with top_k parameter

### Pipeline Evolution

1. **Simple Generative Pipeline**: PromptBuilder → OpenAIGenerator
2. **Cheating Pipeline**: Provide context directly in prompt template
3. **True RAG Pipeline**: Retriever → PromptBuilder → LLM
4. **Production Pipeline**: Swap to Elasticsearch for scalability

### Technical Details

- BM25 retrieval is fast but doesn't handle synonyms/spelling mistakes
- Jinja2 can iterate over documents: {% for document in documents %}
- Elasticsearch offers identical API to InMemoryDocumentStore
- Production scaling requires backend upgrade, minimal code changes

## Example Application

Tutorial builds a world countries knowledge base answering obscure questions:
- Example: Republic of Rose Island (defunct micronation)
- LLM fails without context (guesses Italian, but actual language was Esperanto)
- RAG pipeline retrieves relevant document and answers correctly

## Entities Mentioned

- [[sara-zan]] — Author, Haystack contributor
- [[haystack]] — deepset's NLP framework for RAG
- [[meta-ai]] — Originators of RAG concept (2020 paper)
- [[openai]] — GPT model provider
- [[elasticsearch]] — Search engine and production document store
- [[deepset]] — Company behind Haystack

## Concepts Mentioned

- [[rag]] — Retrieval-Augmented Generation
- [[retrievers]] — Document retrieval mechanisms (BM25, embedding)
- [[generators]] — LLM components in Haystack
- [[prompt-builder]] — Template-based prompt construction
- [[bm25]] — Sparse retrieval algorithm for exact word matching
- [[elasticsearch]] — Production document store and search engine
- [[document-stores]] — Storage backends for Haystack documents
- [[jinja2]] — Python templating language for prompts
- [[pipeline]] — Haystack's component orchestration system

## Code Example

```python
from haystack import Pipeline
from haystack.components.retrievers.in_memory import InMemoryBM25Retriever
from haystack.components.builders import PromptBuilder
from haystack.components.generators import OpenAIGenerator

template = """
Given the following information, answer the question.
Context:
{% for document in documents %}
{{ document.content }}
{% endfor %}
Question: What's the official language of {{ country }}?
"""

pipe = Pipeline()
pipe.add_component("retriever", InMemoryBM25Retriever(document_store=docstore))
pipe.add_component("prompt_builder", PromptBuilder(template=template))
pipe.add_component("llm", OpenAIGenerator(api_key=api_key))
pipe.connect("retriever", "prompt_builder.documents")
pipe.connect("prompt_builder", "llm")
```

## Questions / Follow-ups

- How has Haystack 2.0 evolved since this beta-era tutorial (version 2.0.0b5)?
- What are the performance differences between BM25 and embedding retrieval?
- How does Elasticsearch compare to other vector databases like Weaviate or Qdrant?
