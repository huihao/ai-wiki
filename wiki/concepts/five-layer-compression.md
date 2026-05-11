---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, context-management, harness-engineering]
sources: 1
---

# Five-Layer Compression

## Definition

Five-layer compression is Claude Code's hierarchical context management system that processes information across different lifespans, ensuring that the most relevant information remains in the model's context while less important data is progressively compressed, archived, or removed. Each layer operates at a different granularity and serves a distinct purpose in maintaining coherent, cost-effective agent operation.

## Key Aspects

- **Layer 1 — Tool Result Budget**: Large tool outputs (file contents, search results) are stored to disk rather than kept in context, reducing token consumption while preserving access
- **Layer 2 — HISTORY_SNIP**: Noise and low-value historical exchanges are deleted from the conversation history, keeping only the essential decision trail
- **Layer 3 — Microcompact**: API-layer edits compress individual messages by removing redundant information, reformatting, and condensing verbose outputs
- **Layer 4 — CONTEXT_COLLAPSE**: Structural archival that collapses entire sections of completed work into summaries, preserving key decisions and outcomes while discarding intermediate steps
- **Layer 5 — Autocompact**: Final fallback mechanism triggered when context approaches the limit, performing aggressive compression to keep the conversation going
- The system is governed by cache economics: compression decisions are frozen at the prompt cache boundary to maintain cache consistency, even if suboptimal from a pure information perspective
- Circuit breakers protect against compression failures: 3 consecutive compression failures trigger alternative handling, saving an estimated 250,000 API calls per day in production
- The five layers reflect a key insight: information has different lifespans — tool results are immediately relevant but can be re-fetched, while decisions and specifications must persist throughout the session

## Related Concepts

- [[harness-engineering]]
- [[environment-layer]]
- [[cache-economics]]

## Sources

- [[harness-engineering-claude-code]]
