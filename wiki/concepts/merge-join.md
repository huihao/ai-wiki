---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms, database]
sources: 1
---

# Merge Join

## Definition

Merge join (also called sort-merge join) is a database join algorithm that combines two sorted relations by performing a linear merge pass, similar to the merge step in merge sort. It achieves O(|R| + |S|) time complexity when both inputs are pre-sorted, making it highly efficient for large datasets with clustered indexes or when sorted output is needed.

## Key Aspects

- Requires both input relations to be sorted on the join key; if not, a sort step must precede the join
- Linear time complexity O(|R| + |S|) when inputs are pre-sorted, making it optimal for sorted data
- Particularly efficient with clustered indexes where data is physically stored in sorted order on disk
- The merge pass reads both relations simultaneously, advancing pointers as matching keys are found
- When multiple rows share the same key, a nested-loop-like inner scan handles duplicates within each key group
- Preferable to hash join when the output needs to be sorted (avoids a separate sort step)
- Grace Hash Join handles memory overflow by partitioning both relations to disk; merge join handles overflow naturally through sequential I/O
- Query planners select merge join when data is already sorted, when sorted output is desired, or when memory is limited

## Related Concepts

- [[locality-of-reference]]
- [[managed-ml-service]]
- [[memory-bound]]

## Sources

- [[join-algorithms]]
