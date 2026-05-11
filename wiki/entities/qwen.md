---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, model-family, alibaba]
sources: 0
---

# Qwen

## Summary

Qwen is a family of large language models developed by Alibaba Cloud. The series includes dense and MoE variants, with recent models incorporating innovations like gated attention. Qwen3-Next adopted the gated attention mechanism from NeurIPS 2025 best paper research.

## Key Attributes

- **Developer**: Alibaba Cloud
- **Model variants**: Qwen (base), Qwen2, Qwen2.5, Qwen3, Qwen3-Next, Qwen-VL, Qwen-Coder
- **Notable feature**: Gated attention mechanism (head-specific sigmoid gate after SDPA)
- **Architecture**: Mixture-of-Experts (MoE) and dense variants
- **Context length**: Long-context capabilities, enhanced by gated attention

## Related Entities

- [[alibaba]] — parent company
- [[nvidia]] — hardware used for training

## Related Concepts

- [[self-attention|Gated Attention]] — sigmoid gating for improved performance
- [[mixture-of-experts|MoE]] — sparse activation architecture
- [[self-attention|Attention Sink]] — phenomenon mitigated by gated attention

## Sources

- [[neurips|neurips-2025-best-paper-awards]] — gated attention adopted in Qwen3-Next

## Contradictions / Open Questions

- How does Qwen compare to other open-weight model families (Llama, Mistral, DeepSeek) on coding and reasoning benchmarks?
