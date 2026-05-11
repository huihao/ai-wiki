---
created: 2026-04-28
updated: 2026-04-28
tags: [source, rag, visual-rag, agents, smolagents]
sources: 1
---

# DeepSearch Using Visual RAG in Agentic Frameworks 🔎

## Metadata

- **Author**: Paul Teiletche, Manuel Faysse (ILLUIN / HuggingFace)
- **Date**: 2025-03-21
- **URL**: https://huggingface.co/blog/paultltc/deepsearch-using-visual-rag
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/DeepSearch Using Visual RAG in Agentic Frameworks 🔎.md`

## Summary

A tutorial demonstrating how to build a Visual RAG agent using ColPali/ColQwen2 for document image embedding and smolagents for agentic orchestration. Shows how agentic frameworks overcome traditional RAG limitations like query sensitivity and single-hop retrieval.

## Key Takeaways

- **Visual RAG** eliminates OCR and document layout detection pipelines by directly embedding document page screenshots with Vision-Language Models like ColPali/ColQwen2.
- Traditional RAG limitations: query sensitivity (phrasing matters too much) and single-hop retrieval (can't synthesize across multiple sections).
- **Agentic RAG** addresses these by: dynamically reformulating queries into sub-queries, iterative multi-round retrieval, and external tool use (web search, code execution).
- Built a custom `VisualRAGTool` inheriting from `smolagents.Tool` with indexing and search capabilities using ColQwen2 + GPT-4o-mini.
- **DeepSearch framework**: QA Agent orchestrates Visual RAG tool + Web Verifier Agent (cross-references with confidence scores) + Formatter Agent (structures output).
- The agentic approach produces much more detailed, verified answers with source citations compared to raw RAG.
- Trade-offs: agentic systems are slower, can get stuck in loops, and are highly sensitive to prompt variations.

## Entities Mentioned

- [[huggingface-skills|HuggingFace]] — platform and smolagents framework
- ILLUIN — company behind the visual RAG tool
- [[openai]] — GPT-4o-mini and GPT-4o model providers
- [[colpali]] / ColQwen2 — vision-language document retrieval models

## Concepts Mentioned

- [[deepsearch-visual-rag-agentic|Visual RAG]] — retrieval using document image embeddings directly
- [[agentic-rag]] — RAG enhanced with agent reasoning and tool use
- [[deepsearch-visual-rag-agentic|DeepSearch]] — multi-step research agent framework
- [[retrieval-augmented-generation|Single-Hop Retrieval]] — limitation of standard RAG
- [[colpali]] — VLM-based document retrieval model
- [[getting-started-with-smolagents|smolagents]] — lightweight agent framework from HuggingFace

## Raw Notes

- Tool available on HuggingFace Spaces: `vidore/visual-rag-tool`
- Uses DuckDuckGoSearchTool for web verification
- The verifier assigns confidence scores (high/medium/low/unverified)
- GPT-4o used for orchestrator, GPT-4o-mini for verifier/formatter subagents

## Questions / Follow-ups

- How does this compare to text-based RAG with hybrid retrieval (BM25 + dense) on structured documents?
- What are the latency implications of multi-agent orchestration for real-time use cases?
