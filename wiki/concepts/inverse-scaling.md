---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Inverse Scaling

## Definition

Inverse scaling is a phenomenon where increasing the compute, data, or reasoning effort allocated to a model during inference leads to worse performance rather than better. It challenges the conventional assumption that more test-time compute universally improves outputs, and has been observed in reasoning models that engage in circular or self-contradictory reasoning when given extended thinking budgets.

## Key Aspects

- Observed in reasoning models that regress on instruction-following and simple tasks when extended reasoning is applied
- Research shows reasoning models can consume 1,953% more tokens on average without commensurate improvement in output quality
- Apple research found that reasoning models fail to develop generalizable problem-solving -- performance collapses beyond a certain complexity threshold
- Overthinking is a specific form: the model generates excessive intermediate reasoning that introduces noise rather than signal
- Contradicts the inference scaling hypothesis that test-time compute should be monotonically beneficial
- Hybrid models (Claude 3.7 Sonnet, IBM Granite 3.2) address this by offering toggleable reasoning modes, applying extended thinking only when the task genuinely benefits from it

## Related Concepts

- [[reasoning-llms]]
- [[test-time-compute]]
- [[overthinking]]

## Sources

- [[what-is-a-reasoning-model]]
