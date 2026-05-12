---
created: 2026-04-28
updated: 2026-05-12
tags: [agent, engineering]
sources: 5
---

# Context Engineering

## Definition

The discipline of selecting, organizing, and exposing the right subset of system knowledge to an LLM so it can operate effectively. Context Engineering sits between Prompt Engineering (optimizing a single input) and Harness Engineering (the full infrastructure), forming the middle layer: Prompt ⊂ Context ⊂ Harness. For coding agents, this involves structuring instructions, file references, and conversation history to maximize the agent's effectiveness.

## Key Principles

- **Curation Over Creation**: The engineer's role is selecting and organizing information, not writing prompts from scratch
- **CLAUDE.md as Context**: Project-level instruction files that define conventions, commands, and architectural decisions
- **Path-Scoped Rules**: Context that activates only when working with specific file patterns (e.g., API routes)
- **Context Window Management**: Balancing information density against token limits — too much context reduces adherence
- **Rules Folder**: Modular, per-concern instruction files loaded automatically from `.claude/rules/`
- **Subagent Context Separation**: Each subagent maintains its own context window, preventing pollution across tasks
- **Dynamic Context Assembly**: Pulling relevant files, tests, and documentation based on the current task
- **KV cache optimization**: Structuring context for efficient caching across turns
- **Attention manipulation through rephrasing**: Rewriting context to guide model attention
- **File system as context**: Using project files as living, updatable context
- **Error retention**: Keeping failure context to prevent repeated mistakes

## Key Proponents / Critics

- **Practitioners**: [[mario-zechner]] — "context engineering is paramount" in Pi
- **Analysts**: [[bojie-li]] — dissected Claude Code's five-layer context compression
- **Framework designers**: [[anthropic]] — Agentic Search as context management strategy
- **Practitioners**: [[bharani-subramaniam]] — context engineering for coding agents

## Related Concepts

- [[prompt-engineering]] — optimizing single inputs
- [[harness-engineering-overview|Harness Engineering]] — full agent infrastructure
- [[context-rot]] — degradation from too much context
- [[agentic-search]] — lightweight index + dynamic retrieval
- [[progressive-disclosure]] — pull-based context loading
- [[agent-builder-memory-system|Memory bank]] — persistent context across sessions
- [[context-firewalling]]

## Sources

- [[the-real-ai-coding-skill-isnt-prompting-its-architecture]] — context engineering defined
- [[claude-code]] — Claude Code's five-layer compression
- [[agentic-engineering-engineering-revolution]] — context as core design constraint
- [[context-engineering-ai-agents-manus-lessons]] — Manus team's iterative principles
- [[bharani-subramaniam]] — context engineering for coding agents

## Evolution

- **2023**: Prompt Engineering dominates — the question is "what to ask."
- **2024**: Context Engineering emerges — the question becomes "what to show."
- **2025**: Agentic Search and progressive disclosure formalize best practices.
- **2026**: Harness Engineering subsumes Context Engineering as the broader framework.
