---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms, game-dev, pathfinding]
sources: 1
---

# Flow Fields

## Definition

Flow fields are a pathfinding optimization technique used primarily in strategy and tower defense games where many units need to navigate toward the same destination simultaneously. Instead of computing individual paths for each unit, a flow field precomputes a direction vector at every grid cell pointing toward the destination, allowing all units to follow the field with O(1) per-step lookups.

## Key Aspects

- A single Dijkstra or BFS pass from the destination produces a complete flow field: every cell stores the optimal next-step direction toward the goal
- Once computed, the flow field is shared across all units heading to the same destination, eliminating redundant per-unit pathfinding computations
- Particularly effective when hundreds or thousands of units share the same target — the preprocessing cost is amortized across all pathfinding queries
- Flow fields handle dynamic obstacles naturally: when terrain changes, only the affected region needs recomputation, not every unit's individual path
- In Red Blob Games' tower defense pathfinding tutorial, flow fields are presented alongside BFS and Dijkstra Maps as part of a progression from simple to sophisticated pathfinding
- Flow fields can incorporate cost functions (terrain difficulty, danger zones) by weighting the graph edges, producing paths that optimize for multiple criteria simultaneously
- The technique connects to potential fields in robotics, where each cell stores a gradient value and agents follow the negative gradient toward the goal

## Related Concepts

- [[pathfinding]]
- [[dijkstra-algorithm]]
- [[bfs]]
- [[tower-defense-pathfinding]]

## Sources

- [[red-blob-games]]
