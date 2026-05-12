---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# AdamW Optimizer

## Definition

Adam optimizer with decoupled weight decay regularization. The standard optimizer for large-scale neural network training, including LLM pretraining. Computes per-parameter adaptive learning rates using first and second moment estimates of gradients, with separate weight decay applied directly to parameters rather than through the gradient.

## Related Concepts

- [[muon-optimizer]] — alternative optimizer with better token efficiency
- [[muonclip-optimizer]] — Muon + QK-Clip replacing AdamW in Kimi-K2
- [[gradient-descent]] — the family of optimization methods AdamW belongs to

## Sources

- [[kimi-k2-deepseek-v3-training]] — AdamW as baseline compared against by Muon

## Evolution

- **SGD with momentum**: Simple first-moment estimation. Good generalization but slow convergence on ill-conditioned problems
- **Adam (2015)**: Adaptive learning rates via first and second moment estimates. Fast convergence but can generalize worse than SGD
- **AdamW (2019)**: Decouples weight decay from the gradient update, fixing a subtle bug in L2 regularization with Adam. Became the de facto standard for transformer training
- **Muon (2025-2026)**: Momentum-based alternative that achieves better token efficiency than AdamW at the same validation loss
