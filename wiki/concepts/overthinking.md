---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Overthinking

## Definition

Overthinking is a failure mode in reasoning models where the model generates excessive intermediate reasoning tokens (sometimes consuming 1,953% more tokens on average) without corresponding improvements in answer quality, engaging in circular reasoning or diminishing-returns exploration.

## Key Aspects

- **Token Inefficiency**: Reasoning models can consume vastly more tokens than necessary for a given problem, with research showing average overconsumption approaching 2,000% for tasks that do not benefit from extended reasoning
- **Circular Reasoning**: Models may loop through the same reasoning paths repeatedly without making progress, wasting compute while producing the same or worse answers
- **Inverse Scaling**: Research challenges the assumption that more reasoning universally improves outputs -- Apple research shows reasoning models fail to develop generalizable problem-solving, with performance collapsing beyond a complexity threshold
- **Latency Cost**: Excessive reasoning directly translates to higher latency and cost, impacting real-world deployment decisions where response time matters
- **Hybrid Model Response**: Models like IBM Granite 3.2 and Claude 3.7 Sonnet implement toggleable reasoning modes, allowing users to choose when extended thinking is beneficial versus wasteful
- **Regression on Non-Reasoning Tasks**: Reasoning models can underperform on instruction-following tasks where deep reasoning is unnecessary, indicating overthinking as a task-mismatch problem

## Related Concepts

- [[outcome-reward-models]] -- Reward signals that do not penalize excessive reasoning length
- [[process-reward-models]] -- Step-level evaluation that could mitigate overthinking by identifying diminishing returns
- [[chain-of-thought]] -- The reasoning mechanism that, when unconstrained, leads to overthinking
- [[test-time-compute]] -- The inference-time resources consumed by overthinking

## Sources

- [[what-is-a-reasoning-model]]
