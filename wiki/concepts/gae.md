---
created: 2026-04-29
updated: 2026-05-09
tags: [rl, training]
sources: 2
---

# GAE

## Definition
Generalized Advantage Estimation (GAE) is a method for computing advantage functions in reinforcement learning that balances the trade-off between bias and variance by exponentially weighting n-step temporal-difference errors. It is the standard advantage estimation technique used in PPO (Proximal Policy Optimization), the primary algorithm for RLHF alignment of language models.

## Key Aspects
- GAE computes advantage as a weighted sum of TD errors across all future timesteps, with decay factor lambda
- Lambda parameter controls the bias-variance tradeoff: lambda=0 gives one-step TD (high bias, low variance), lambda=1 gives Monte Carlo (low bias, high variance)
- In RLHF, GAE estimates how much better an action was compared to the baseline policy
- Combined with PPO's clipped objective, GAE provides stable policy gradient updates
- Nathan Lambert's RLHF book covers GAE as a core component of the RL optimization stage
- The advantage function A(s,a) = Q(s,a) - V(s) quantifies the relative value of actions
- GAE is computed efficiently in a single backward pass through collected trajectories

## Related Concepts
- [[generalization]]
- [[decision-making]]

## Sources
- [[nathan-lambert]]
- [[rlhf-book-nathan-lambert]]
