---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Auto-Memory

## Definition
Auto-memory is the practice of giving AI coding agents persistent, queryable recall across sessions by indexing session history into a searchable store—addressing the "compaction tax" of re-explaining project context every time the context window is cleared or a new session begins.

## Key Aspects
- **Context window math is misleading**: A 200K-token window yields roughly 45K effective tokens before context rot kicks in at ~60% utilization, where models begin losing coherence, forgetting constraints, and hallucinating.
- **Compaction tax**: Each `/compact` or `/clear` operation destroys shared context, costing roughly 30 minutes of re-orientation time; one engineer measured 68 minutes per day wasted re-explaining project state.
- **Recall, not memory**: Auto-memory is a read-only query layer over existing session databases (e.g., Copilot CLI's SQLite store), achieving ~200x token efficiency (50 tokens vs. 10,000 for grep/file exploration).
- **Three-tier progressive disclosure**: Tier 1 (~50 tokens) lists files; Tier 2 (~200 tokens) does focused search; Tier 3 (~500 tokens) retrieves full session detail—each tier used only when needed.
- **Mental model**: Context window = RAM (fast, limited, clears on restart); session-store.db = Disk (persistent, searchable, grows forever); auto-memory = page fault handler that loads relevant context on demand.
- **Harness engineering integration**: Auto-memory sits within the broader "harness" layer that wraps LLMs to manage uncertainty—the thick layer that makes agents reliable in production.

## Related Concepts
- [[agent-loop]]
- [[agents-md]]
- [[context-bloat]]
- [[coding-agent]]

## Sources
- [[anatomy-claude-folder]]
- [[harness-engineering]]
- [[riper-state-machine]]
