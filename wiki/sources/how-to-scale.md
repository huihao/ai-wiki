---
created: 2026-04-29
updated: 2026-04-29
tags: [source, scaling, optimization, mup, neural-networks, training]
sources: 1
url: "https://howtoscalenn.github.io/"
title: "How To Scale"
---

# How To Scale

## Summary

An extensive technical guide on scaling neural networks, covering muP (Maximal Update Parameterization), hyperparameter transfer, critical batch size, learning rate scheduling, weight decay, and practical training considerations. The post is heavily inspired by Simo Ryu's work and provides detailed mathematical derivations alongside practical guidelines for large-scale LLM training.

## Key Takeaways

- muP (Maximal Update Parameterization) is fundamentally about ensuring every layer learns features maximally at each optimization step, not just about hyperparameter transfer
- Standard Parameterization (SP) only defines initialization std, while muP defines per-parameter initialization, multiplier, and learning rate
- muP ensures training dynamics transfer across widths because pre-activations remain Theta(1) scale regardless of network width
- The derivation relies on Law of Large Numbers (LLN) for correlated vectors and Central Limit Theorem (CLT) for uncorrelated vectors in dot products
- muP does NOT guarantee HP transfer across training tokens or batch size -- only across model width
- Critical Batch Size (cbsz) determines when increasing batch size no longer improves training efficiency
- Weight decay should be treated as an EMA window size, and can be scaled to achieve HP transfer across training horizons
- Truly decoupled weight decay (not PyTorch default) shows better transferability and performance
- Muon optimizer with spectral muP ensures maximal updates and HP transfer across width

## Entities Mentioned

- [[simo-ryu]] -- cloneofsimo, whose work inspired this post
- [[greg-yang]] -- author of Tensor Program series (muP)
- [[edward-hu]] -- co-author of TP-V
- [[keller-jordan]] -- creator of Muon optimizer
- [[google-deepmind]] -- authors of scaling exponent research
- [[deepseek]] -- first to empirically fit HP scaling laws for large-scale training

## Concepts Mentioned

- [[mup-parameterization]] -- Maximal Update Parameterization for stable infinite-width training
- [[scaling-laws]] -- universal relationships between compute, data, and model performance
- [[critical-batch-size]] -- the point where increasing batch size stops being efficient
- [[hyperparameter-transfer]] -- transferring optimal HPs across model scales
- [[abc-parameterization]] -- framework defining per-parameter a (multiplier), b (init std), c (lr)
- [[muon-optimizer]] -- Momentum Orthogonalized by Newton-Schulz, boosts directions with low eigenvalues
- [[qk-layernorm]] -- normalizing attention logits to prevent loss divergence
- [[weight-decay-scaling]] -- adjusting weight decay to maintain consistent training dynamics across scales

## Raw Notes

- Contains a comprehensive table of actual bsz and lr used in LLM pre-training (DeepSeek, MiniMax, Moonlight, MiniCPM, Granite, etc.)
- Discusses MoE-specific scaling challenges including output scale matching with gating scores
- The post argues against conventional wisdom (e.g., smaller batch size is not optimal in large-scale regimes)
- References the Stepfun Law as a recent and interesting HP scaling law approach
