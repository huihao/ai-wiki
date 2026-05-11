---
created: 2026-04-29
updated: 2026-05-09
tags: [llm, reasoning]
sources: 2
---

# Self-Consistency

## Definition

Self-consistency (also called majority voting) is an inference-time scaling technique where a language model generates multiple independent reasoning paths for the same problem, then selects the final answer that appears most frequently across the samples. It improves reasoning accuracy without additional training by leveraging the intuition that correct reasoning paths are more likely to converge on the same answer.

## Key Aspects

- Sample N independent reasoning paths (with non-zero temperature) for the same question
- Extract the final answer from each path and take majority vote to select the most common answer
- Simple yet effective: one of the easiest inference-time scaling methods to implement
- Requires only a capable base model and non-zero temperature sampling -- no training needed
- Works best on problems with verifiable, discrete answers (math, code, logic)
- Effectiveness increases with the number of samples, but with diminishing returns
- Can be combined with chain-of-thought prompting for stronger reasoning paths
- Part of the broader inference-time compute scaling paradigm that also includes best-of-N sampling and self-refinement

## Related Concepts

- [[chain-of-thought]]
- [[inference-time-compute-scaling]]
- [[best-of-n-sampling]]
- [[majority-voting]]
- [[reasoning-llms]]

## Sources

- [[build-reasoning-model-from-scratch]]
- [[what-is-a-reasoning-model]]
