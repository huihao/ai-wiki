---
created: 2026-04-29
updated: 2026-05-09
tags: [generation, llm]
sources: 2
---

# Sampling Strategies

## Definition

Sampling strategies are the algorithms and techniques used to select the next token from a probability distribution during language model text generation, governing the balance between coherent, high-probability output and diverse, creative generation. Different strategies modify the distribution before sampling to achieve different behavioral characteristics in model output.

## Key Aspects

- Temperature sampling scales logits before softmax, controlling distribution sharpness
- Top-k sampling restricts selection to the k most probable tokens, truncating the tail
- Nucleus (top-p) sampling dynamically selects the smallest set of tokens whose cumulative probability exceeds threshold p
- Logits masking explicitly forbids certain tokens from being sampled, useful for controlling output format and content
- Flow matching provides an alternative continuous generation paradigm that interpolates between noise and data distributions
- Repetition penalty reduces probability of recently generated tokens to prevent loops
- Beam search maintains multiple candidate sequences and selects the most probable overall sequence
- The choice of strategy significantly affects output quality: too deterministic produces repetitive text, too random produces incoherent text
- Production systems often combine multiple strategies (e.g., temperature + top-p + repetition penalty)

## Related Concepts

- [[sampling-from-distributions]]
- [[temperature-parameter]]
- [[top-k-sampling]]
- [[nucleus-sampling]]
- [[logits-masking]]

## Sources

- [[flow-matching]]
- [[logits-masking]]
