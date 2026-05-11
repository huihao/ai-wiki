---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, context]
sources: 1
---

# Memory Compression

## Definition

Memory compression in AI agents refers to the technique of summarizing or condensing conversation history and context to reduce token usage while preserving essential information. Google Gemini CLI implements this through its `/compress` slash command, which summarizes the current conversation to free up context window space for continued work.

## Key Aspects

- Gemini CLI's `/compress` command summarizes conversation history, reducing token count while maintaining key information
- Part of a broader context management strategy that includes checkpointing (save/restore project snapshots) and hierarchical context files (GEMINI.md at global, project, and subdirectory levels)
- Memory compression is essential for long-running agent sessions where conversation history can exhaust the context window
- Related to the context rot phenomenon: as context grows, performance degrades non-uniformly, making compression both a token-saving and quality-preserving measure
- The `/memory show` command displays what the agent has learned and stored, complementing compression with explicit memory management
- Chat save/restore (`/chat save`, `/restore`) provides an alternative to compression: preserving full history in checkpoints rather than summarizing
- Trade-off: compression loses detail but maintains context window capacity; checkpoints preserve everything but consume storage

## Related Concepts

- [[mcp-server]]
- [[longmemeval]]
- [[memory-bound]]

## Sources

- [[gemini-cli-cheatsheet]]
