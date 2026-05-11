---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, normalization, transformer]
sources: 1
---
# QK LayerNorm

## Definition

QK LayerNorm applies layer normalization to the queries and keys before computing attention scores, preventing attention logits from growing unboundedly and helping stabilize training, especially in large models and at scale.

## Key Concepts

- Normalizing Q and K prevents the attention logits (QK^T / sqrt(d_k)) from becoming too large
- Without QK LayerNorm, attention logits can diverge, leading to loss spikes and training instability
- Pre-norm architectures (QK-LN before attention) are more stable than post-norm (LN after attention)
- QK LayerNorm interacts with the choice of positional encoding and other normalization strategies
- For large-scale training, QK LayerNorm can prevent loss divergence at higher learning rates
- The Muon optimizer benefits from QK LayerNorm as it helps maintain spectral properties
- There is debate about whether QK LayerNorm helps or hurts at different scales
- Some implementations apply separate LayerNorm to Q and K; others apply a shared norm
- The interaction between QK LayerNorm and RoPE (Rotary Position Embedding) requires careful consideration

## Related Concepts

- [[mup-parameterization]]
- [[muon-optimizer]]
- [[weight-decay-scaling]]

## Sources

- [[how-to-scale]]
