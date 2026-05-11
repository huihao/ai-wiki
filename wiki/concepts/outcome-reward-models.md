---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Outcome Reward Models

## Definition

Outcome Reward Models (ORMs) are a reward modeling approach for training reasoning models that evaluates only the final output of a chain-of-thought process, assigning reward based on whether the end result is correct rather than assessing intermediate reasoning steps.

## Key Aspects

- **Binary Correctness Signal**: ORMs provide a single scalar reward based on the correctness of the final answer, making them simpler to train and deploy compared to process reward models that score each reasoning step
- **Training Approach**: ORMs are trained on labeled datasets of (problem, reasoning trace, final answer, correctness) tuples, learning to predict whether a given trace leads to a correct outcome
- **RLVR Integration**: Outcome reward models are central to RLVR (Reinforcement Learning with Verifiable Rewards), where models like DeepSeek-R1 are trained using accuracy-based reward signals
- **Limitations Identified**: Research (NeurIPS 2025) shows that RLVR enhances sampling efficiency but does not expand reasoning capacity beyond base models -- it narrows exploration while amplifying rewarded trajectories
- **Comparison with Process Reward Models**: PRMs score each reasoning step and can guide search (e.g., MCTS), but require expensive step-level annotation; ORMs are cheaper to train but provide less granular feedback
- **Rules-Based Alternatives**: DeepSeek-R1-Zero demonstrates that simple accuracy plus formatting rules can substitute for a trained reward model entirely, avoiding ORM complexity for verifiable tasks

## Related Concepts

- [[process-reward-models]] -- Step-level reward signals as a more granular alternative
- [[overthinking]] -- Failure mode where reasoning models generate excessive tokens without improved accuracy
- [[chain-of-thought]] -- The reasoning traces that reward models evaluate
- [[reinforcement-learning]] -- The broader training paradigm in which ORMs operate

## Sources

- [[what-is-a-reasoning-model]]
