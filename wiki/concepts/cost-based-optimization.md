---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Cost-Based Optimization

## Definition

Cost-based optimization (CBO) is the strategy used by database query planners to select the most efficient execution plan for a given query by estimating the computational cost of alternative approaches. It considers factors such as cardinality estimates, available memory, index availability, sort order, and cluster topology to choose among join algorithms and access paths.

## Key Aspects

- Query planners evaluate multiple candidate execution plans and select the one with the lowest estimated cost
- Cost models consider cardinality (number of rows), memory availability, index presence, sort order, and network topology
- Different join algorithms have different cost profiles: Nested Loop is O(|R| * |S|), Hash Join is O(|R| + |S|), Merge Join is O(|R| + |S|) when sorted
- Planner chooses Nested Loop Join when the outer table is small or no index exists; Hash Join for large equijoins; Merge Join when data is pre-sorted
- Grace Hash Join handles memory overflow by partitioning both relations to disk before performing in-memory hash joins per partition
- Broadcast Join distributes a small table to all nodes in a cluster to avoid expensive network shuffles of the larger table
- PostgreSQL EXPLAIN ANALYZE output reveals the planner's choices, including indicators like "hash join with batches" showing disk spillage

## Related Concepts

- [[hash-join]]
- [[nested-loop-join]]
- [[merge-join]]
- [[grace-hash-join]]
- [[broadcast-join]]
- [[b-tree]]
- [[buffer-pool]]

## Sources

- [[join-algorithms]]
