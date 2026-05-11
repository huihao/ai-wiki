---
concept: "Inference Determinism"
domain: "reproducibility"
importance: "critical"
---

# Inference Determinism

## Definition

Property that LLM inference produces identical outputs for identical inputs, enabling reproducible results.

## Challenge

Even at temperature=0 (greedy sampling), inference remains nondeterministic:
- Not due to floating-point + concurrency (debunked hypothesis)
- True cause: **lack of batch invariance** in kernels
- Server load determines batch size, which affects kernel outputs

## Solution

Achieve batch invariance in:
- RMSNorm kernels
- Matrix multiplication kernels
- Attention kernels

Use deterministic kernel strategies:
- Data-parallel reductions
- Fixed reduction orders
- Consistent tensor-core instructions

## Benefits

- Reproducible scientific experiments
- True on-policy RL (zero KL divergence)
- Systematic debugging and evaluation
- Reliable API behavior

## Performance Impact

- Unoptimized deterministic: ~2x slower
- Optimized deterministic: ~1.6x slower
- Worth the cost for critical applications

## Related Concepts

- [[batch-invariance]]
- [[reproducibility]]
- [[on-policy-rl]]
- [[gpu-optimization]]

## Key Sources

- [[defeating-nondeterminism-llm-inference]]