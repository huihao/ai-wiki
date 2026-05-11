---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Nested Loop Join

## Definition

Nested Loop Join is the simplest and most intuitive database join algorithm, comparing every row in the outer table with every row in the inner table to find matching pairs. With O(|R| * |S|) time complexity, it is the baseline join method against which more sophisticated algorithms (Hash Join, Merge Join) are compared, and remains useful when the outer table is small or no suitable index exists.

## Key Aspects

- **Quadratic complexity**: O(|R| * |S|) makes it the slowest join algorithm for large tables, but optimal when the outer table is very small
- **Block Nested Loop optimization**: Buffers multiple outer rows to reduce inner table scans — processes B-2 outer rows per inner scan instead of one
- **Outer table selection matters**: Query planners prefer smaller tables as the outer relation to minimize I/O (not computation — I/O dominates)
- **Index-enhanced variant**: When an index exists on the inner table's join column, each outer row triggers an O(log|S|) index seek instead of a full scan, transforming complexity to O(|R| * log|S|)
- **PostgreSQL usage**: Heavily used in PostgreSQL with index support; EXPLAIN ANALYZE shows "Hash join with batches" indicating disk spillage
- **Fallback algorithm**: When no statistics are available or memory is insufficient for Hash Join, the planner defaults to Nested Loop
- **Simple implementation**: No preprocessing (hashing or sorting) required, making it straightforward to implement and understand
- **Cost-based selection**: Query planners consider cardinality estimates, available memory, indexes, and sort order when choosing between join algorithms

## Related Concepts

- [[hash-join]]
- [[merge-join]]
- [[cost-based-optimization]]
- [[b-tree-index]]

## Sources

- [[join-algorithms]]
