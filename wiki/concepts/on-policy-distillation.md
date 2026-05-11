---
created: 2026-04-28
updated: 2026-04-28
tags: [training]
sources: 1
---

# On-policy distillation

## Definition

On-policy distillation is a post-training method that samples trajectories from a student model and grades each token with a teacher model, combining the on-policy relevance of RL with the dense reward signal of supervised distillation.

## Key Proponents / Critics

- **Proponents**: Kevin Lu and Thinking Machines Lab, Agarwal et al., Qwen team
- **Inspiration**: DAGGER (Ross et al., 2010), process reward modeling (Lightman et al., 2023)

## Related Concepts

- [[on-policy-distillation-source|Knowledge distillation]] — off-policy variant
- [[reinforcement-learning-from-human-feedback|Reinforcement learning]] — sparse reward baseline
- Reverse KL divergence — loss function used
- [[machine-learning|Continual learning]] — recovering capabilities after fine-tuning

## Sources

- [[on-policy-distillation-source|On-Policy Distillation]]

## Evolution

- Traditional distillation: off-policy, teacher trajectories only.
- RL: on-policy but sparse rewards.
- On-policy distillation (2025): best of both worlds — dense per-token rewards on student-sampled trajectories. Achieves 9-30x compute savings vs. traditional methods.
