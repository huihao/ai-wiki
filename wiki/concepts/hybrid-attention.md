---
created: 2026-04-28
updated: 2026-04-28
tags: [attention, long-context, transformer]
sources: 1
---

# Hybrid Attention

## Definition

An architectural approach that replaces most full-attention or self-attention layers with cheaper linear-attention or state-space modules (e.g., Gated DeltaNet, Mamba-2), while retaining periodic heavy attention layers for exact retrieval. This trades some modeling quality for dramatically better long-context efficiency.

## Key Attributes

- **Linear/state-space layers**: Most layers use sub-quadratic sequence models instead of standard attention.
- **Periodic heavy attention**: Occasional full-attention layers preserve the ability to do exact long-range retrieval.
- **Inference challenges**: Inference stacks are less optimized for hybrid architectures, so local throughput may lag classic setups despite theoretical advantages.
- **Key models**: Qwen3-Next/3.5 (Gated DeltaNet + Gated Attention), NVIDIA Nemotron 3 Nano/Super (Mamba-2 hybrids), Ling 2.5 (MLA + Lightning Attention).

## Related Concepts

- [[multi-head-attention-from-scratch|Multi-head attention]] — the standard attention baseline
- [[pytorch|State-space models]] — Mamba-2 and related sequence models
- [[positional-encoding|Linear attention]] — sub-quadratic attention variants (e.g., Lightning Attention, DeltaNet)
- [[sliding-window-attention]] — another efficiency-oriented attention variant
- [[llms-practical-guide|Long-context LLMs]] — models optimized for extended sequences

## Sources

- [[a-visual-guide-to-attention-variants-in-modern-llms]] — comparison of hybrid stacks across vendors

## Evolution

- **2024**: Mamba-2 and related state-space models mature as attention alternatives.
- **2025**: Qwen, NVIDIA, and Ling release hybrid architectures combining attention with linear layers.
- **Current**: A promising but still maturing direction; inference ecosystem catching up.
