---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Autoregressive Generation

## Definition
Autoregressive generation is the process by which language models produce text one token at a time, where each new token is conditioned on all previously generated tokens. This left-to-right decomposition of sequence probability — P(x1, x2, ..., xn) = P(x1) * P(x2|x1) * ... * P(xn|x1,...,xn-1) — is the fundamental decoding paradigm for modern LLMs.

## Key Aspects
- Each token is sampled from a conditional distribution over the vocabulary given all preceding tokens
- During training, teacher forcing provides ground-truth previous tokens; during inference, previously generated tokens are fed back
- Enables diverse outputs through sampling strategies (temperature, top-k, top-p) but can accumulate errors (exposure bias)
- Connection to language model multiverse: each sampling decision creates a branching tree of possible continuations
- Beam search and other decoding strategies explore multiple branches of the autoregressive tree to find higher-probability sequences
- KV cache is essential for efficient autoregressive inference, avoiding recomputation of attention for previously generated tokens

## Related Concepts
- [[beam-search]]
- [[attention-sink]]

## Sources
- [[language-model-multiverse]]
- [[teacher-forcing]]
