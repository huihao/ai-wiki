---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Grace Hash Join

## Definition

Grace Hash Join is a disk-aware join algorithm that extends the basic hash join to handle cases where the build-side relation exceeds available memory. It partitions both input relations into smaller buckets that fit in memory, then performs an in-memory hash join on each pair of corresponding buckets. The algorithm is named after the GRACE (GRAceful hash-based Computation Engine) database system.

## Key Aspects

- **Two-Phase Execution**: First partitions both relations to disk based on a hash function, then performs in-memory hash join on each partition pair
- **Partition Count**: The number of partitions is calculated as k = ceil(sqrt(|R| / B)), where |R| is the relation size and B is the number of memory blocks
- **Memory Guarantee**: Each partition is guaranteed to be small enough to fit in available memory after partitioning, preventing overflow during the join phase
- **Disk I/O Trade-off**: Adds two extra passes over the data (partitioning + reading back) compared to in-memory hash join, but handles arbitrarily large relations
- **Used by Production Databases**: PostgreSQL outputs "Hash Batch" in EXPLAIN ANALYZE when Grace Hash Join spills to disk; also used by Spark, Presto, and other distributed engines

## Related Concepts
- [[hash-join]]
- [[join-algorithms]]

## Sources
- [[join-algorithms]]
