---
created: 2026-05-12
updated: 2026-05-12
tags: [entity]
sources: 1
---

# Kimi-K2

## Summary

Moonshot AI's 1.04 trillion parameter Mixture-of-Experts (MoE) language model with 32.6B activated parameters per token. Builds on DeepSeek-V3 with increased sparsity (384 experts, 8 active, 48:1 ratio) and reduced attention heads (128→64). Uses the MuonClip optimizer for training stability. Achieves 66.1 Tau2-bench, 76.5 ACEBench, 65.8 SWE-bench Verified, and ranks 5th on LMSYS Arena.

## Key Attributes

- **Total parameters**: 1.04T (54% more than DeepSeek-V3)
- **Active parameters**: 32.6B per token (13% fewer than DeepSeek-V3)
- **Experts**: 384 total, 8 active per token, sparsity ratio 48:1
- **Attention heads**: 64 (reduced from 128 in DeepSeek-V3 — saves 83% inference FLOPs at 128k context for only 0.5-1.2% validation loss cost)
- **Training data**: 15.5T tokens
- **Optimizer**: MuonClip (Muon + QK-Clip)
- **Creator**: [[moonshot-ai]]
- **Key benchmarks**: 66.1 Tau2-bench, 76.5 ACEBench, 65.8 SWE-bench Verified, 5th on LMSYS Arena (top open-source)

## Related Entities

- [[moonshot-ai]] — creator
- [[deepseek]] — DeepSeek-V3 architecture Kimi-K2 builds on
- [[anthropic]] — Claude 4 Opus/Sonnet used for comparison

## Related Concepts

- [[mixture-of-experts]] — MoE architecture with 384 experts
- [[muonclip-optimizer]] — Muon + QK-Clip optimizer for training stability
- [[qk-clip]] — per-head weight clipping to prevent attention logit explosion
- [[sparsity-scaling-law]] — relationship between expert count and loss
- [[multi-head-latent-attention]] — MLA mechanism extended with max logit tracking
- [[knowledge-data-rephrasing]] — synthetic data generation for training
- [[token-utility]] — effective learning signal per token

## Sources

- [[kimi-k2-deepseek-v3-training]] — primary technical deep-dive

## Contradictions / Open Questions

- Inference cost comparison to DeepSeek-V3 in practice is not provided
- Computational cost of the synthetic rephrasing pipeline is not disclosed
