---
created: 2026-05-11
updated: 2026-05-11
tags: [reasoning, latency, parallel-computation]
sources: 0
---

# Critical Path Length

## Definition

In parallel reasoning, the critical path length is the longest sequence of causally dependent tokens in a parallel trajectory. It directly determines end-to-end generation time (wall-clock time), as parallel branches execute concurrently but the total time is bounded by the longest sequential dependency chain.

## Key Aspects

- Determines actual latency in parallel reasoning systems
- Goes through the longest thread from each parallel section
- Parallelization reward is framed as 1 - L_critical / L_total
- A sequential trajectory has critical path = total length
- Effective parallelization minimizes critical path as fraction of total tokens

## Related Concepts

- [[adaptive-parallel-reasoning]] — APR optimizes for critical path reduction
- [[parallel-computing]] — general concept of concurrent execution

## Sources

- [[adaptive-parallel-reasoning-inference-scaling]] — key metric in APR evaluation
