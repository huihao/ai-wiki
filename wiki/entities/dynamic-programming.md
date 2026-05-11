---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/method]
sources: 1
---

# Dynamic Programming

## Summary
Dynamic programming (DP) is an algorithmic technique for solving complex problems by breaking them into overlapping subproblems, solving each subproblem only once, and storing the results for reuse. It is applicable when a problem exhibits optimal substructure (an optimal solution can be constructed from optimal solutions of subproblems) and overlapping subproblems (the same subproblems are solved repeatedly).

## Key Attributes
- **Type**: concept/method
- **Notable for**: transforming exponential-time brute-force solutions into polynomial-time efficient algorithms
- **Other facts**: the term was coined by Richard Bellman in the 1950s; two main approaches are top-down (memoization) and bottom-up (tabulation); classic DP problems include the knapsack problem, longest common subsequence, edit distance, and matrix chain multiplication; DP is foundational in operations research, bioinformatics, and competitive programming

## Related Entities
- [[jeff-erickson]] -- author of algorithms textbooks covering dynamic programming

## Related Concepts
- [[backtracking]] -- a related technique that explores solution spaces without memoization
- [[pathfinding]] -- shortest-path algorithms like Dijkstra's use DP principles
- [[optimization-methods]] -- DP is a general approach to discrete optimization problems
- [[numerical-algorithms]] -- DP complements numerical methods for different problem classes

## Sources
- [[algorithm-classification]] -- classifies dynamic programming within the broader taxonomy of algorithms

## Contradictions / Open Questions
- While DP is powerful, it is not always the most practical approach for very large state spaces due to memory requirements. Approximation algorithms, heuristics, or learning-based approaches may be preferable when exact DP solutions are computationally infeasible.
