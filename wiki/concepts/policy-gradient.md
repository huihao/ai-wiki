---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Policy Gradient

## Definition

Policy gradient is a family of reinforcement learning algorithms that optimize a parameterized policy directly by computing gradients of expected reward with respect to the policy parameters. Unlike value-based methods that learn a value function and derive a policy, policy gradient methods update the policy itself through gradient ascent on expected returns.

## Key Aspects

- The policy gradient theorem provides an unbiased estimator of the gradient of expected return with respect to policy parameters, enabling direct optimization
- GAE (Generalized Advantage Estimation) combines multiple time horizons (lambda values) to reduce variance in policy gradient estimates while maintaining low bias
- PPO (Proximal Policy Optimization) is the most widely used policy gradient algorithm in LLM alignment, using a clipped objective to prevent destructive large policy updates
- The RLHF training loop applies policy gradient methods to align language models with human preferences using reward models trained on human feedback
- Policy gradient methods are on-policy: they require fresh samples from the current policy, trading sample efficiency for training stability
- The REINFORCE algorithm is the simplest policy gradient method: it uses Monte Carlo returns as the advantage estimate, but has high variance
- Modern policy gradient implementations combine clipped objectives, value function baselines, and entropy regularization for stable training

## Related Concepts

- [[ppo]]
- [[on-policy-rl]]

## Sources

- [[nathan-lambert]]
- [[rlhf-book-nathan-lambert]]
