---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms, game-dev, geometry]
sources: 2
---

# Delaunay Triangulation

## Definition
Delaunay triangulation is a method of connecting a set of points into triangles such that no point lies inside the circumscribed circle of any triangle. It produces well-shaped triangles that avoid skinny or degenerate cases, making it fundamental in computational geometry, mesh generation, and procedural map generation.

## Key Aspects
- Dual of the Voronoi diagram: connecting circumcenters of adjacent Voronoi cells produces the Delaunay triangulation
- Maximizes the minimum angle of all triangles, avoiding skinny triangles
- Used extensively in procedural map generation for terrain and polygon meshes
- Enables efficient spatial queries: nearest neighbor, point location, range searches
- Red Blob Games provides interactive visual explanations of Delaunay triangulation in game contexts
- Triangle patterns on Delaunay meshes can be used for rendering effects and procedural textures
- Can be computed in O(n log n) time using incremental insertion algorithms

## Related Concepts
- [[convolution]]
- [[generalization]]

## Sources
- [[amit-patel]]
- [[red-blob-games]]
