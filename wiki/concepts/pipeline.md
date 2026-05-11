---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Pipeline

## Definition

A pipeline is a sequence of connected processing stages where the output of one stage becomes the input of the next, used in both software engineering (CI/CD, data processing) and AI systems (RAG pipelines, inference pipelines, training pipelines) to organize complex workflows into manageable, testable components.

## Key Aspects

- RAG pipelines from scratch involve: document ingestion, chunking, embedding generation, vector storage, query processing, retrieval, and generation
- Each pipeline stage should be independently testable and replaceable -- swapping the embedding model or chunking strategy shouldn't require rewriting the entire pipeline
- Pipeline parallelism in GPU computing divides a model across layers, with each layer processed on a different device (though inefficient for inference due to pipeline bubbles)
- Modern inference engines (vLLM, TGI, SGLang) implement pipeline stages: tokenization, prompt processing, KV cache management, and token generation
- Training pipelines integrate data loading, preprocessing, forward pass, loss computation, backward pass, and weight updates into coordinated workflows
- SARA (Scalable Architecture for RAG Applications) and similar frameworks provide modular pipeline components that can be composed and reconfigured
- Pipeline design decisions (sequential vs. parallel stages, batch vs. streaming) significantly impact throughput, latency, and resource utilization

## Related Concepts

- [[multimodal-rag]]

## Sources

- [[rag-pipelines-from-scratch]]
- [[sara-zan]]
