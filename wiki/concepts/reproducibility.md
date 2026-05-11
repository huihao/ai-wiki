---
concept: "Reproducibility"
domain: "scientific-method"
importance: "critical"
---

# Reproducibility

## Definition

The ability to obtain identical results when repeating an experiment or process with the same inputs and conditions. A bedrock of scientific progress.

## Challenge in AI

LLM systems are remarkably non-reproducible:
- Even temperature=0 produces different outputs
- APIs return different results across calls
- Inference engines vary in outputs
- Training-inference mismatch creates implicit off-policy behavior

## Causes

Primary: **Lack of batch invariance**
- Kernel outputs depend on batch size
- Server load varies batch sizes nondeterministically
- Different reduction strategies per batch size

Secondary: Floating-point non-associativity
- Different accumulation orders
- Different results mathematically

## Solutions

1. **Batch-invariant kernels**: Fixed reduction strategies
2. **Deterministic inference**: Reproducible outputs
3. **Training-inference alignment**: True on-policy RL
4. **Standardized protocols**: Consistent interfaces

## Benefits

- Scientific validity
- Debugging capability
- Systematic evaluation
- Regulatory compliance
- Production reliability

## Related Concepts

- [[inference-determinism]]
- [[batch-invariance]]
- [[on-policy-rl]]
- [[floating-point-arithmetic]]

## Key Sources

- [[defeating-nondeterminism-llm-inference]]