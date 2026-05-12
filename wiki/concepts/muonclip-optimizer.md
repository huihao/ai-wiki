---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# MuonClip Optimizer

## Definition

Optimizer used to train [[kimi-k2]], combining [[muon-optimizer|Muon]] (momentum-based optimizer with better token efficiency than AdamW) with [[qk-clip]] (per-head weight clipping when max attention logits exceed a threshold τ=100). Prevents attention logit explosion that plagued vanilla Muon at trillion-parameter scale.

## Key Proponents / Critics

- [[moonshot-ai]] — developed for Kimi-K2 training

## Related Concepts

- [[qk-clip]] — the clipping mechanism integrated into MuonClip
- [[multi-head-latent-attention]] — the attention mechanism where logit explosion occurs
- [[adamw-optimizer]] — the baseline optimizer MuonClip improves upon
- [[mixture-of-experts]] — the architecture trained with MuonClip

## Sources

- [[kimi-k2-deepseek-v3-training]] — primary source

## Evolution

- **Muon (pre-MuonClip)**: Better token efficiency than AdamW, but suffered from attention logit explosion at trillion-parameter scale — max logits grew unboundedly, destabilizing training
- **MuonClip (2026, Moonshot AI)**: Added QK-Clip — per-head monitoring of max attention logits against threshold τ=100. When exceeded, clipping is applied to Q/K weights. Enabled stable training of Kimi-K2's 1.04T parameters
