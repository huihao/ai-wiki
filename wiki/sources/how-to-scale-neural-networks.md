---
created: 2026-04-28
updated: 2026-04-28
tags: [source, scaling, neural-networks, mup, hyperparameters, training]
sources: 1
---

# How To Scale

## Metadata

- **Author**: Seunghyun SEO
- **Date**: 2024-01-22 (updated 2025-12-31)
- **URL**: https://howtoscalenn.github.io/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How To Scale.md`

## Summary

An in-depth guide to scaling neural networks, focusing on how to set initialization std, learning rate, batch size, and other hyperparameters as model size and dataset size grow. Covers Maximal Update Parameterization (muP) from first principles, HP transfer across width/depth/tokens/bsz, critical batch size, and scaling laws from DeepSeek, StepFun, and others.

## Key Takeaways

- **muP (Tensor Program V)**: Ensures maximal feature learning and HP transfer across model width. Per-layer parameterization of init std, multiplier, and lr.
- **Standard Parameterization (SP)**: Only well-defined at initialization; fails during training (left-shifted lr curves).
- **muP rules**: Hidden layers use 1/n lr under Adam; embedding/unembedding have different scaling; residual outputs use depth scaling.
- **HP transfer limitations**: muP transfers across width but NOT automatically across training tokens or batch size.
- **Training horizon**: Longer training requires lower lr (left-shift). Can compensate via weight decay adjustment (Wang et al.).
- **Batch size**: Increasing bsz reduces steps; conventional sqrt(n) lr scaling rule. Critical batch size (cbsz) is the point of diminishing returns.
- **Scaling laws**: DeepSeek V1, StepFun Law, Moonlight — different papers fit lr/bsz vs compute budget C=6ND.
- **MoE considerations**: muP compatible but sensitive to init std and output scale matching between attn and FFN modules.
- **Truly decoupled weight decay**: PyTorch default couples WD with lr; causes divergence at scale. Use independent WD.

## Entities Mentioned

- [[seunghyun-seo|Seunghyun SEO]] — author
- [[greg-yang|Greg Yang]] — muP creator, Tensor Program co-author
- [[edward-hu|Edward Hu]] — muP co-author
- [[andrew-carr|Andrew Carr]] — confirmed muP usage at OpenAI (formerly)
- [[simo-ryu|Simo Ryu]] — inspiration source

- Greg Yang — muP/Tensor Programs author
- Edward Hu — muP co-author
- [[openai]] — GPT-4 reportedly used muP
- [[deepseek-sparse-attention|DeepSeek]] — DS-V1 scaling laws
- StepFun — StepFun Law for HP scaling
- Simo Ryu — "What to do to scale up?"

## Concepts Mentioned

- Maximal Update Parameterization — muP for width-scale invariant training
- [[model-scaling|Scaling laws]] — C=6ND, compute-optimal training
- [[transfer-learning|Hyperparameter transfer]] — tuning on small proxies for large models
- Critical batch size — point where larger bsz doesn't help convergence
- Weight decay — truly decoupled vs PyTorch default
- [[mixture-of-experts]] — scaling considerations for MoE

## Raw Notes

See raw file for detailed mathematical derivations, coordinate checks, and implementation tables.

## Questions / Follow-ups

- How do modern optimizers like Muon and SCION compare to muP+AdamW for HP transfer?
