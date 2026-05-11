---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 认知重建之后，步入Agentic Engineering的工程革命

## Metadata

- **Author**: rickyshou (腾讯程序员)
- **Date**: 2025-02-01
- **URL**: https://mp.weixin.qq.com/s/ri_lxDGayM-e5A0oAW59Fw
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/认知重建之后，步入Agentic Engineering的工程革命.md`

## Summary

A 40,000-word Chinese实践记录 documenting the evolution of an Agentic Engineering system from a single AGENTS.md file to 22 agents, 27 skills, and 28 commands. The author describes overcoming DDD failures, abandoning scene routing, and converging on progressive disclosure and tool-based architecture.

## Key Takeaways

- Agentic Engineering = human as coordinator + systematic context management + knowledge沉淀 + process design.
- DDD fails for agent systems because agent behavior depends on dynamic context, not deterministic interfaces.
- Scene routing failed due to Context Rot: routing metadata itself consumed too much context.
- Solution: tool-based progressive disclosure (pull mode) instead of scene routing (push mode).
- Five independent practices converged on same architecture: Anthropic (Agentic Search), OpenAI Codex (progressive disclosure), everything-claude-code, Cursor, and author's own system.
- Three-level capability system: Command (intent entry, <100 lines) → Skill (domain knowledge, <2k token entry) → Subagent (isolated context, <2k token return).
- Knowledge复利: each需求 delivers features AND accumulates认知资产 in context/ directory.
- Ralph Loop used for end-to-end activity configuration: 10 steps, self-iterating until completion.
- Anti-hallucination: universal-context-collector searches project knowledge before writing; every claim must have source or be marked [待确认].
- Quality gates: traceability checker, multi-dimensional code review (7 checkers + 1 synthesizer).

## Entities Mentioned

- [[andrej-karpathy]] — coined vibe coding and agentic engineering
- [[harrison-chase]] — LangChain founder, agentic spectrum
- [[geoffrey-huntley]] — Ralph Wiggum Technique
- [[openai]] — Codex team harness engineering article
- [[anthropic]] — Agentic Search, Claude Code
- [[cursor]] — dynamic context strategy
- [[claude-code-source-leak-harness|everything-claude-code]] — parallel evolved system (affaan-m)
- Playwright — browser automation for validation
- WorkBuddy — Tencent CodeBuddy non-technical interface

## Concepts Mentioned

- [[agentic-engineering-engineering-revolution|Agentic Engineering]] — engineering paradigm for AI agent coordination
- [[progressive-disclosure]] — pull-based context loading
- [[agentic-search]] — lightweight index + dynamic retrieval
- [[context-rot]] — metadata consuming context space
- [[ralph-loop]] — self-iterating agent execution
- Knowledge复利 — compounding knowledge assets
- Three-level capability — Command / Skill / Subagent hierarchy
- [[hallucination|Anti-hallucination]] — requiring sources for all claims
- Quality gate — automated checkpoints between phases

## Questions / Follow-ups

- How does the 22-agent system avoid coordination overhead and conflicting actions?
- What is the maintenance burden of keeping 27 skills and their knowledge bases current?
