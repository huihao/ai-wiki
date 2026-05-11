---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 1
---

# GQA (Grouped Query Attention)

## Definition

Grouped Query Attention (GQA) is a memory-efficient variant of multi-head attention in which multiple query heads share a single set of key and value projections, reducing the total size of the KV cache. GQA is widely adopted in LLaMA-2/3, Mistral, Qwen, and other production LLMs, enabling long-context inference on consumer GPUs where VRAM is limited.

## Key Aspects

- **Memory Reduction**: Instead of each query head having its own K and V projections (MHA), groups of query heads share one KV projection, reducing KV cache size proportionally
- **VRAM Breakdown**: For a model with P parameters at b_kv bytes per KV weight, the KV cache per token is: 2 * L * d/g * b_kv / 1024^3 GB, where L is layers, d is head dimension, and g is the sharing ratio
- **Long-Context Enablement**: On a 12GB GPU with Q4_K_M quantization, GQA can extend usable context from 4K-8K tokens to ~20K tokens for 13-14B parameter models
- **Architecture Spectrum**: MHA (no sharing) -> GQA (grouped sharing) -> MQA (single KV pair for all heads); GQA strikes the best balance between quality and memory
- **Production Adoption**: LLaMA-2, LLaMA-3, Mistral, Qwen 2.5, and Gemma all use GQA as the default attention mechanism

## Related Concepts
- [[gpu-memory-bandwidth]]
- [[gpu-inference]]

## Sources
- [[context-kills-vram]]
