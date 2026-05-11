---
created: 2026-04-28
updated: 2026-04-28
tags: [performance, scaling, systems]
---

# Strong Scaling

## Summary

Strong scaling — the ideal regime where increasing the number of chips yields a proportional, linear increase in throughput. The goal of model scaling is to stay in the strong scaling regime by ensuring computation time dominates over communication time.

## Definition

**Strong scaling**: Adding N chips reduces runtime by factor N (linear speedup)

This requires:
- Computation time >> Communication time
- Arithmetic intensity >> Critical intensity (FLOPs/byte ratio)

## Why Difficult

Adding chips increases:
- Communication overhead (more data to move between chips)
- Synchronization cost
- Load balancing complexity

When communication exceeds computation time → communication-bound → weak scaling or no scaling benefit.

## Roofline Analysis

For strong scaling, need:
```
T_compute > T_communicate
```

This gives the critical batch size or parallelism degree:
- Data parallelism: B/N > C/W_collective
- Tensor parallelism: Y < F × W/C
- Expert parallelism: depends on F and topology

## Real-World Examples

- **LLaMA-3**: 16k H100s, ~1k tokens/GPU (below strong scaling threshold for pure DP, but pipeline parallelism helps)
- **DeepSeek V3**: 2048 H800s, ~30k tokens/GPU (large batch, restricted EP domain, 2-way DP benefits from (N-1)/N factor)

## Anti-pattern: Weak Scaling

Weak scaling: Adding chips allows processing more data at same runtime
- Not useful for training fixed-size models
- Useful for batch inference across many requests

## Related Concepts

- [[roofline-model]] — framework for analyzing strong scaling
- [[model-scaling]] — broader context
- [[data-parallelism]] — parallelism strategy that must achieve strong scaling
- [[tensor-parallelism]] — another scaling strategy

## Sources

- [[how-to-scale-your-model]]
- [[how-to-think-about-gpus]]