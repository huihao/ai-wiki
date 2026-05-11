---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Nash Equilibrium

## Definition

A Nash Equilibrium is a concept from game theory describing a state in a strategic interaction where no player can improve their outcome by unilaterally changing their strategy, given the strategies of all other players. In machine learning and online learning contexts, it connects to regret minimization algorithms that converge toward equilibrium strategies in adversarial or multi-agent settings.

## Key Aspects

- **No unilateral deviation**: At equilibrium, each player's strategy is a best response to all other players' strategies — changing strategy alone cannot improve outcomes
- **Regret minimization connection**: Algorithms that minimize regret (the difference between the algorithm's performance and the best fixed strategy) converge toward Nash equilibrium in repeated games
- **Mixed strategies**: In many games, Nash equilibrium requires players to randomize over strategies (mixed Nash equilibrium) rather than playing deterministic actions
- **Computational complexity**: Finding Nash equilibrium is PPAD-complete in general, making exact computation intractable for large games
- **Online learning convergence**: No-regret learning algorithms (like multiplicative weights) guarantee that average play converges to Nash equilibrium in two-player zero-sum games
- **Existence guarantee**: John Nash proved that every finite game has at least one Nash equilibrium (possibly in mixed strategies)
- **AI safety implications**: Multi-agent AI systems may naturally converge toward equilibrium states that are not socially optimal
- **Applications in ML**: Used in GAN training (generator-discriminator equilibrium), multi-agent reinforcement learning, and adversarial robustness analysis

## Related Concepts

- [[regret-minimization]]
- [[game-theory]]
- [[online-learning]]
- [[multi-agent-reinforcement-learning]]

## Sources

- [[regret-minimization]]
