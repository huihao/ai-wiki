---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# I Wasted 68 Minutes a Day Re-Explaining My Code. Then I Built auto-memory.

## Metadata

- **Author**: Desi Villanueva
- **Date**: 2026-04-21
- **URL**: https://devblogs.microsoft.com/all-things-azure/i-wasted-68-minutes-a-day-re-explaining-my-code-then-i-built-auto-memory/
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/I Wasted 68 Minutes a Day Re-Explaining My Code. Then I Built auto-memory. _ All things Azure.md`

## Summary

A Microsoft engineer built `auto-memory`, a 1,900-line zero-dependency Python CLI tool that gives Copilot CLI "unlimited context recall" by querying the existing SQLite session database (`~/.copilot/session-store.db`). The tool addresses context rot and the "compaction tax" — the daily ~68 minutes wasted re-explaining project state after context compaction or new sessions. It uses a three-tier progressive disclosure model and achieves ~200x token efficiency vs. traditional grep/file searches.

## Key Takeaways

- **Context window math is misleading**: 200K tokens on paper → ~125K after overhead → ~45K effective before "context rot" kicks in at ~60% usage.
- **Context rot**: beyond ~60% context usage, models lose coherence — forgetting constraints, contradicting earlier responses, hallucinating filenames. Industry term: "lost in the middle."
- **Compaction tax**: every `/compact` or `/clear` destroys 30 minutes of shared context. User measured **68 minutes/day** of re-orientation time.
- **Auto-memory is recall, not memory**: Copilot CLI already writes every session to SQLite. Auto-memory is a read-only query layer (50 tokens vs. 10,000 for grep/file exploration = 200x improvement).
- **Mental model**: context window = RAM (fast, limited, clears on restart); session-store.db = Disk (persistent, searchable, grows forever); auto-memory = page fault handler.
- **Three-tier progressive disclosure**: Tier 1 (~50 tokens) files/list scan; Tier 2 (~200 tokens) focused search; Tier 3 (~500 tokens) full session detail.
- **Design opinions**: zero dependencies (stdlib only), read-only always, schema validation on every call, instruction-driven (not platform-locked).

## Entities Mentioned

- [[phi-4-microsoft-collection|Microsoft]] — author's employer; Azure blog host
- [[github-nousresearch-hermes-agent|GitHub]] — Copilot CLI creator
- [[auto-memory-copilot-cli|Copilot CLI]] — the AI terminal assistant whose session DB is queried
- [[anthropic]] — mentioned in passing (Claude Code compatibility)

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — tooling that wraps AI to manage uncertainty
- [[context-rot]] — model degradation at high context usage; core problem auto-memory solves
- [[session-memory]] — persistence across agent sessions
- [[progressive-disclosure]] — tiered information retrieval to manage token budgets
- [[the-evolution-of-modern-rag-architectures|Lost in the Middle]] — research phenomenon where LLMs miss information in long contexts

## Raw Notes

- The "amnesia loop" ritual: re-explain context (5 min) → agent blind searches (10K tokens) → re-discover state (5 min). Total: 5–10 min and 12K+ tokens per re-orientation.
- Auto-memory health check covers 8 dimensions: DB freshness, schema integrity, query latency, corpus size, summary coverage, repo coverage, concurrency, E2E probe.
- Explicitly NOT: a vector database (uses SQLite FTS5), cross-machine sync, or documentation replacement.
- Can work with any agent reading instruction files (Copilot CLI today, Claude Code/Cursor/Windsurf tomorrow).

## Questions / Follow-ups

- Could this approach be extended to Claude Code's memory files or Cursor's composer history?
- What happens when Copilot CLI changes its SQLite schema?
- Are there privacy concerns with persistent session stores containing proprietary code discussions?
