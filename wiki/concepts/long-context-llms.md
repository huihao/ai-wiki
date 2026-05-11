---
created: 2026-04-28
updated: 2026-05-09
tags: [architecture, context-window, llm]
sources: 0
---

# Long-context LLMs

## Definition

Long-context language models are models capable of processing very long input sequences -- typically 100,000 tokens or more -- through architectural and positional encoding innovations. Standard transformers have quadratic attention cost and fixed positional encodings that limit context length. Long-context LLMs address these limitations through techniques such as rotary positional embeddings (RoPE), position interpolation, NTK-aware scaling, sliding window attention, flash attention, and context compression methods. These models enable applications like whole-codebase analysis, long document understanding, and multi-turn conversations without information loss.

## Key Proponents / Critics

- [[anthropic]] — Claude supports 200K token context windows, among the longest in commercial models
- [[google-deepmind]] — Gemini models support very long context windows

## Related Concepts

- [[context-window]] — the maximum sequence length a model can process, which long-context methods extend
- [[context-window-extension]] — techniques for expanding the context window beyond original training length
- [[positional-encoding]] — the mechanism that must be extended for long-context support
- [[positional-bias]] — long-context models must address positional bias across extended sequences
- [[flash-attention]] — an efficient attention implementation critical for long-context feasibility
- [[sliding-window-attention]] — an attention pattern that reduces long-context computational cost
- [[attention-sink]] — the phenomenon where initial tokens receive disproportionate attention in long contexts
- [[transformer-scaling]] — long-context support is a key dimension of scaling transformer models
- [[kv-cache]] — key-value cache management becomes critical for long-context inference efficiency
- [[position-interpolation]] — a technique for extending RoPE-based models to longer contexts
- [[ntk-aware-scaling]] — a method for extending positional encoding to longer sequences

## Related Entities

- [[anthropic]] — Claude supports 200K+ token context windows
- [[google-deepmind]] — Gemini models offer very long context windows
- [[openai]] — GPT-4 Turbo and GPT-4o offer extended context windows

## Sources

- No source pages currently link to this concept

## Evolution

- **2020**: Transformer-XL and Longformer introduce efficient attention for longer sequences
- **2022**: Flash Attention makes long-context training and inference more memory-efficient
- **2023**: Position interpolation enables extending RoPE-trained models to longer contexts; Claude introduces 100K context
- **2024**: Google Gemini 1.5 supports 1M+ token context; Claude extends to 200K
- **2025**: Long context becomes a standard expectation for production LLMs; context caching and compression improve efficiency
