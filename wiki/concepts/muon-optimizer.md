---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Muon Optimizer

## Definition

A momentum-based optimizer for neural network training that achieves better token efficiency than [[adamw-optimizer]]. Uses a modified momentum update rule that improves convergence speed. At trillion-parameter scale, suffered from attention logit explosion — motivating the development of [[muonclip-optimizer]] which adds [[qk-clip]].

## Related Concepts

- [[muonclip-optimizer]] — MuonClip extends Muon with QK-Clip
- [[adamw-optimizer]] — the baseline optimizer Muon improves upon
- [[qk-clip]] — clipping mechanism added to stabilize Muon at scale

## Sources

- [[kimi-k2-deepseek-v3-training]] — Muon used in Kimi-K2 training

## Evolution

- **AdamW**: Standard optimizer for large-scale training. Good generalization but suboptimal token efficiency
- **Muon**: Momentum-based alternative with better token efficiency — achieves the same validation loss with fewer training tokens. However, at trillion-parameter scale, attention logits grow unboundedly, destabilizing training
- **MuonClip (2026)**: Adds QK-Clip to Muon, resolving the logit explosion issue while preserving token efficiency gains
