---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Sparsity Scaling Law

## Definition

In Mixture-of-Experts architectures, with activated parameters held constant, increasing the total number of experts consistently lowers both training and validation loss. This means a model can become more capable simply by adding more experts (and routing sparsity) without increasing per-token compute.

## Key Proponents / Critics

- [[moonshot-ai]] — demonstrated this law in [[kimi-k2]]'s training

## Related Concepts

- [[mixture-of-experts]] — the architecture where this scaling law applies
- [[scaling-laws]] — broader context of neural scaling laws
- [[kimi-k2]] — 384 experts, 8 active, demonstrating the law in practice

## Sources

- [[kimi-k2-deepseek-v3-training]] — primary source

## Evolution

- **DeepSeek-V3**: Established that MoE with 256 experts achieves strong results with sparser activation
- **Kimi-K2 (2026)**: Increased to 384 experts (8 active), sparsity ratio 48:1. Despite 13% fewer active parameters than DeepSeek-V3, achieved lower loss — providing empirical evidence for the sparsity scaling law. The total parameter count rose to 1.04T (54% more than DeepSeek-V3) while maintaining the same active-parameter budget
