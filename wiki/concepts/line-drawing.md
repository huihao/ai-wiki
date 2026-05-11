---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Line Drawing

## Definition

Line drawing is the computer graphics algorithm for determining which pixels on a discrete grid (such as a screen or tile map) should be illuminated to represent a straight line between two points. In the context of game development and interactive visualization, it includes both basic algorithms (Bresenham's) and advanced techniques like supercover that handle edge cases for grid-based rendering.

## Key Aspects

- Linear interpolation (lerp) is the conceptual foundation: stepping from point A to point B in equal increments
- Bresenham's line algorithm uses only integer arithmetic to select pixels, making it extremely efficient for real-time rendering
- The supercover algorithm extends basic line drawing to include all pixels that the mathematical line passes through, avoiding gaps in grid-based visualizations
- Essential for rendering paths, edges, and connections in grid-based games, maps, and interactive diagrams
- Red Blob Games provides interactive visual explanations of these algorithms with live adjustable endpoints
- Related techniques include circle drawing (midpoint algorithm) and Bezier curve rendering for non-linear paths

## Related Concepts

- [[red-blob-games]]
- [[computer-graphics]]
- [[grid-based-rendering]]

## Sources

- [[red-blob-games]]
