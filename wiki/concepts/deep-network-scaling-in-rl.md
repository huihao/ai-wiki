---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Deep Network Scaling in RL

## Definition

Deep network scaling in reinforcement learning refers to the discovery that very deep neural networks (1000+ layers) can significantly boost performance in self-supervised reinforcement learning tasks, overturning the long-held assumption that RL algorithms provide insufficient gradient signal to effectively train deep networks. This finding was recognized as a NeurIPS 2025 Best Paper.

## Key Aspects

- The conventional wisdom held that RL's sparse, high-variance reward signals cannot effectively train very deep networks due to vanishing/exploding gradients
- Research demonstrated that 1024-layer networks significantly boost self-supervised RL performance in goal-reaching tasks
- Works without demonstrations or explicit rewards, using self-supervised objectives to shape learning
- Depth emerges as a critical scaling factor for RL, analogous to how depth has driven progress in supervised learning
- Self-supervised RL trains agents to reach arbitrary goals in an environment without task-specific rewards, using representation learning objectives
- Challenges the assumption that RL information is fundamentally insufficient for deep network training
- Opens new research directions in combining architectural depth with RL training paradigms

## Related Concepts

- [[self-supervised-reinforcement-learning]]
- [[neural-scaling-laws]]
- [[deep-networks]]
- [[reinforcement-learning]]
- [[representation-learning]]

## Sources

- [[announcing-neurips-2025-best-paper-awards]]
