---
created: 2026-04-29
updated: 2026-04-29
tags: [source]
sources: 1
---

# JOIN Algorithms

## Metadata

- **Author**: Arpit Bhayani
- **Date**: 2024
- **URL**: https://arpitbhayani.me/blogs/join-algorithms
- **Access Date**: 2026-04-29
- **Raw File**: `raw/003_JOIN Algorithms.md`

## Summary

Comprehensive guide to the join algorithms that power relational databases: Nested Loop Join, Hash Join, Merge Join, Index Join, Grace Hash Join, and Broadcast Join. Explains when each algorithm shines, its time complexity, and the tradeoffs involved in algorithm selection by query planners.

## Key Takeaways

- **Nested Loop Join**: Simple O(|R| * |S|) algorithm; useful when outer table is small or no index exists. Block Nested Loop reduces inner scans by buffering outer rows.
- **Hash Join**: O(|R| + |S|) linear time; most widely used for large equijoins. Requires build-side hash table to fit in memory.
- **Merge Join**: O(|R| + |S|) when data is pre-sorted; excels with clustered indexes and when sorted output is needed.
- **Index Join**: O(|R| * log|S|) using B-tree index on inner table; transforms full scans into seeks.
- **Grace Hash Join**: Handles memory overflow by partitioning both relations to disk first, then doing in-memory hash join per partition.
- **Broadcast Join**: Distributes small table to all nodes in a cluster, avoiding expensive network shuffles of the large table.
- **Query planners** use cost-based optimization considering cardinality, memory, indexes, sort order, and cluster topology.

## Entities Mentioned

- [[arpit-bhayani]] — Author.
- [[postgresql]] — Uses nested loop join heavily with index support.
- [[apache-spark]] — Supports broadcast join for distributed queries.
- [[presto]] — Distributed query engine with broadcast join.
- [[google-bigquery]] — Distributed query engine.
- [[snowflake]] — Cloud data warehouse.

## Concepts Mentioned

- [[nested-loop-join]] — Most intuitive join algorithm, O(|R| * |S|) complexity.
- [[hash-join]] — Build hash table from smaller relation, probe with larger, O(|R| + |S|).
- [[merge-join]] — Exploits sorted order for linear merge pass.
- [[grace-hash-join]] — Partition-based hash join for data exceeding memory.
- [[broadcast-join]] — Replicate small table to all nodes in distributed systems.
- [[buffer-pool]] — In-memory cache reducing disk reads during joins.
- [[cost-based-optimization]] — Query planner selecting cheapest join plan.
- [[b-tree]] — Tree structure enabling O(log n) index lookups.

## Raw Notes

- Includes pseudocode for all six join algorithms.
- Explains why smaller outer table is preferred in nested loop (I/O, not computation).
- PostgreSQL "hash join with batches" indicates disk spillage in EXPLAIN ANALYZE output.
- Grace Hash Join partition count: k = ceil(sqrt(|R| / B)).

## Questions / Follow-ups

- How do modern databases like CockroachDB or TiDB handle join algorithm selection in distributed contexts?
- What role does vectorized execution play in modern join implementations?
