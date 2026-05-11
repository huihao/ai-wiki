---
created: 2026-04-29
updated: 2026-05-09
tags: [geometry]
sources: 2
---

# Voronoi Diagrams

## Definition

A Voronoi diagram is a partitioning of a plane into regions based on distance to a set of seed points, where each region contains all points closer to its seed than to any other seed. It is a fundamental computational geometry structure with applications in pathfinding, procedural generation, spatial analysis, and machine learning.

## Key Aspects

- The dual of the Delaunay triangulation: connecting adjacent Voronoi cell seeds produces the Delaunay mesh, and vice versa
- Each Voronoi cell is a convex polygon, and the boundaries are equidistant from exactly two seed points
- In game development and procedural generation (as demonstrated on Red Blob Games), Voronoi diagrams create natural-looking terrain, resource placement, and map boundaries
- Noisy edges applied to Voronoi boundaries create organic-looking region borders, combining mathematical precision with natural aesthetics
- In pathfinding, Voronoi-based navigation creates paths that maximize distance from obstacles (safest route), used in tower defense and robotics
- Computational algorithms include Fortune's sweep line (O(n log n)) and incremental insertion, with spatial indexing for large point sets
- In machine learning, Voronoi cells define the decision boundaries of k-nearest neighbors classifiers and vector quantization (k-means)
- Alternatives with rounder cells (as explored in Red Blob Games' Ponder section) address aesthetic limitations for certain map generation use cases

## Related Concepts

- [[delaunay-triangulation]]
- [[procedural-generation]]
- [[pathfinding]]

## Sources

- [[red-blob-games]]
