---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, memory]
sources: 0
---

# Session Memory

## Definition

Session memory refers to the short-term state that an AI coding agent or conversational agent maintains within a single user session. Unlike long-term memory (which persists across sessions via files, databases, or vector stores), session memory holds the immediate context of the current task: conversation history, file contents, tool outputs, and intermediate reasoning. Effective session memory management is critical for agent coherence, but it is also the primary source of context rot and token consumption.

## Key Proponents / Critics

- **Practitioners**: All agent frameworks manage session memory; approaches vary widely
- **Anthropic**: Claude Code externalizes session state to files (CLAUDE.md, todo.md) to reduce context window pressure
- **Microsoft**: Copilot CLI's `auto-memory` addresses session compaction by querying past SQLite sessions
- **Critics**: Session memory is inherently limited by context windows; over-reliance on it leads to context rot

## Related Concepts

- [[context-rot]] — degradation of performance as session memory grows
- [[context-engineering]] — designing what goes into session memory
- [[stop-using-init-for-agents-md|AGENTS.md]] — persistent memory file that survives session boundaries
- [[progressive-disclosure]] — loading only lightweight indexes into session memory
- [[why-genai-based-coding-agents-are-a-complex-domain-in-cynefin|Memory in agents]] — broader taxonomy including episodic, semantic, and procedural memory

## Sources

- [[ai-agents-fail-on-bad-context|AI Agents Fail on Bad Context, Not Bad Models]] — argues context management trumps model quality
- [[agent-builder-memory-system|How We Built Agent Builder's Memory System]] — LangChain's virtual filesystem approach to memory
- [[context-engineering|Context Engineering for AI Agents: Lessons from Building Manus]] — KV cache and session optimization
- [[your-coding-agent-keeps-making-the-same-mistakes-i-built-a-fix|I Wasted 68 Minutes a Day Re-Explaining My Code. Then I Built auto-memory.]] — session recall via SQLite

## Evolution

- **2023**: Simple conversation history as session memory
- **2024**: Summarization and compression techniques emerge
- **2025**: Externalization to files (CLAUDE.md, todo.md) becomes standard practice
- **2026**: Three-tier memory (session → project → global) and database-backed session search
