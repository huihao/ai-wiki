---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Top-p Sampling

## Definition

Top-p sampling (also called nucleus sampling) is a token selection strategy for language model text generation where, at each step, the model considers only the smallest set of tokens whose cumulative probability exceeds a threshold p, adapting the candidate pool dynamically based on the shape of the probability distribution.

## Key Aspects

- The model sorts tokens by descending probability, then adds tokens to the candidate set until their cumulative probability reaches the threshold p.
- Unlike top-k sampling, the number of candidate tokens varies: when the distribution is peaked, only a few tokens are considered; when it is flat, more tokens are included.
- Setting p=1.0 includes the entire vocabulary (no filtering), while p close to 0 produces nearly deterministic output.
- Top-p is often preferred over top-k because it adapts to the model's confidence: when the model is uncertain, more candidates survive; when confident, fewer are needed.
- Typically used together with temperature scaling: temperature reshapes the distribution first, then top-p truncation removes the long tail.
- The Hugging Face Transformers library and most LLM serving frameworks expose top-p as a standard sampling parameter alongside temperature and top-k.

## Related Concepts

- [[top-k-sampling]] -- fixed-width alternative that always retains exactly k tokens
- [[temperature-sampling]] -- reshapes the probability distribution before nucleus truncation
- [[transformer-explainer-visually-explained]] -- interactive visualization of the sampling process

## Sources

- [[transformer-explainer-visually-explained]]
