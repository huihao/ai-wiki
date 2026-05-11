---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, performance]
sources: 2
---

# Speculative Execution

## Definition

Speculative execution in the context of AI coding agents is a technique where the system predicts what the user will request and begins working on it before the user explicitly confirms, using an overlay filesystem to perform tentative work that can be quickly accepted or discarded. It reduces perceived latency by overlapping prediction with user decision-making, turning idle waiting time into productive preparation.

## Key Aspects

- The agent predicts user intent while the user is still typing or reviewing
- Fork the agent onto an overlay filesystem so tentative writes do not affect the real project
- All speculative work is written only to the overlay, keeping the actual codebase clean
- On user acceptance, promote overlay changes to the real filesystem; on rejection, simply delete the overlay
- Tool whitelist and iteration limits (e.g., 20 iterations) prevent speculative execution from consuming excessive resources
- Reduces perceived latency by transforming wait time into productive preparation
- Requires careful prediction accuracy -- too aggressive speculation wastes resources, too conservative misses opportunities
- The technique is analogous to CPU speculative execution, where processors execute branch paths before knowing which path is correct
- Must handle conflicts gracefully if the user's actual request diverges significantly from the prediction

## Related Concepts

- [[side-query]]
- [[agent-loop]]
- [[overlay-filesystem]]
- [[latency-optimization]]
- [[parallel-computation]]

## Sources

- [[harness-engineering-claude-code]]
- [[index]]
