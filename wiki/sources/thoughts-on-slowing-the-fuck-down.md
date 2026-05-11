---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Thoughts on slowing the fuck down

## Metadata

- **Author**: Mario Zechner
- **Date**: 2026-03-25
- **URL**: https://mariozechner.at/posts/2026-03-25-thoughts-on-slowing-the-fuck-down/
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Thoughts on slowing the fuck down.md`

## Summary

A critical essay on the current state of agentic coding. Mario Zechner argues that the industry has abandoned engineering discipline for speed, resulting in brittle software, compounding errors, and unmaintainable codebases. The solution: slow down, scope agent tasks carefully, and keep humans as the final quality gate.

## Key Takeaways

- Software quality appears to be degrading: 98% uptime becoming the norm, UI bugs in big services, alleged AI-caused outages.
- Agents make errors repeatedly without learning; humans are bottlenecks that naturally limit error compounding.
- Orchestrated armies of agents compound "booboos" at unsustainable rates because there is no human pain feedback loop.
- Agents are "merchants of complexity" — they produce cargo-cult best practices without systemic understanding.
- Agentic search has low recall in large codebases, leading to duplication and inconsistency.
- Good agent tasks: scoped, closed-loop evaluable, non-mission-critical, or rubber-ducking.
- Architecture, API, and system gestalt should be written by hand. Slow down and maintain agency.

## Entities Mentioned

- [[mario-zechner]] — author, creator of Pi
- [[anthropic]] — mentioned in context of freebies
- [[openai]] — mentioned in context of freebies
- [[aws]] — alleged AI-caused outage
- [[phi-4-microsoft-collection|Microsoft]] — Satya Nadella on AI-written code; Windows quality issues
- [[karpathy-shares-llm-knowledge-base-architecture|Andrej Karpathy]] — auto-research example

## Concepts Mentioned

- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Agentic coding]] — critique of current practices
- [[vibe-coding-is-dead-heres-what-replaced-it|Vibe coding]] — contrasted with disciplined approaches
- [[context-rot]] — degradation of codebase due to unreviewed agent output
- [[agentic-search]] — low recall in large codebases
- Quality gate — human as final reviewer
- [[hugging-face|Evaluation function]] — narrow metrics agents optimize for

## Questions / Follow-ups

- What organizational incentives drive the rush to agent-generated code despite quality concerns?
- Can automated evaluation functions ever sufficiently replace human architectural review?
