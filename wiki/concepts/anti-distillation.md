---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Anti-Distillation

## Definition
Anti-distillation refers to techniques and measures designed to prevent knowledge distillation — the process where a smaller "student" model learns to replicate the behavior of a larger "teacher" model. In the context of proprietary AI systems, anti-distillation protects intellectual property by preventing adversaries from creating cheap copies of expensive-to-train models through API access.

## Key Aspects
- Knowledge distillation allows smaller models to mimic larger ones by training on their outputs, bypassing the cost of original training
- Anti-distillation measures aim to make model outputs less informative for training student models
- In production agent systems, anti-distillation may involve monitoring for extraction patterns, limiting output granularity, or adding noise
- Related to the Claude Code source leak incident — the harness engineering revealed how production-scale agent systems protect their core intelligence
- Balances open API access with protection against model cloning and competitive threats

## Related Concepts
- [[ablation-experiments]]
- [[circuit-breakers]]

## Sources
- [[harness-engineering-claude-code]]
- [[index]]
