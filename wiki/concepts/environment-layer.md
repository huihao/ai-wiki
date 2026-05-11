---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, harness-engineering]
sources: 1
---

# Environment Layer

## Definition

The environment layer is the portion of a harness engineering system that manages everything the AI agent needs to interact with its execution context — including prompt cache management, context compression, memory architecture, and parallel side queries. It represents the "can act" dimension of an agent's capabilities, sitting between the model's intelligence and the constraints that ensure reliability.

## Key Aspects

- In the Claude Code architecture, the environment layer governs prompt cache economics: `SYSTEM_PROMPT_DYNAMIC_BOUNDARY` marks the boundary between cacheable and non-cacheable content, and all downstream decisions (tool result storage, message formatting) are frozen once the cache is established
- Five-layer compression manages information across different lifespans: (1) Tool Result Budget — storing large results to disk, (2) HISTORY_SNIP — deleting noise, (3) Microcompact — API-layer edits, (4) CONTEXT_COLLAPSE — archiving structure, (5) Autocompact — final fallback
- Side queries run lightweight, non-streaming API calls in parallel during main model reasoning: permission classification, memory retrieval, and summary generation via a smaller model (e.g., Haiku summarizing while Sonnet thinks)
- Memory architecture uses Markdown files (CLAUDE.md, AGENTS.md, MEMORY.md) rather than vector databases, keeping memory transparent, Git-versioned, and directly editable by humans
- The "Dream System" performs background memory consolidation after 24 hours and 5 sessions, following Orient → Gather → Consolidate → Prune stages with tunable thresholds
- The Agent = Model + Harness formula positions the environment layer as the bridge: Model provides intelligence (can think), Environment provides capability (can act), and Constraints provide reliability (won't fail)

## Related Concepts

- [[harness-engineering]]
- [[five-layer-compression]]
- [[cache-economics]]

## Sources

- [[harness-engineering-claude-code]]
