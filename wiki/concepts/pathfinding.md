---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Pathfinding

## Definition

Pathfinding is the algorithmic problem of finding the shortest or most optimal route between points in a graph or grid, a foundational concept in computer science with applications in game development, robotics, GPS navigation, and network routing. Amit Patel's Red Blob Games provides some of the most accessible interactive explanations of these algorithms.

## Key Aspects

- BFS (Breadth-First Search) finds shortest paths in unweighted grids, serving as the foundation for more complex pathfinding algorithms
- Dijkstra's algorithm extends BFS to weighted graphs, finding shortest paths when different terrain types have different movement costs
- A* search combines Dijkstra's with a heuristic function to guide search toward the goal, dramatically reducing the search space
- Flow fields precompute direction vectors for all cells, enabling efficient pathfinding for large numbers of units moving to the same destination
- All-pairs shortest paths analyze entire maps for strategic analysis in tower defense and strategy games
- Grid representation matters: square, hexagonal, and triangular grids each have different adjacency properties and pathfinding characteristics
- Interactive visualization (using Vue.js, D3.js, Canvas) makes pathfinding algorithms accessible and intuition-building
- The connection between graph theory and practical pathfinding is established through treating grid cells as nodes and edges as movement connections

## Related Concepts

- [[pathfinding]]

## Sources

- [[amit-patel]]
- [[red-blob-games]]
