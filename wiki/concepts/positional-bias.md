---
created: 2026-04-29
updated: 2026-05-09
tags: [behavior, interpretability, llm, problem]
sources: 0
---

# Positional Bias

## Definition

Positional bias is a phenomenon in transformer-based language models where the model's attention and prediction quality varies systematically based on the position of tokens in the input sequence. Models tend to favor tokens that are closer to the current generation position and pay less attention to tokens further away in the sequence. This interacts with other factors like exposure bias and data quality to affect generation reliability. Positional bias can manifest as a recency bias (favoring recent tokens) or as uneven attention to information placed at different points in a long context.

## Key Proponents / Critics

- [[anthropic]] — researches positional encoding and context window behavior in large language models
- [[openai]] — has studied context window limitations and positional bias in GPT models

## Related Concepts

- [[positional-encoding]] — the mechanism that injects position information into transformer models, which directly causes positional bias
- [[attention-mask]] — controls which positions can be attended to, interacting with positional bias
- [[context-window]] — the finite context window amplifies positional bias for long inputs
- [[hallucination]] — positional bias contributes to hallucination when important context is far from the generation point
- [[transformers]] — the fundamental architecture in which positional bias arises
- [[self-attention]] — the attention mechanism where positional bias manifests as uneven token weighting
- [[long-context-llms]] — techniques that specifically aim to mitigate positional bias over extended contexts
- [[hallucination]] — positional bias is a contributing factor to model hallucination

## Related Entities

- No entity pages currently link to this concept

## Sources

- No source pages currently link to this concept

## Evolution

- **2017**: The original transformer paper introduces sinusoidal positional encoding; positional effects are noted
- **2021**: Research on RoPE and ALiBi shows different positional encoding schemes have different bias characteristics
- **2023**: Studies reveal positional bias affects long-context performance; models struggle with information at sequence boundaries
- **2024**: Positional interpolation and NTK-aware scaling are developed to address positional bias in extended contexts
- **2025**: Research continues into position-independent architectures that reduce positional bias
