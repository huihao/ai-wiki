---
created: 2026-04-29
updated: 2026-05-09
tags: [alignment, machine-learning]
sources: 2
---

# Reward Modeling

## Definition

Reward modeling is the process of training a model to predict human preferences and assign reward scores to language model outputs, forming a core component of RLHF (Reinforcement Learning from Human Feedback). The learned reward model provides the signal that drives policy optimization algorithms like PPO and DPO to align language model behavior with human values and intentions.

## Key Aspects

- Reward models are trained on human preference data: pairwise comparisons of model outputs rated by human annotators
- Two primary reward approaches: Outcome Reward Models (verify final answer correctness) and Process Reward Models (score each reasoning step)
- Rules-based rewards avoid reward model complexity entirely -- DeepSeek-R1-Zero uses simple accuracy and formatting rules
- Reward models must generalize beyond training distribution; overfitting leads to reward hacking
- RLHF pipeline stages: instruction tuning, reward model training, rejection sampling, reinforcement learning (PPO/GAE)
- Direct alignment algorithms (DPO and variants) bypass explicit reward modeling by directly optimizing from preference data
- Synthetic data generation can augment limited human preference data for reward model training
- Evaluation of reward models themselves is an open research challenge

## Related Concepts

- [[reinforcement-learning-from-human-feedback]]
- [[ppo]]
- [[dpo]]
- [[instruction-tuning]]
- [[alignment]]

## Sources

- [[nathan-lambert]]
- [[rlhf-book-nathan-lambert]]
