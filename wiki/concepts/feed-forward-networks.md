---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 2
---

# Feed-Forward Networks

## Definition

Feed-forward networks (FFN) in transformers are position-wise, two-layer neural networks that act independently on every token. They expand the token's feature vector, apply nonlinear transformation, and contract back to original dimensionality, enabling complex feature interactions beyond what attention alone can encode.

## Key Proponents / Critics

- Google Brain researchers (original Transformer paper)
- [[avichala|Avichala]] — Practical production perspective
- Production ML teams optimizing transformer inference

## Related Concepts

- [[transformers|Transformers]] — Architecture containing FFN blocks
- [[attention-mechanisms|Attention Mechanism]] — Complementary component (attention = context, FFN = transformation)
- [[gelu|GELU Activation]] — Standard nonlinear activation
- [[layer-normalization|Layer Normalization]] — Stability mechanism around FFN
- [[residual-connections|Residual Connections]] — Skip connections around FFN sublayers
- [[mixture-of-experts|Mixture-of-Experts]] — Sparse FFN evolution

## Sources

- [[everything-about-transformers|Everything About Transformers]]
- [[explain-feed-forward-network-transformer-block|Explain the Feed-Forward Network in a Transformer Block]]

## Evolution

FFN evolved from simple two-layer MLPs in early transformers to production-optimized blocks dominating per-token compute costs. Original architecture used 4x expansion factor (512 → 2048 → 512) with ReLU, later shifted to GELU for smoother gradients. Production systems implement kernel fusion, mixed precision, and careful memory management. Future directions include MoE architectures selectively activating FFN subsets per token, enabling massive capacity without linear compute increase. Domain-specific fine-tuning often focuses on FFN transformations for specialized knowledge injection.