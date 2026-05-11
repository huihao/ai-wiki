---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Language Model Generation

## Definition

Language model generation is the process by which an autoregressive language model produces text one token at a time, each token being conditionally generated based on all previously generated tokens. At each step, the model computes a probability distribution over the entire vocabulary for the next token, samples (or selects) one, appends it to the sequence, and repeats until a stopping condition is met.

## Key Aspects

- The model computes P(next_token | previous_tokens) at each step, producing a probability distribution over the vocabulary via a softmax output layer
- Temperature controls the randomness of sampling: low temperature sharpens the distribution toward high-probability tokens; high temperature flattens it toward uniform
- Sampling strategies include greedy decoding (always pick the most probable token), top-k sampling, and nucleus (top-p) sampling
- Each generated token becomes part of the input for the next generation step, creating an outer loop of sequential token production
- The inner computation for each token is a single forward pass through the full network -- no loops within one token generation
- GPT-3 has approximately 175 billion weights, meaning each token generation requires approximately 175 billion multiply-add operations

## Related Concepts

- [[next-token-prediction]]
- [[language-modeling]]
- [[autoregressive-models]]

## Sources

- [[autoregressive-models]]
