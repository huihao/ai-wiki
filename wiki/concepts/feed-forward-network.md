---
created: 2026-04-28
updated: 2026-04-28
tags: [architecture, transformer]
sources: 2
---

# Feed-Forward Network

## Definition

A position-wise two-layer MLP within each Transformer block that transforms the contextual representations produced by attention into richer, task-specific features. It processes each token independently — attention mixes information across tokens; the FFN transforms information within each token.

## Key Attributes

- **Structure**: expand → nonlinear activation → contract. Common expansion factor is ~4× the embedding dimension.
- **Per-token independence**: Unlike attention, the FFN does not mix information across positions.
- **Compute dominance**: The FFN is often the dominant contributor to per-token compute and memory in production systems.
- **Activations**: GELU is the most common modern activation (BERT, GPT-2, GPT-3); SwiGLU is used in Llama and recent models.
- **Production optimizations**: Fused kernels, mixed precision (FP16/bfloat16), memory layout tuning, and batching.
- **Future direction**: Mixture-of-Experts (MoE) within FFNs to scale capacity without linear compute increase.

## Related Concepts

- [[transformers]] — how attention, normalization, and FFN compose
- [[layer-normalization]] — Pre-LN vs Post-LN placement around FFN
- [[gelu]] — common activation function
- [[swiglu]] — modern activation used in Llama
- [[mixture-of-experts]] — sparse FFN activation for scaling
- [[this-kernel-was-faster-yesterday|Kernel fusion]] — GPU optimization for FFN layers

## Sources

- [[the-parts-of-a-transformer-nobody-talks-about|The Parts of a Transformer Nobody Talks About (But That Make It Work)]] — accessible explanation with code
- [[feed-forward-network|Explain the Feed-Forward Network in a Transformer Block]] — production and engineering considerations

## Evolution

- **2017**: Original Transformer used ReLU activation.
- **2018–2020**: GELU becomes standard (BERT, GPT-2/3).
- **2022+**: SwiGLU replaces GELU in Llama and many successors.
- **2023+**: MoE architectures (Mixtral, DeepSeek) apply sparsity to FFN layers, routing each token to a subset of experts.
