---
concept: "Batch Invariance"
domain: "gpu-optimization"
importance: "critical"
---

# Batch Invariance

## Definition

Property that a GPU kernel's output should remain constant regardless of the batch size used during execution. Essential for deterministic inference.

## Importance

Lack of batch invariance is the **primary cause** of nondeterminism in LLM inference:
- Different batch sizes trigger different reduction strategies
- Different tensor-core instruction choices
- Different accumulation orders
- Server load variations change batch sizes nondeterministically

## Implementation

### RMSNorm
- Use data-parallel strategy (one batch element per core)
- Fixed reduction strategy across all batch sizes

### Matrix Multiplication
- Avoid split-K and stream-K strategies
- Compile one kernel configuration for all shapes
- Consistent tensor-core instruction selection

### Attention
- Update KV cache before attention kernel
- Use fixed split-size (not fixed # splits) for FlashDecode
- Consistent reduction order regardless of KV cache size

## Related Concepts

- [[inference-determinism]]
- [[gpu-optimization]]
- [[floating-point-arithmetic]]
- [[reproducibility]]

## Key Sources

- [[defeating-nondeterminism-llm-inference]]