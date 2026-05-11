---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 1
---

# GrowthBook

## Summary
GrowthBook is an open-source feature flagging and A/B testing platform used in production AI systems to control feature rollouts, run experiments, and manage configuration dynamically. In Claude Code's harness engineering, GrowthBook provides the infrastructure for ablation experiments, feature flags (prefixed 'tengu_'), gray releases, and kill switches that enable controlled iteration on agent behavior.

## Key Aspects

- **Dual Feature Flag System**: Compile-time flags (Bun feature() macro for binary deletion) combined with runtime flags (GrowthBook for gray release, A/B testing, and kill switches)
- **Ablation Experiments**: The ABLATION_BASELINE flag disables 7 features simultaneously, enabling systematic measurement of feature contributions to agent performance
- **Server-Side Bucketing**: GrowthBook handles user profiling and experiment exposure tracking, ensuring consistent treatment assignment across sessions
- **Tunable Thresholds**: Dream system thresholds (memory triggers, skill review intervals) are configurable via GrowthBook without code deployment
- **Anti-Distillation Control**: GrowthBook gates the anti-distillation layers (fake tool injection, connector text summarization), allowing the team to measure their impact on model extraction prevention

## Related Concepts
- [[harness-engineering-claude-code]]
- [[ablation-experiments]]

## Sources
- [[harness-engineering-claude-code]]
