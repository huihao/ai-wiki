---
created: 2026-04-29
updated: 2026-05-09
tags: [economics, game-theory]
sources: 1
---

# Game Theory

## Definition

Game theory is the mathematical study of strategic interaction among rational agents, where the outcome for each participant depends on the actions of all. In machine learning, game theory provides foundational concepts for understanding adversarial training (GANs), multi-agent systems, online learning dynamics, and the convergence properties of optimization algorithms through the lens of equilibrium and regret.

## Key Aspects

- Nash equilibrium: a strategy profile where no player can unilaterally improve their payoff — the central solution concept, connecting to GAN convergence where generator and discriminator reach a stable point
- Minimax theorem: in zero-sum games, the value of the game equals the minimax value; optimal strategies form a saddle point, directly relating to adversarial robustness in ML
- Regret minimization bridges online learning and game theory: no-regret algorithms guarantee that average performance approaches the best fixed strategy, and repeated play with no-regret learners converges to correlated equilibrium
- The connection to optimizers: AdaGrad was originally analyzed in the online/adversarial setting (minimizing regret), and Adam extends this with momentum — both rooted in game-theoretic online learning theory
- Mechanism design (reverse game theory): designing games/rules so that self-interested behavior leads to desired outcomes — relevant to incentive alignment in multi-agent AI systems and AI safety
- Evolutionary game theory studies how strategy populations evolve over time, relevant to understanding how competing AI systems (e.g., red-team vs. blue-team) reach stable strategy distributions
- Cooperative game theory (Shapley values) underlies SHAP, one of the most popular model explainability methods, where feature importance is computed as each feature's marginal contribution across all possible coalitions

## Related Concepts

- [[nash-equilibrium]]
- [[regret-minimization]]
- [[equilibrium-concepts]]
- [[gan-training]]

## Sources

- [[regret-minimization]]
