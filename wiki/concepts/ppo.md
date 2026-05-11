---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# PPO

## Definition

Proximal Policy Optimization (PPO) is a policy gradient reinforcement learning algorithm that constrains policy updates to a trust region around the previous policy, preventing destructively large updates while enabling stable, efficient training. It is the dominant algorithm used in RLHF (Reinforcement Learning from Human Feedback) for aligning large language models with human preferences.

## Key Aspects

- PPO uses a clipped surrogate objective that penalizes policy updates that deviate too far from the previous policy, with the clipping ratio (typically 0.2) controlling the trust region size
- The clipped objective: L = min(r_t * A_t, clip(r_t, 1-epsilon, 1+epsilon) * A_t), where r_t is the probability ratio and A_t is the advantage estimate
- In RLHF, PPO trains the language model policy using a reward model trained on human preference data, optimizing for outputs humans rate as better
- GAE (Generalized Advantage Estimation) provides low-variance, low-bias advantage estimates for PPO by combining n-step returns with exponential decay
- PPO is on-policy: it collects fresh trajectories from the current policy, requiring significant compute but providing stable, reliable optimization
- The algorithm's simplicity and stability made it the default choice for LLM alignment, used in InstructGPT, ChatGPT, and most RLHF implementations
- DPO (Direct Preference Optimization) emerged as an alternative that bypasses the reward model and PPO entirely, but PPO remains relevant for complex alignment scenarios requiring explicit reward modeling

## Related Concepts

- [[policy-gradient]]
- [[on-policy-rl]]

## Sources

- [[nathan-lambert]]
- [[rlhf-book-nathan-lambert]]
