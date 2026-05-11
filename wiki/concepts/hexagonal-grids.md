---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Hexagonal Grids

## Definition

Hexagonal grids are a tiling pattern where the plane is divided into hexagons, offering distinct advantages over square grids for applications in game development, pathfinding, and spatial analysis. Each hexagon has six equidistant neighbors (compared to four orthogonal and four diagonal neighbors on a square grid), providing more uniform distance metrics and more natural movement patterns for simulations and games.

## Key Aspects

- **Uniform Neighbor Distance**: All six adjacent hexagons are equidistant from the center, eliminating the diagonal distance inconsistency of square grids
- **Coordinate Systems**: Hex grids require specialized coordinate systems (cube coordinates, axial coordinates, offset coordinates) since hexagons don't align to a simple Cartesian grid
- **Pathfinding**: Natural fit for BFS, Dijkstra, and flow field pathfinding in game contexts; more natural movement curves than square grids
- **Applications**: Tower defense pathfinding, railroads, strategy games, terrain generation, and spatial partitioning
- **Distance Metrics**: Manhattan-like distance in hex space; useful for radius-based queries (e.g., "all hexes within 3 steps")
- **Visual Aesthetics**: Hex grids create more organic-looking maps, which is why they appear frequently in board games and strategy games
- **Graph Theory Connection**: Hex grids are a form of planar graph; standard graph algorithms apply directly

## Related Concepts

- [[interactive-tutorials]]
- [[jetbolt-games]]

## Sources

- [[amit-patel]]
- [[red-blob-games]]
