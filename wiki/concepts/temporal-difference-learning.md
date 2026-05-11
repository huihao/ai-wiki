---
created: 2026-04-29
updated: 2026-05-09
tags: [reinforcement-learning]
sources: 1
---

# Temporal Difference Learning

## Definition

Temporal Difference (TD) learning is a core reinforcement learning method that combines Monte Carlo ideas with dynamic programming by updating value estimates based on the difference between consecutive predictions, without requiring a complete episode trajectory. TD learning enables agents to learn value functions from incomplete sequences by bootstrapping — using the current estimate of the next state's value to update the current state's value — making it the foundation of algorithms like Q-learning and SARSA.

## Key Aspects

- **Bootstrapping**: TD learning updates value estimates using other value estimates rather than waiting for complete return signals. The TD target is r + gamma * V(s'), where r is the immediate reward and V(s') is the current estimate of the next state's value.
- **TD error**: The quantity delta = r + gamma * V(s') - V(s) measures how surprising the transition was — a positive TD error means the outcome was better than expected, driving value updates in the positive direction.
- **Online, incremental learning**: Unlike Monte Carlo methods that require complete episode trajectories, TD methods update after every transition, enabling learning from ongoing experience without waiting for episode termination.
- **TD(lambda)**: Extends one-step TD to n-step and eligibility-trace-based methods, interpolating between TD(0) (one-step) and Monte Carlo (full trajectory) via the lambda parameter, controlling the bias-variance tradeoff.
- **Q-learning**: The most influential TD variant — learns the optimal action-value function Q*(s,a) directly using the update Q(s,a) += alpha * [r + gamma * max_a' Q(s',a') - Q(s,a)], enabling off-policy learning.
- **Convergence guarantees**: Under standard conditions (sufficient exploration, appropriate learning rate decay), tabular TD methods are guaranteed to converge to the true value function, though convergence in function approximation settings is less guaranteed.

## Related Concepts

- [[reinforcement-learning]]
- [[q-learning]]
- [[monte-carlo-methods]]
- [[eligibility-traces]]

## Sources

- [[distill-pub]]
