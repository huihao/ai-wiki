---
created: 2026-04-29
updated: 2026-05-09
tags: [game-theory, optimization]
sources: 1
---

# Equilibrium Concepts

## Definition

Equilibrium concepts in game theory and machine learning describe stable states where no participant can unilaterally improve their outcome. In the context of online learning and optimization, the connection between no-regret algorithms and game-theoretic equilibria is fundamental: if all players in a repeated game use no-regret learning algorithms, the empirical distribution of their strategies converges to an equilibrium.

## Key Aspects

- Nash equilibrium: a state where no player can improve their payoff by unilaterally changing their strategy — the central solution concept in game theory
- Correlated equilibrium: a broader concept where players follow a shared signal; no-regret learning dynamics converge to correlated equilibrium in repeated games
- In GAN training, the generator and discriminator play an adversarial game; gradient descent (a no-regret algorithm) drives both players toward Nash equilibrium, though non-convex objectives make convergence non-guaranteed
- Regret minimization provides an algorithmic path to equilibrium computation: repeated play with no-regret learners produces empirical strategy distributions that approximate equilibrium
- The Minimax theorem connects zero-sum games to optimization: the value of a zero-sum game equals the minimax value, and optimal strategies form a saddle point equilibrium
- Adaptive optimizers (AdaGrad, Adam) are rooted in regret minimization theory from online convex optimization, inheriting theoretical guarantees about convergence to equilibrium-like stable points
- In multi-agent reinforcement learning, equilibrium concepts guide the design of learning dynamics that converge to stable strategy profiles without requiring explicit coordination

## Related Concepts

- [[regret-minimization]]
- [[nash-equilibrium]]
- [[game-theory]]
- [[gan-training]]

## Sources

- [[regret-minimization]]
