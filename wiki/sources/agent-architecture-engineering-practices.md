---
created: 2026-05-11
updated: 2026-05-11
tags: [source]
sources: 1
---

# 你不知道的 Agent：原理、架构与工程实践

## Metadata

- **Author**: [[youxi|侑夕]] (Youxi)
- **Date**: 2026-04-28
- **URL**: https://mp.weixin.qq.com/s/cIQYl9Wr1Eov4ma-_bYh-w
- **Access Date**: 2026-05-11
- **Raw File**: `Clippings/你不知道的 Agent：原理、架构与工程实践.md`

## Summary

A comprehensive technical deep-dive covering every major dimension of Agent engineering: [[agent-loop|Agent Loop]] architecture, [[harness-engineering|Harness Engineering]] (why it matters more than model choice), [[context-engineering|context engineering]] (layered management, Skills lazy loading, [[prompt-caching|Prompt Caching]]), [[agent-tools|tool design]] ([[agent-capability-interface|ACI]] principles), [[agentic-memory|memory systems]] (4 types), [[multi-agent-orchestration|multi-agent organization]], [[agent-evaluation|evaluation frameworks]], [[observability|observability/tracing]], and security. Uses the OpenClaw implementation as a running example throughout. Key contrarian insight: more expensive models often bring smaller improvements than expected, while Harness quality and verification testing have outsized impact on success rates.

## Key Takeaways

- The Agent Loop core is <20 lines of code: perceive → decide → act → feedback, cycling until the model returns plain text (no tool calls).
- **Harness Engineering matters more than model choice**: teams should invest in context management, tool definitions, and evaluation before upgrading models.
- **Tool design (ACI)**: Agent Capability Interface focuses on description accuracy — most tool selection errors stem from inaccurate descriptions, not model weakness.
- **Context engineering** uses layered architecture: system prompt (permanent) → session memory (short-term) → tool results (ephemeral), with progressive disclosure to avoid context bloat.
- **Four memory types**: working memory (current session), episodic memory (past interactions), semantic memory (facts/rules), procedural memory (how-to knowledge).
- **Multi-agent organization** patterns: hierarchical (supervisor → workers), peer-to-peer (negotiation), sequential (pipeline), parallel (fan-out/fan-in).
- **Evaluation trap**: problems in the evaluation system itself are harder to detect than Agent failures — if you keep tuning Agent code without fixing the evaluation, improvements are illusory.
- **Security**: input sanitization, output validation, sandboxed execution, and least-privilege tool access are non-negotiable production requirements.

## Entities Mentioned

- [[youxi|侑夕]] — Author, Alibaba Cloud Developer
- [[openclaw]] — Open-source Agent framework used as the running example throughout the article

## Concepts Mentioned

- [[agent-loop]] — Core observe-decide-act-feedback cycle driving Agent behavior
- [[harness-engineering]] — Engineering everything outside the model: context, tools, errors, security, caching, coordination
- [[context-engineering]] — Managing what information reaches the model and when
- [[agent-tools]] — Tools connecting LLMs to the real world through type-safe, self-repairing design
- [[multi-agent-orchestration]] — Multiple agents working together with specialized roles
- [[agent-evaluation]] — Frameworks for measuring Agent performance and reliability
- [[agentic-memory]] — Memory systems enabling persistent learning across sessions
- [[prompt-caching]] — Caching strategy for reducing token costs and latency on repeated context

## Questions / Follow-ups

- How does OpenClaw's implementation compare to Claude Code's harness engineering in practice?
- What are the specific benchmarks or metrics the author uses to claim "Harness quality matters more than model choice"?
- How does the security framework handle tool call injection attacks?
