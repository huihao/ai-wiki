---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Backtracking

## Definition
Backtracking is an algorithmic paradigm for solving problems incrementally by building a solution one piece at a time and abandoning (backtracking from) partial solutions that cannot possibly lead to a valid complete solution. It systematically explores the solution space using depth-first search, pruning branches that violate constraints early to avoid exhaustive enumeration.

## Key Aspects
- **Depth-first exploration**: Build a candidate solution step by step; when a dead end is reached (constraint violated), undo the last choice and try the next option
- **Constraint pruning**: The key efficiency gain -- early rejection of invalid partial solutions avoids exploring entire subtrees of the solution space
- **Classic applications**: Permutations (LeetCode 46), Combination Sum (LeetCode 39), Generate Parentheses (LeetCode 22), N-Queens, Sudoku solvers
- **Time complexity**: Worst-case exponential O(2^n) or factorial O(n!), but pruning often dramatically reduces effective search space
- **State management**: Maintain a "path" (current partial solution) and undo changes when backtracking; typically implemented via recursion with stack frames
- **Relationship to dynamic programming**: Backtracking explores all possibilities (exponential); DP caches overlapping subproblems (polynomial). Use backtracking when solutions are sparse in the space, DP when subproblems overlap heavily

## Related Concepts
- [[dynamic-programming]] -- alternative paradigm when subproblems overlap
- [[depth-first-search]] -- backtracking is DFS with pruning
- [[recursion]] -- backtracking is typically implemented recursively

## Sources
- [[algorithm-classification]]
