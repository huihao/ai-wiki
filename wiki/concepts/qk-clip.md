---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# QK-Clip

## Definition

Per-head weight clipping mechanism that monitors the maximum attention logits in each attention head during training. When the max logit exceeds a threshold (τ=100), the Q and K weight matrices for that head are clipped. Prevents attention logit explosion that destabilizes training at trillion-parameter scale.

## Key Proponents / Critics

- [[moonshot-ai]] — developed as part of [[muonclip-optimizer]] for Kimi-K2 training

## Related Concepts

- [[muonclip-optimizer]] — optimizer that integrates QK-Clip
- [[multi-head-attention]] — the mechanism whose stability QK-Clip preserves
- [[multi-head-latent-attention]] — MLA variant where QK-Clip is applied

## Sources

- [[kimi-k2-deepseek-v3-training]] — primary source

## Evolution

- **Problem**: In large-scale MoE models using Muon optimizer, attention logits (QK^T) can grow without bound during training, causing softmax to saturate and gradients to vanish — destabilizing the entire training run
- **Solution (2026, Moonshot AI)**: Track per-head max logits. When any head's max logit exceeds τ=100, clip that head's Q and K weight matrices. Simple intervention that restored training stability for the 1.04T parameter Kimi-K2
