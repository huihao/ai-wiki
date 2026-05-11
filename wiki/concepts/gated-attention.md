---
created: 2026-04-28
updated: 2026-04-28
tags: [architecture]
sources: 1
---

# Gated Attention

## Definition

Gated attention is an architectural modification to softmax attention in large language models where a head-specific sigmoid gate is applied after the Scaled Dot-Product Attention (SDPA). This introduces non-linearity and sparse gating, improving performance and training stability.

## Key Modifications

- **Position**: Sigmoid gate applied after Scaled Dot-Product Attention (SDPA)
- **Head-specific**: Each attention head has its own gating mechanism
- **Non-linearity**: Introduces non-linearity upon low-rank mapping in softmax attention
- **Sparsity**: Query-dependent sparse gating scores modulate SDPA output

## Benefits

- **Performance**: Consistently improves LLM performance across tasks
- **Training stability**: Enhances training stability, tolerates larger learning rates
- **Attention sink mitigation**: Reduces massive activation and attention sink phenomenon
- **Long-context**: Improves long-context extrapolation performance
- **Scaling**: Better scaling properties compared to standard attention

## Evidence

- Tested on 30 variants of 15B Mixture-of-Experts (MoE) and 1.7B dense models
- Trained on 3.5 trillion token dataset
- Used in Qwen3-Next models

## Implementation

Code released at: https://github.com/qiuzh20/gated_attention
Models available: https://huggingface.co/QwQZh/gated_attention

## Related Concepts

- [[attention-mechanisms]] — Foundation architecture
- [[attention-sink]] — Problem mitigated by gating
- [[long-context-llms]] — Application area
- [[sparse-attention]] — Related approach

## Sources

- [[neurips-2025-best-paper-awards|Announcing the NeurIPS 2025 Best Paper Awards]]