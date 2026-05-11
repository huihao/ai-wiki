---
created: 2026-05-11
updated: 2026-05-11
tags: [source]
sources: 1
---

# Harness不是目的，知识才是护城河 —— 一个AI工程交付团队的知识沉淀实践

## Metadata

- **Author**: stevenpxiao (Tencent Programmer)
- **Date**: 2026-04-27
- **URL**: https://mp.weixin.qq.com/s/Xy8NwrHZRWv301eTZz4Dpw
- **Access Date**: 2026-05-11
- **Raw File**: `Clippings/Harness不是目的，知识才是护城河 —— 一个AI工程交付团队的知识沉淀实践.md`

## Summary

This article argues that while [[harness-engineering|Harness Engineering]] dominates 2026's AI engineering discourse, the **true technical moat is knowledge accumulation, not workflow design**. The Tencent AI Team built a comprehensive [[knowledge-layered-architecture|knowledge architecture]] for their engineering delivery system: 5 storage layers × 5 knowledge types × 3 maturity levels, with auto-decay. They implemented this as an independent Git repository (not embedded in business projects), with three-tier progressive indexing for efficient Agent consumption, and a contribution model inspired by blockchain's append-only logs. The team reports that this approach eliminates the "one-shot workflow" anti-pattern where every new requirement starts from scratch.

## Key Takeaways

- **Workflows are replaceable, knowledge is cumulative.** Today's 16-stage state machine may become tomorrow's DAG. But knowledge like "ad budget deduction under high concurrency needs Redis+Lua for atomicity" remains valuable regardless of workflow changes.
- A workflow without knowledge closure is a **"one-shot" anti-pattern**: teams invest in toolchains but never let them get smarter.
- **Three knowledge types by value**: scattered facts → causal reasoning chains → time-space contextual knowledge. The higher-order the knowledge, the less likely it comes from models alone.
- The **5-layer storage architecture** (Layer 0-P personal, Layer 0-T team conventions, Layer 1 tech wiki, Layer 2 biz wiki, Layer 3 project knowledge) enables proper sharing boundaries and lifecycle management.
- **3-level maturity** (draft → verified → proven) with automatic decay: proven entries unused for 12 months demote to verified; verified unused 6 months demote to draft; drafts eventually archived.
- **Three-tier progressive indexing** (catalog → category listing → full entry) enables Agent to explore the knowledge base with ~50 lines for full overview vs 5,000-10,000 lines for brute-force push — a 10x context efficiency improvement.
- **Remote device control** solves the "presence dependency" problem: Agents can continue workflows via mobile phone, bypassing the bottleneck of needing a human at a workstation.

## Entities Mentioned

- [[stevenpxiao]] — Author, Tencent AI Team engineer
- [[anthropic]] — Referenced for Claude Code's CLAUDE.md constraint approach
- [[openai]] — Referenced for Codex's zero-handwritten-code interaction protocol
- [[cursor]] — Referenced for Self-Driving multi-agent collaboration

## Concepts Mentioned

- [[harness-engineering]] — Engineering constraints around AI models; this article argues knowledge is more important than harness workflows
- [[knowledge-layered-architecture]] — 5-layer × 5-type × 3-maturity knowledge system with auto-decay
- [[progressive-disclosure]] — Three-tier indexing (catalog → listing → full entry) for efficient Agent knowledge consumption
- [[context-engineering]] — Knowledge injection as a core harness engineering pillar
- [[agentic-memory]] — Long-term and short-term memory systems for agents

## Questions / Follow-ups

- How does the auto-decay mechanism handle domain knowledge that is inherently cyclical (e.g., seasonal business rules)?
- What is the actual adoption rate among team members? Is the contribution friction low enough to sustain the knowledge base?
- How does this compare to Karpathy's LLM Wiki approach (this wiki)?
