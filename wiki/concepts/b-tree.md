---
created: 2026-04-29
updated: 2026-04-29
tags: [data-structures, databases, indexing]
sources: 1
---
# B-Tree

## Definition

A B-tree is a self-balancing tree data structure that maintains sorted data and allows searches, sequential access, insertions, and deletions in logarithmic time. It generalizes binary search trees by allowing nodes with more than two children, making it ideal for storage systems that read and write large blocks of data.

## Key Concepts

- All leaves appear at the same level, ensuring the tree remains balanced
- Each node contains between m/2 and m keys (where m is the order), with the root containing at least two keys
- B-trees are optimized for systems that read and write large blocks of data, minimizing disk I/O operations
- The B-tree property guarantees O(log n) time for search, insert, and delete operations
- B+ trees are a variant where all data is stored in leaf nodes, with internal nodes containing only keys for routing
- B-trees are the underlying data structure for most relational database indexes (PostgreSQL, MySQL InnoDB)
- The balance property is maintained through node splitting (during insertion) and merging/redistribution (during deletion)
- **Index Join transformation**: A B-Tree index on the inner table of a nested loop join transforms O(|R| * |S|) full scans into O(|R| * log|S|) seeks, dramatically improving join performance
- **Clustered vs. non-clustered**: A clustered B-Tree index stores actual data rows in leaf nodes; a non-clustered index stores pointers to data rows
- **Range queries**: B-Trees efficiently support range queries (`WHERE x BETWEEN 10 AND 100`) because leaf nodes are linked in sorted order

## Related Concepts

- [[lsm-tree]]
- [[merkle-tree]]
- [[crdt]]
- [[fault-tolerance]]
- [[join-algorithms]] -- B-Tree indexes enable efficient Index Join
- [[buffer-pool]] -- in-memory caching of B-Tree nodes reduces disk I/O
- [[cost-based-optimization]] -- query planners choose B-Tree index joins when cardinality and selectivity favor them

## Sources

- [[my-favorite-papers]]
- [[join-algorithms]]
