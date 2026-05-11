---
created: 2026-04-29
updated: 2026-05-09
tags: [inference]
sources: 2
---

# Test-Time Scaling

## Definition

Test-time scaling is the practice of increasing the computational budget allocated during LLM inference to improve output quality, encompassing techniques ranging from chain-of-thought prompting and majority voting to process reward models and Monte Carlo Tree Search. It is synonymous with inference-time compute scaling.

## Key Aspects

- Two main scaling axes exist: training compute (larger models, more data) and inference compute (more reasoning at generation time); test-time scaling focuses on the latter
- Major categories of test-time scaling methods include: pure chain-of-thought prompting, majority voting, beam search, process reward models, and MCTS-based search
- The s1 paper introduces budget forcing via "Wait" tokens that encourage models to self-verify and extend reasoning without additional training
- Test-Time Preference Optimization (TPO) performs iterative alignment during inference without weight changes, adapting model behavior at query time
- Underthinking (generating insufficient reasoning) is addressed by the Thought Switching Penalty, which discourages premature answer commits
- Latent reasoning approaches use recurrent depth to scale compute without generating explicit text traces
- Compute-optimal strategies dynamically allocate inference budget based on task complexity, model capability, and available PRM signals
- The trend toward "thinking on demand" features in commercial LLMs represents mainstream adoption of test-time scaling

## Related Concepts

- [[test-time-compute]]
- [[reasoning-llms]]
- [[inference-time-compute-scaling]]

## Sources

- [[inference-time-compute-scaling]]
- [[the-state-of-llm-reasoning-model-inference]]
