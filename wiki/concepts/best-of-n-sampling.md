---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Best-of-N Sampling

## Definition
Best-of-N sampling is an inference-time scaling technique where N candidate responses are independently generated from the model, and the best one is selected according to a reward model or verifier. It improves output quality by leveraging the insight that sampling more candidates increases the probability that at least one response is high quality, effectively trading compute for quality.

## Key Aspects
- **Generate-then-select pipeline**: Sample N independent completions, score each with a reward model or rule-based verifier, return the highest-scoring candidate
- **Inference-time scaling**: Unlike training-time improvements (more data, larger models), best-of-N scales quality by spending more compute at inference time
- **Simple yet effective**: One of the most accessible inference-time scaling methods -- requires only a pre-trained model and a scoring mechanism, no additional training
- **Connection to self-consistency**: Self-consistency samples N reasoning paths and takes the majority vote; best-of-N samples N and takes the best score. Both exploit diversity from multiple samples
- **Compute-quality tradeoff**: Quality improves sub-logarithmically with N -- diminishing returns, but practically significant for safety-critical applications
- **GRPO comparison**: Best-of-N is simpler than reinforcement learning methods like GRPO but less sample-efficient since it discards all but the top candidate

## Related Concepts
- [[self-consistency]] -- majority-vote alternative to best-of-N selection
- [[chain-of-thought]] -- the type of generation that benefits most from best-of-N scaling
- [[reinforcement-learning-from-human-feedback]] -- training-time alternative for improving output quality

## Sources
- [[build-reasoning-model-from-scratch]]
