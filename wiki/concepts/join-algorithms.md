---
created: 2026-04-29
updated: 2026-04-29
tags: [algorithms, database]
sources: 1
---

# Join Algorithms

## Definition

Strategies used by relational database query planners to combine rows from two or more tables based on related columns. The choice of algorithm dramatically affects query performance, with each optimized for different data characteristics.

## Key Algorithms

### Nested Loop Join
- O(|R| × |S|) complexity
- For every outer row, scan entire inner table
- Best when outer table is very small
- Block Nested Loop reduces scans by buffering outer rows

### Hash Join
- O(|R| + |S|) linear complexity
- Build hash table from smaller relation, probe with larger
- Most common join algorithm for large equijoins
- Requires build side to fit in memory

### Merge Join (Sort-Merge Join)
- O(|R| + |S|) when data is pre-sorted
- Exploits sorted order for linear merge pass
- Excellent with clustered indexes
- Handles disk gracefully via external sort

### Index Join
- O(|R| × log|S|) with B-tree index
- Transforms full inner scans into index seeks
- Best for small outer tables with indexed inner tables

### Grace Hash Join
- Handles memory overflow via partitioning
- Both relations partitioned to disk, then in-memory hash join per partition
- I/O cost: 3 × (|R| + |S|) page reads/writes

### Broadcast Join
- Distributed systems strategy
- Replicate small table to all cluster nodes
- Avoids expensive network shuffles of large table
- Wins when N × |small| << |large|

## Related Concepts

- [[cost-based-optimization]] — Query planner selecting cheapest join plan
- [[buffer-pool]] — In-memory cache reducing disk reads
- [[b-tree]] — Tree structure for O(log n) lookups

## Sources

- [[join-algorithms]] — Comprehensive guide by Arpit Bhayani
