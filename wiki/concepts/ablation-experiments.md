---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Ablation Experiments

## Definition
Ablation experiments are systematic evaluations where individual components of a complex system are removed or isolated to measure their specific contribution to overall performance. In the context of AI agent engineering, ablation studies help determine which harness components — such as prompt caching, compression layers, side queries, or validation logic — meaningfully impact reliability and latency.

## Key Aspects
- Each component is tested in isolation by removing it while keeping all others constant, revealing its marginal contribution
- Critical for distinguishing essential features from nice-to-haves in large systems like Claude Code's harness (510K lines, 1903 files)
- In agent systems, ablation can isolate the effect of specific tools (Read/Write/Edit vs. Glob/Grep/Bash), memory architectures, or constraint layers
- Enables data-driven decisions about what to keep, improve, or discard during development
- Helps validate whether complexity in the system is justified by measurable performance gains

## Related Concepts
- [[harness-engineering-claude-code]]
- [[circuit-breakers]]

## Sources
- [[harness-engineering-claude-code]]
- [[index]]
