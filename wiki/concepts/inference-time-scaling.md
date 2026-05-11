---
created: 2026-05-11
updated: 2026-05-11
tags: [concept]
sources: 0
---

# Inference-time scaling

## Definition

Improving model performance at inference time by allocating more compute per prediction, rather than training larger models. Techniques include chain-of-thought reasoning, best-of-N sampling, beam search, verification/self-consistency, and iterative refinement. The key insight: a smaller model with more inference compute can outperform a larger model with less inference compute.

## Related Concepts

- [[scaling-laws]] — Training-time scaling; inference-time scaling is the complementary paradigm
- [[adaptive-parallel-reference]] — A specific inference-time scaling technique for efficient throughput
- [[speculative-execution]] — Predictive work during inference for latency reduction
- [[model-inference]] — The general process of running models for predictions

## Sources

Referenced in inference scaling and adaptive reasoning sources.
