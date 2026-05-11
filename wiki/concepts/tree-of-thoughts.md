---
created: 2026-05-11
updated: 2026-05-11
tags: [reasoning, search, decomposition]
sources: 0
---

# Tree-of-Thoughts

## Definition

A structured reasoning framework that explores multiple alternative "thoughts" using known search algorithms (BFS/DFS) and prunes via LLM-based evaluation. Each thought is a coherent language sequence that represents an intermediate step toward a solution, and the framework systematically explores the tree of possible reasoning paths.

## Key Features

- Decomposes problems into non-overlapping subtasks
- Uses BFS or DFS to explore the thought tree
- LLM-based evaluation to prune unpromising branches
- Requires prior knowledge about the decomposition strategy
- Fixed parallelization structure imposed externally

## Limitations

- Requires domain-specific heuristics for decomposition
- Cannot choose not to parallelize (unlike APR)
- Decomposition strategy is not learned from data

## Related Concepts

- [[adaptive-parallel-reasoning]] — APR eliminates need for domain-specific heuristics
- [[monte-carlo-tree-search]] — related structured search approach
- [[reasoning-llms]] — reasoning models that output intermediate steps

## Sources

- [[adaptive-parallel-reasoning-inference-scaling]] — comparison with APR methods
