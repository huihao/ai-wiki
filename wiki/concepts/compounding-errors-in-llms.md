---
created: 2026-04-29
updated: 2026-05-09
tags: [llm, probability]
sources: 2
---

# Compounding Errors in LLMs

## Definition
Compounding errors in LLMs refer to the phenomenon where once an unlikely or incorrect token is sampled during text generation, it becomes part of the context for subsequent predictions, biasing future token probabilities and potentially causing the model to drift further from coherent or factual output. This self-reinforcing cycle is a fundamental challenge in autoregressive generation.

## Key Aspects
- LLMs generate text one token at a time, each conditioned on all previously generated tokens
- An improbable token selection shifts the conditional probability distribution for all subsequent tokens
- Once the model drifts toward nonsense, the new context makes continued nonsense more probable
- This explains why LLMs sometimes start well but degrade in quality during long generations
- Chain-of-thought prompting mitigates this by breaking large probabilistic leaps into smaller, more probable steps
- Temperature and sampling strategies affect the likelihood of initiating compounding error chains

## Related Concepts
- [[compounding-errors]]
- [[conditional-probability-distributions]]

## Sources
- [[an-intuitive-guide-to-how-llms-work]]
- [[llm-fundamentals]]
