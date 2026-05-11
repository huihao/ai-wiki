---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Inference-Time Compute Scaling

## Definition

Inference-time compute scaling (also called test-time scaling) improves LLM reasoning by increasing computational resources during inference without modifying model weights. The core idea is to trade off increased computational resources for improved performance, similar to how humans give better responses when given more time to think.

## Key Proponents / Critics

- Researchers developing methods for reasoning optimization
- [[sebastian-raschka|Sebastian Raschka]] — Documented extensive research in this area (2025)
- [[openai|OpenAI]] — Implemented in o1 reasoning models
- [[deepseek|DeepSeek]] — Tested but categorized as "unsuccessful attempts" for R1

## Methods

- **Chain-of-thought prompting** — Guides models to generate intermediate reasoning steps
- **Majority voting** — Selects best answer from multiple independent completions
- **Beam search** — Explores multiple reasoning paths simultaneously
- **Process reward models** — Selects best solutions using reward scoring
- **Budget forcing** — Controls response length through token insertion ("Wait" tokens) or early stopping
- **Monte Carlo Tree Search** — Tree-based search for optimal reasoning paths
- **Self-backtracking** — Allows models to recognize and correct suboptimal paths

## Related Concepts

- [[reasoning-llms|Reasoning Models]] — LLMs designed for multi-step problem solving
- [[test-time-scaling|Test-Time Scaling]] — Synonymous term for inference-time compute scaling
- [[chain-of-thought|Chain-of-Thought Prompting]] — Specific technique within this category
- [[budget-forcing|Budget Forcing]] — Token-based length control method
- [[process-reward-models|Process Reward Models]] — Solution selection mechanism
- [[distributed-training|Distributed Training]] — Complementary approach (training-time scaling)

## Sources

- [[the-state-of-llm-reasoning-model-inference|The State of LLM Reasoning Model Inference]]

## Evolution

Inference-time compute scaling has become one of the hottest research topics in 2025 for improving LLM reasoning. Key findings:

- Small models with proper inference-time scaling can outperform much larger models without it
- Effectiveness depends on task and difficulty—no single technique works best across all tasks
- Increases inference costs, but may still be cheaper than training larger models
- Can be applied to any existing LLM to improve performance on specific tasks
- Many LLM providers now offer "thinking on demand" features using this approach

Trade-offs:
- Improved reasoning vs. increased latency and cost
- Better accuracy vs. response speed (users may prefer faster responses for simple tasks)
- No universal best technique—depends on task complexity and domain