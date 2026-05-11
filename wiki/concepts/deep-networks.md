---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Deep Networks

## Definition

Deep networks are neural networks with many layers (typically dozens to thousands) that learn hierarchical representations of data through successive transformations. In the context of reinforcement learning, recent research has shown that very deep networks can be effectively trained with self-supervised RL objectives, challenging the assumption that RL cannot support deep architectures.

## Key Aspects

- Deep networks learn hierarchical feature representations: early layers capture low-level patterns, deeper layers compose them into abstract concepts
- In self-supervised RL, agents learn to reach arbitrary goals without task-specific rewards using representation learning objectives
- The 1000-layer networks paper (NeurIPS 2025 Best Paper) demonstrated that depth is a critical scaling factor for RL performance
- Self-supervised RL enables goal-reaching tasks without demonstrations or explicit reward signals
- Very deep networks can be trained in RL settings when appropriate self-supervised objectives are used
- The finding overturns the conventional wisdom that RL's sparse, high-variance gradients cannot train deep architectures effectively
- Implications extend beyond RL: suggests that architectural depth may be underexplored across many RL application domains

## Related Concepts

- [[deep-network-scaling-in-rl]]
- [[self-supervised-reinforcement-learning]]
- [[reinforcement-learning]]
- [[representation-learning]]
- [[neural-scaling-laws]]

## Sources

- [[self-supervised-reinforcement-learning]]
