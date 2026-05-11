---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Goal-Conditioned RL

## Definition

Goal-conditioned reinforcement learning is a self-supervised RL paradigm where the agent learns to reach specified goal states without requiring human demonstrations. The agent is given a goal (typically a target state or observation) and must discover a policy that achieves it through exploration and reward signals. A NeurIPS 2025 best paper showed that scaling depth to 1,024 layers in goal-conditioned RL significantly boosts performance.

## Key Aspects

- **Self-Supervised Learning**: Goals can be automatically generated from the environment (e.g., randomly sampled states), eliminating the need for human-labeled demonstrations
- **Depth Scaling**: The 2025 paper by Wang et al. demonstrated that networks with 1,024 layers achieve dramatically better performance than shallow networks, challenging the assumption that RL signal is insufficient for deep networks
- **Universal Value Functions**: The value function generalizes across goals, learning V(s, g) = expected return from state s toward goal g
- **Hierarchical Decomposition**: Complex tasks can be decomposed into sub-goals, enabling multi-step planning through sequential goal achievement
- **Applications**: Robotic manipulation, navigation, game playing, and agentic task execution where explicit demonstrations are expensive or unavailable

## Related Concepts
- [[reinforcement-learning]]
- [[self-supervised-learning]]

## Sources
- [[neurips-2025-best-paper-awards]]
