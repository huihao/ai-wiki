---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# AI数据工程师在应用中如何"返璞归真"

## Metadata

- **Author**: 阿里妹 (Alibaba tech blog)
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/3rhGd0kuiedExzdveeonPw
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/AI数据工程师在应用中如何_返璞归真_.md`

## Summary

Alibaba's MktAI team reflects on the limitations of lightweight agent construction (knowledge base + prompt engineering + tool calling) in real business scenarios. They argue that agent quality is fundamentally constrained by knowledge quality, semantic understanding, and scalable maintenance. The article documents their evolution toward a Context-Aware paradigm with structured data semantics, Reason-Based RAG, and ontology-driven agents, achieving accuracy improvements from 86% to 95% on business benchmarks.

## Key Takeaways

- Lightweight agent "four-piece sets" (knowledge base + PE + Function Calling + Few-shot) hit a "sweet trap" in production: uncontrollable knowledge quality, metadata semantic gaps, and PE scalability bottlenecks.
- The core shift is from Prompt-Centric to **Context-Aware**: building high-quality, structured, traceable context corpora instead of relying solely on prompts.
- Three pillars of context engineering: business term dictionaries, data semantic graphs (metadata + lineage + metrics), and compliance constraint rules.
- **Reason-Based RAG** outperforms vector-based RAG dramatically: 98% human approval rate vs ~30% for traditional vector-based approaches.
- Ontology-driven agents provide the deepest solution: validated across 300+ test cases with 89–94% attribution rationality and 82–92% reasoning completeness.
- Change-aware pipelines listening to MaxCompute/Hologres DDL/DML changes keep AI knowledge automatically synchronized.

## Entities Mentioned

- [[alibaba]] — the team's parent company; article published on Alibaba tech blog
- MktAI — Alibaba's marketing AI team that built the knowledge system
- MaxCompute — Alibaba's big data computing platform mentioned for change detection
- Hologres — real-time analytics engine used for metadata synchronization

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — implicitly about constraining and guiding AI in production
- [[retrieval-augmented-generation|RAG]] — early vector-based approach and its limitations
- [[context-engineering]] — the paradigm shift from prompt-driven to context-aware
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-Driven Development]] — structured specifications as "constitution" for AI behavior
- [[comprehensive-rag-ollama-langchain|Reason-Based RAG]] — LLM-driven inference recall replacing vector similarity
- Ontology — structured knowledge representation for agent reasoning

## Raw Notes

- The article uses the metaphor: "Agent is not LEGO, it's more like an autonomous vehicle" — you need high-precision maps (context), sensor fusion (toolchain), and real-time decision systems (reasoning loop).
- Semantic fragmentation example: "coupon stacking rules" split into three chunks, each reasonable alone but logically broken when combined.
- Field-level semantic enrichment is standard: each field carries business meaning, not just technical metadata.
- Typical benchmark tasks involve domain-specific jargon ("尖货", "焕新补贴", "分层GMV") with 350+ test cases.

## Questions / Follow-ups

- How does the Reason-Based RAG architecture differ from GraphRAG or agentic RAG approaches?
- Can the ontology-driven approach scale beyond e-commerce to other domains?
- What is the maintenance cost of keeping the ontology synchronized with schema changes?
