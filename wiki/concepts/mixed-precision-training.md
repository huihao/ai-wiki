---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Mixed-Precision Training

## Definition

Mixed-precision training uses lower precision formats (FP16 or bfloat16) for activations and gradients while maintaining FP32 master weights, reducing memory usage and accelerating computation while preserving model quality through automatic loss scaling.

## Key Proponents / Critics

- NVIDIA (mixed-precision training libraries)
- [[avichala|Avichala]] — Production deployment perspective
- Major AI companies (standard practice in large-scale training)

## Related Concepts

- [[feed-forward-networks|Feed-Forward Networks]] — Heavy compute component requiring mixed precision
- [[transformers|Transformers]] — Architecture benefiting from mixed precision
- [[layer-normalization|Layer Normalization]] — Numerical stability consideration under mixed precision

## Sources

- [[explain-feed-forward-network-transformer-block|Explain the Feed-Forward Network in a Transformer Block]]

## Evolution

Mixed precision became standard for training large transformers, enabling faster training on tensor cores while reducing memory bandwidth. FFN's large matrix multiplications particularly benefit from mixed precision. Automatic loss scaling prevents underflow/overflow in distributed environments. bfloat16 favored for better numerical stability than FP16 in some hardware. Production systems must carefully implement to prevent instabilities manifesting as quality degradation.