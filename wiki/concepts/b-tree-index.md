---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms]
sources: 1
---

# B-Tree Index

## Definition
A B-Tree index is a self-balancing tree data structure used by relational databases to maintain sorted data and enable efficient lookup, insertion, and deletion in O(log n) time. B-Trees keep data sorted and allow searches, sequential access, insertions, and deletions in logarithmic time, making them the foundation for database indexing and the backbone of Index Join algorithms.

## Key Aspects
- **Balanced search tree**: All leaf nodes are at the same depth, guaranteeing O(log n) worst-case lookup time regardless of data distribution
- **High branching factor**: Each node contains multiple keys and child pointers (unlike binary trees), minimizing the number of disk I/O operations needed to traverse the tree
- **Disk-optimized**: Large node sizes are chosen to match disk page sizes (typically 4KB-16KB), so one node read = one disk I/O
- **Index Join transformation**: A B-Tree index on the inner table of a nested loop join transforms O(|R| * |S|) full scans into O(|R| * log|S|) seeks, dramatically improving join performance
- **Clustered vs. non-clustered**: A clustered B-Tree index stores actual data rows in leaf nodes; a non-clustered index stores pointers to data rows
- **Range queries**: B-Trees efficiently support range queries (`WHERE x BETWEEN 10 AND 100`) because leaf nodes are linked in sorted order

## Related Concepts
- [[join-algorithms]] -- B-Tree indexes enable efficient Index Join
- [[buffer-pool]] -- in-memory caching of B-Tree nodes reduces disk I/O
- [[cost-based-optimization]] -- query planners choose B-Tree index joins when cardinality and selectivity favor them

## Sources
- [[join-algorithms]]
