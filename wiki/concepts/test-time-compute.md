---
created: 2026-04-29
updated: 2026-05-09
tags: [reasoning]
sources: 2
---

# Test-Time Compute

## Definition

Test-time compute (also called inference-time compute) is the strategy of increasing computational resources during the generation/inference phase of a language model to improve reasoning quality, rather than relying solely on larger models or more training data. It allows models to "think longer" by generating intermediate reasoning steps before producing a final answer.

## Key Aspects

- Reasoning models (o1, o3, DeepSeek R1, Claude thinking variants) implement test-time compute by generating explicit chain-of-thought traces before final outputs
- Two reward approaches enable training for test-time compute: Outcome Reward Models (verify final answer correctness) and Process Reward Models (score each reasoning step)
- Search-based methods (Monte Carlo Tree Search, self-consistency/majority voting) generate multiple reasoning paths and select the best one
- Budget forcing techniques (s1 paper's "Wait" tokens) encourage self-verification and longer reasoning through explicit length control
- Small models with effective test-time compute can outperform much larger models without it, challenging naive scaling assumptions
- Cost trade-off: increased inference compute raises per-query costs but may still be cheaper than training proportionally larger models
- No single test-time compute technique performs best across all tasks; effectiveness depends on task type and difficulty
- Commercial trend: most LLM providers now offer toggleable "thinking" features, likely the same model with adjustable inference-time compute budgets

## Related Concepts

- [[test-time-scaling]]
- [[reasoning-llms]]
- [[system-1-system-2-thinking]]

## Sources

- [[reasoning-llms]]
- [[what-is-a-reasoning-model]]
