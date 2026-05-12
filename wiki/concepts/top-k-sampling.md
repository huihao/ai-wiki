---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Top-k Sampling

## Definition

Top-k sampling is a token selection strategy used during text generation in language models where, at each decoding step, the model restricts its choice to the k most probable next tokens from the vocabulary before sampling, effectively pruning low-probability candidates to balance coherence and diversity.

## Key Aspects

- At each generation step, the model computes a probability distribution over the entire vocabulary via softmax, then retains only the k tokens with the highest logits.
- The probability mass is redistributed across the remaining k tokens, and one is sampled according to this truncated distribution.
- The parameter k directly controls diversity: small k (e.g., k=1) produces greedy deterministic output, while large k allows more creative and varied text.
- Top-k filtering removes tokens with negligible probability, preventing the model from sampling nonsensical outputs while still allowing reasonable variation.
- Often used in combination with temperature scaling: temperature adjusts the sharpness of the distribution before top-k truncation is applied.
- Unlike nucleus (top-p) sampling, the number of candidate tokens is fixed regardless of the shape of the probability distribution, which can be either too restrictive or too permissive depending on context.

## Related Concepts

- [[top-p-sampling]] -- nucleus sampling, an alternative truncation strategy based on cumulative probability
- [[temperature-parameter]] -- controls randomness before top-k filtering
- [[greedy-decoding]] -- the extreme case where k=1

## Sources

- [[transformer-explainer-visually-explained]]
