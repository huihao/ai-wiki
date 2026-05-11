---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Auto-Memory Tool

## Definition
The auto-memory tool is an automated system that allows AI agents to persist, retrieve, and consolidate information across sessions without explicit user intervention. In harness engineering, it addresses the fundamental problem of stateless AI agents by providing transparent, file-based memory management that integrates with the agent's tool-use loop.

## Key Aspects
- **Persistent memory across sessions**: Enables agents to retain context, preferences, and learned facts beyond the context window of a single conversation
- **File-based architecture**: Memory stored as Markdown files (e.g., `CLAUDE.md`, `MEMORY.md`, timestamped logs) rather than opaque vector databases, keeping memory transparent and human-readable
- **Dream system / consolidation**: Background processes that periodically review and consolidate accumulated memory, pruning outdated information and merging related facts (Orient, Gather, Consolidate, Prune phases)
- **Memory tiers**: Working memory (current session), short-term (recent sessions), and long-term (consolidated facts and preferences)
- **Git-versioned**: Memory files tracked in version control, providing history, rollback, and auditability
- **User-editable**: Since memory is plain text, users can directly inspect and edit what the agent remembers, unlike embedded vector stores

## Related Concepts
- [[harness-engineering-overview]] -- the broader framework containing auto-memory systems
- [[context-engineering]] -- managing what the model sees, including retrieved memories
- [[agent-builder-memory-system]] -- alternative memory architecture approaches

## Sources
- [[harness-engineering]]
