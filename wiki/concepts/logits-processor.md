---
created: 2026-04-29
updated: 2026-05-09
tags: [generation, nlp]
sources: 1
---

# Logits Processor

## Definition

A logits processor is a component in language model inference that modifies the raw output logits (unnormalized scores) of a model before they are sampled or decoded into tokens. Logits masking and processing techniques control generation behavior by suppressing, scaling, or reweighting token probabilities to enforce constraints such as avoiding certain tokens, controlling randomness, or implementing structured decoding.

## Key Aspects

- Raw logits represent unnormalized log-probabilities for each token in the vocabulary
- Logits masking sets logits of forbidden tokens to negative infinity, effectively preventing their selection during sampling
- Temperature scaling divides logits by a temperature parameter: lower temperature makes output more deterministic, higher temperature increases randomness
- Top-k and top-p (nucleus) sampling restrict the token distribution to the most probable candidates
- Logits processors enable constrained generation: enforcing JSON format, preventing specific words, or guiding output structure
- In Hugging Face Transformers, logits processors are applied as a pipeline step between model forward pass and sampling
- Critical for production LLM applications where output format and safety constraints must be enforced programmatically

## Related Concepts

- [[llm]]
- [[llm-sdk]]
- [[masked-self-attention]]

## Sources

- [[logits-masking]]
