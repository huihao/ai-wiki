---
created: 2026-04-29
updated: 2026-05-09
tags: [context, llm]
sources: 2
---

# Context Window Extension

## Definition
Context window extension refers to a family of techniques that enable LLMs to process and generate text beyond the sequence length they were originally trained on. These methods modify positional encodings to extrapolate or interpolate position information, allowing models to handle much longer inputs without catastrophic degradation.

## Key Aspects
- Original transformers used absolute positional embeddings (APE) that fail catastrophically beyond training length
- Rotary Position Embeddings (RoPE) encode position via rotation matrices, enabling relative position awareness
- Position Interpolation compresses positions to stay within training range rather than extrapolating
- NTK-aware scaling modifies the RoPE base frequency to slow all rotation frequencies proportionally
- Dynamic NTK adapts the scaling factor based on actual sequence length at inference time
- YaRN combines NTK-by-parts interpolation with attention temperature scaling for 128K+ context
- These techniques enabled scaling from 512 tokens (original Transformer) to 2M+ tokens (Gemini, Grok-4)

## Related Concepts
- [[context-engineering]]
- [[convolution]]

## Sources
- [[aman-arora]]
- [[how-llms-scaled-from-512-to-2m-context]]
