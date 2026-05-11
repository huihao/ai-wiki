---
created: 2026-04-29
updated: 2026-05-09
tags: [attention, llm]
sources: 2
---

# Qwen3-Next

## Definition

Qwen3-Next is a model family from the Qwen team (Alibaba) that implements the Gated Attention mechanism recognized as a NeurIPS 2025 Best Paper. The architecture introduces simple sigmoid gating after scaled dot-product attention, which consistently improves performance, enhances training stability, mitigates attention sink, and enables long-context extrapolation across diverse model variants.

## Key Aspects

- Gated attention applies a simple sigmoid gate after standard scaled dot-product attention
- Validated across 30 architecture variants on both 15B MoE and 1.7B dense models with 3.5T training tokens
- Consistently improves performance across tasks and model configurations
- Mitigates the attention sink phenomenon where attention disproportionately weights certain tokens
- Enables long-context extrapolation, allowing models to generalize beyond their training context length
- Enhances training stability, reducing loss spikes and training instability
- The mechanism is simple to implement and expected to be widely adopted in future architectures
- Part of NeurIPS 2025 Best Paper recognition alongside work on diffusion models, self-supervised RL, and neural scaling laws

## Related Concepts

- [[gated-attention]]
- [[attention-mechanisms]]
- [[attention-sink]]
- [[long-context-models]]
- [[transformers]]

## Sources

- [[announcing-neurips-2025-best-paper-awards]]
- [[neurips-2025]]
