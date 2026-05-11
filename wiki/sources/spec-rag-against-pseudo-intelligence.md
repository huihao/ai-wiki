---
created: 2026-05-11
updated: 2026-05-11
tags: [source]
sources: 1
---

# 告别"伪智能"代码：用 Spec + RAG 打造真正懂你的AI程序员

## Metadata

- **Author**: 导购&商详团队 (Shopping Guide & Detail Team)
- **Date**: 2026-04-08
- **URL**: https://mp.weixin.qq.com/s/ei1PTOYMmP8VRhoj_xOd0Q
- **Access Date**: 2026-05-11
- **Raw File**: `Clippings/告别"伪智能"代码：用 Spec + RAG 打造真正懂你的AI程序员.md`

## Summary

This article proposes combining **Spec-Driven Development (SDD)** with **[[retrieval-augmented-generation|RAG]]** to combat "pseudo-intelligence" in AI-generated code — the phenomenon where models produce syntactically plausible but semantically incorrect code due to hallucination, missing context, and logic gaps. The authors argue that while [[vibe-coding|Vibe Coding]] (relying on intuition and pattern imitation) is fast but unreliable, [[spec-coding|Spec Coding]] (strictly following written, structured specifications) provides verifiable, auditable output. Combined with RAG for dynamic retrieval of project-specific codebases, documents, and best practices, this approach gives AI "project awareness" that transforms it from a generic code generator into a business-and-architecture-literate programmer.

## Key Takeaways

- The core contradiction in AI Coding: **"can write" ≠ "writes correctly"**. In high-frequency iteration with strong business coupling, correctness and consistency matter far more than generation speed.
- **Spec = Constitution for AI**: specifications define "What", "Why", and "How" unambiguously, eliminating the guesswork that leads to hallucinations.
- **Spec Coding vs Vibe Coding**: Spec Coding trades initial setup cost for dramatically lower maintenance cost — when requirements change, you only update the Spec and AI adapts automatically.
- **RAG as "soft context" complement to Spec's "hard rules"**: Spec provides strong constraints (must-follow rules), while RAG provides flexible, rich context (documents, history, best practices).
- **Five chunking strategies for RAG in code**: fixed-size, semantic, recursive, document-structure-based, and agentic chunking — each with distinct tradeoffs for code-specific use cases.
- The combined Spec + RAG architecture achieved significant improvements in code accuracy, maintainability, and integration with existing systems.

## Entities Mentioned

- [[shopping-guide-detail-team]] — Alibaba team that authored this article

## Concepts Mentioned

- [[spec-coding]] — Spec Coding: strictly following written structured specifications for AI code generation, distinct from Vibe Coding
- [[spec-driven-development]] — The broader practice of writing specifications before code, of which Spec Coding is the AI-application variant
- [[vibe-coding]] — AI-assisted intuitive coding approach; this article positions it as the unreliable counterpart to Spec Coding
- [[retrieval-augmented-generation]] — RAG: combining search with generation to provide AI access to private, real-time knowledge
- [[context-engineering]] — Building high-quality context for AI through structured knowledge systems
- [[harness-engineering]] — Engineering constraints around AI models; Spec + RAG is a practical implementation of harness principles

## Questions / Follow-ups

- How do you maintain Spec documents as the codebase evolves? Who is responsible for keeping them in sync?
- What is the retrieval latency impact when combining Spec + RAG in a real-time coding workflow?
- How does this approach compare to using CLAUDE.md or .cursorrules for project-specific context?
