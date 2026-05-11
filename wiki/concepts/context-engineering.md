---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, engineering]
sources: 4
---

# Context Engineering

## Definition

The discipline of selecting, organizing, and exposing the right subset of system knowledge to an LLM so it can operate effectively. Context Engineering sits between Prompt Engineering (optimizing a single input) and Harness Engineering (the full infrastructure), forming the middle layer: Prompt ⊂ Context ⊂ Harness.

## Key Proponents / Critics

- **Practitioners**: [[mario-zechner]] — "context engineering is paramount" in Pi
- **Analysts**: [[bojie-li]] — dissected Claude Code's five-layer context compression
- **Framework designers**: [[anthropic]] — Agentic Search as context management strategy

## Related Concepts

- [[prompt-engineering]] — optimizing single inputs
- [[harness-engineering-overview|Harness Engineering]] — full agent infrastructure
- [[context-rot]] — degradation from too much context
- [[agentic-search]] — lightweight index + dynamic retrieval
- [[progressive-disclosure]] — pull-based context loading
- [[agent-builder-memory-system|Memory bank]] — persistent context across sessions

## Sources

- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|The Real AI Coding Skill Isn't Prompting. It's Architecture.]] — context engineering defined
- [[claude-code|Harness Is the Key to Making Agents Reliable]] — Claude Code's five-layer compression
- [[agentic-engineering-engineering-revolution]] — context as core design constraint
- [[context-engineering-ai-agents-manus-lessons|AI代理的上下文工程：构建Manus的经验教训]] — Manus team's iterative principles: KV cache optimization, attention manipulation through rephrasing, file system as context, error retention

## Evolution

- **2023**: Prompt Engineering dominates — the question is "what to ask."
- **2024**: Context Engineering emerges — the question becomes "what to show."
- **2025**: Agentic Search and progressive disclosure formalize best practices.
- **2026**: Harness Engineering subsumes Context Engineering as the broader framework.
