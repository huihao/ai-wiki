---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, reliability]
sources: 2
---

# Compounding Errors

## Definition
Compounding errors occur when small, individually harmless mistakes accumulate over time without a correcting mechanism, producing increasingly severe and eventually catastrophic outcomes. In AI-assisted software development, agents make errors like humans but lack the feedback loop that causes humans to learn from and stop repeating mistakes, allowing tiny issues to compound at an unsustainable rate.

## Key Aspects
- Agents lack a natural bottleneck that limits error rate the way human fatigue and awareness do
- When humans are removed from the loop, no corrective signal stops errors from accumulating
- Local architectural decisions made by agents can produce global complexity and brittleness
- Delayed human oversight means errors have already compounded before discovery
- The solution requires keeping humans in the loop as a rate limiter on error accumulation

## Related Concepts
- [[compounding-errors-in-llms]]
- [[decision-making]]

## Sources
- [[slowness-agent-coding]]
- [[index]]
