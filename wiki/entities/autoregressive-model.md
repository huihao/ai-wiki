---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/architecture]
sources: 1
---

# Autoregressive Model

## Summary
An autoregressive model is a generative model that predicts the next element in a sequence conditioned on all previously generated elements. This left-to-right generation strategy decomposes the joint probability of a sequence into a product of conditional probabilities. Autoregressive models are the dominant architecture for large language models, including GPT, Claude, and LLaMA.

## Key Attributes
- **Type**: concept/architecture
- **Notable for**: being the foundational paradigm behind modern large language models and text generation systems
- **Other facts**: generates tokens one at a time from left to right; each token is conditioned on all prior tokens; training uses teacher forcing with cross-entropy loss; inference is inherently sequential, which limits generation speed compared to parallel decoding methods

## Related Entities
- [[openai]] -- GPT-series models use autoregressive transformer architectures
- [[anthropic]] -- Claude models are autoregressive language models
- [[deepseek]] -- DeepSeek models employ autoregressive generation

## Related Concepts
- [[autoregressive-generation]] -- the process of generating sequences one token at a time
- [[autoregressive-failure]] -- known failure modes of autoregressive generation
- [[causal-attention]] -- causal (masked) self-attention enforces the autoregressive property in transformers
- [[next-token-prediction]] -- the training objective for autoregressive language models
- [[transformer-architecture]] -- transformers with causal masking are the standard autoregressive backbone
- [[exposure-bias]] -- a known limitation where training uses ground-truth context but inference uses model predictions

## Sources
- [[causal-attention]] -- discusses how causal attention masks enable autoregressive generation in transformer models

## Contradictions / Open Questions
- Autoregressive models suffer from exposure bias (training vs. inference mismatch) and compounding errors during long-form generation. Research into diffusion-based and masked prediction approaches seeks to address these limitations.
