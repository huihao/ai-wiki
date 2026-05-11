---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Hash Join

## Definition

A hash join is a database join algorithm that builds a hash table from the smaller (build) relation, then probes it with each row of the larger (probe) relation. It runs in O(|R| + |S|) linear time and is the most widely used join algorithm for large equijoins in modern database systems. The key constraint is that the build-side hash table must fit in memory.

## Key Aspects

- **Two-Phase Algorithm**: Phase 1 (build) creates a hash table from the smaller relation; Phase 2 (probe) scans the larger relation, hashing each row to find matches
- **Linear Complexity**: O(|R| + |S|) for both build and probe phases, making it far more efficient than nested loop join's O(|R| * |S|)
- **Memory Requirement**: The build-side relation (plus hash table overhead) must fit in available memory; if not, the database falls back to Grace Hash Join with disk partitioning
- **Smaller Outer Preference**: Databases prefer the smaller relation as the build side to minimize memory usage and maximize cache efficiency
- **Production Usage**: PostgreSQL, MySQL, and virtually all modern databases use hash join as the default for equijoins when memory permits

## Related Concepts
- [[grace-hash-join]]
- [[join-algorithms]]

## Sources
- [[join-algorithms]]
