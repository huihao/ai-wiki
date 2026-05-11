---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 2
---

# Attention Sink

## Definition
Attention sink is a phenomenon in transformer models where attention mechanisms disproportionately concentrate on certain tokens (often the first token or special tokens) regardless of their semantic relevance. This can degrade model performance on long-context tasks. Gated attention — applying sigmoid gating after scaled dot-product attention — has been shown to mitigate this effect.

## Key Aspects
- Attention sink causes models to wastefully allocate attention to irrelevant tokens, reducing effective context utilization
- Identified as a key challenge in long-context LLM applications, limiting extrapolation beyond training context lengths
- Gated attention (sigmoid gating after attention scores) consistently improves performance and training stability
- Validated across 30 architecture variants on 15B MoE and 1.7B dense models trained with 3.5T tokens
- NeurIPS 2025 Best Paper recognized gated attention for simultaneously mitigating attention sink and enabling long-context extrapolation
- Simple to implement — a sigmoid gate after attention computation — making it widely adoptable

## Related Concepts
- [[attention-manipulation]]
- [[autoregressive-generation]]

## Sources
- [[announcing-neurips-2025-best-paper-awards]]
- [[gated-attention]]
