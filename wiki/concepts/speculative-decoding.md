---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Speculative decoding

## Definition

An inference acceleration technique where a smaller, faster "draft" model proposes multiple candidate tokens, and the larger "target" model verifies them in parallel. The acceptance/rejection rule guarantees that the output distribution matches autoregressive sampling from the target model alone, enabling up to 2-3x speedups without quality loss.

## Key Proponents / Critics

- **Originators**: Leviathan et al. (Google, 2022), Chen et al. (DeepMind, 2023)
- **Variants**: n-gram draft (vLLM), EAGLE (model surgery), Medusa (auxiliary heads)
- **Adoption**: vLLM, TensorRT-LLM, and other production inference engines

## Related Concepts

- [[defeating-nondeterminism-llm-inference|LLM inference]] — the broader task speculative decoding accelerates
- [[autoregressive-image-generation|Autoregressive generation]] — standard token-by-token sampling
- [[how-to-scale-your-model|Draft model]] — smaller model proposing candidate tokens
- Rejection sampling — statistical mechanism ensuring correctness

## Sources

- [[inside-vllm]] — explains n-gram, EAGLE, and Medusa implementations in vLLM V1
- [[improving-gpu-memory-oversubscription]] — GPU performance optimization context

## Evolution

- Initially used a separate small LM as the draft model.
- Later variants (EAGLE, Medusa) avoid running a separate model by adding lightweight draft heads to the target model.
- vLLM V1 does not support the separate-draft-LM method, focusing instead on faster-but-less-accurate proposal schemes.
