---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Compound Loop

## Definition

A compound loop is a multi-stage feedback architecture where raw outputs from AI agents are passed through a compiler step, validated by a separate model (e.g., Hermes), and the verified results are fed back to the originating agents. This creates a self-improving knowledge pipeline that catches errors and hallucinations before they propagate.

## Key Aspects

- **Multi-Agent Pipeline**: Raw outputs → Compiler (LLM structuring) → Validation Model → Verified content → Agent feedback
- **Quality Gate**: A separate model (Hermes) validates drafts before they are promoted to the live wiki
- **Self-Correcting**: Errors caught during validation prevent misinformation from entering the knowledge base
- **Inspired by Karpathy's Architecture**: Builds on the three-stage LLM knowledge base (ingest → compile → maintain)
- **OpenClaw Implementation**: 10-agent system using Hermes for quality gating
- **Reduces Hallucination**: Validation step catches fabricated claims before they propagate
- **Scalable Quality**: Automated validation replaces manual review as the knowledge base grows

## Related Concepts

- [[llm-knowledge-base-karpathy]]
- [[compilation-step]]
- [[completion-sigil]]

## Sources

- [[llm-knowledge-base-karpathy]]
