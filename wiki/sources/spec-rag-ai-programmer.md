---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 告别"伪智能"代码：用 Spec + RAG 打造真正懂你的AI程序员

## Metadata

- **Author**: 翔旭 (淘天集团-导购&商详团队)
- **Date**: 2025-06-15
- **URL**: https://mp.weixin.qq.com/s/ei1PTOYMmP8VRhoj_xOd0Q
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/告别"伪智能"代码：用 Spec + RAG 打造真正懂你的AI程序员.md`

## Summary

Tmall Supermarket's导购&商详 team describes their "Spec + RAG + MCP" three-pillar knowledge system for AI coding. Spec provides hard rules (interface contracts, coding standards), RAG provides soft context (business domain knowledge, historical solutions), and MCP provides standardized tool integration. The article covers RAG implementation details (chunking strategies, embedding, hybrid retrieval, reranking) and MCP architecture, with concrete examples from their production system.

## Key Takeaways

- **Three-pillar system**: Spec (hard rules) + RAG (soft context) + MCP (standardized interface). Spec embeds directly in IDE; RAG retrieves on-demand via MCP to avoid context bloat.
- **Spec = constitution**: precise, unambiguous, verifiable descriptions of system behavior, interfaces, data formats, and business rules. Reduces hallucination and improves consistency.
- **Vibe Coding vs. Spec Coding**: Vibe Coding relies on intuition and imitation (fast, unreliable); Spec Coding follows strict specifications (reliable, maintainable). Speed vs. determinism tradeoff.
- **RAG pipeline**: document preprocessing → intelligent chunking → index enhancement → vector storage → query optimization → hybrid recall → reranking → result delivery.
- **Five chunking strategies**: fixed-size, semantic, recursive, document structure-based, LLM-based. Each with pros/cons for different document types.
- **Hybrid retrieval**: keyword (BM25) + dense vector + sparse vector + knowledge graph. Cross-Encoder reranking (e.g., Cohere Rerank, bge-reranker) for final quality.
- **MCP as "Type-C interface"**: standard protocol for LLM tool integration with capability exchange and runtime call phases.
- **Production status**: Spec knowledge库 fully deployed in Tmall Supermarket导购 C-end engineering; RAG knowledge库 in pilot phase.

## Entities Mentioned

- [[alibaba]] — parent company; Tmall Supermarket (猫超) business unit
- [[Tmall]] — e-commerce platform where the system is deployed
- [[openai]] — mentioned in MCP context
- [[cohere]] — reranking model provider mentioned

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — the broader framework for reliable AI coding
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-Driven Development]] — structured specifications as hard rules for AI
- [[retrieval-augmented-generation|RAG]] — dynamic context retrieval for domain knowledge
- [[model-context-protocol|MCP]] — standardized tool integration protocol
- [[vibe-coding-is-dead-heres-what-replaced-it|Vibe Coding]] — contrasted with Spec Coding
- [[goedel-code-prover-hierarchical-proof-search|Hybrid Search]] — keyword + vector + sparse + graph retrieval
- Semantic Chunking — chunking based on semantic boundaries
- [[self-attention|Cross-Encoder Reranking]] — query-document pair scoring for result quality

## Raw Notes

- Local Spec knowledge库 organizes docs into three categories: functional specs, requirement lifecycle management, and project-level rules.
- RAG addresses non-structured/semi-structured knowledge: business terminology, historical tech solutions, cross-team collaboration context.
- Query transformation methods: query rewriting, sub-query decomposition, step-back prompting.
- "一句话生成MCP服务" prompt used to quickly build local MCP services.
- Future plans: vector model tuning, retrieval enhancement (hybrid + reranking), business knowledge base expansion, MCP cloud migration.

## Questions / Follow-ups

- What is the measured accuracy improvement from Spec + RAG vs. either alone?
- How is Spec freshness maintained as code evolves?
- How does the team handle conflicting information between Spec and RAG retrieved content?
