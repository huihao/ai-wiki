---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Self-Supervised Reinforcement Learning

## Definition

Self-supervised reinforcement learning applies self-supervised learning principles to RL, enabling agents to explore and learn goal-reaching capabilities without demonstrations or rewards. Network depth (up to 1024 layers) is critical for unlocking new capabilities.

## Key Innovations

- **Deep networks**: Uses up to 1024 layers (vs traditional 2-5 layers in RL)
- **No rewards/demos**: Unsupervised goal-conditioned setting, agent explores from scratch
- **Contrastive RL**: Self-supervised contrastive learning applied to goal-reaching
- **Scalability**: Substantial improvements when scaling depth

## Capabilities

- Agents explore without external guidance
- Learn to maximize likelihood of reaching commanded goals
- Qualitative changes in learned behaviors with deeper networks
- Increased success rates on locomotion and manipulation tasks

## Findings

- Performance increases by significant margins over contrastive RL baseline
- Outperforms other goal-conditioned baselines
- Deep networks enable emergence of sophisticated capabilities
- Batch size scaling important for deeper networks

## Applications

- Simulated locomotion tasks
- Manipulation tasks
- Goal-conditioned policy learning
- Autonomous exploration

## Implications

Challenges conventional assumption that RL cannot guide deep network parameters effectively. Demonstrates RL can scale with network depth, enabling new emergent capabilities.

## Related Concepts

- [[self-supervised-learning]] — Learning paradigm foundation
- [[reinforcement-learning]] — Core RL methodology
- [[goal-conditioned-rl]] — Specific approach
- [[deep-networks]] — Architectural innovation

## Sources

- [[neurips-2025-best-paper-awards|Announcing the NeurIPS 2025 Best Paper Awards]]