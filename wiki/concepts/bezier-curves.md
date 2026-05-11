---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Bezier Curves

## Definition
Bezier curves are parametric curves defined by a set of control points, widely used in computer graphics, game development, and procedural generation for creating smooth, controllable curves. Named after Pierre Bezier, they provide an intuitive way to define curved paths where the curve is influenced by but generally does not pass through intermediate control points.

## Key Aspects
- Defined by control points: a linear Bezier has 2 points, quadratic has 3, cubic has 4 (most common)
- The curve always passes through the first and last control points; intermediate points pull the curve toward them
- De Casteljau's algorithm provides a numerically stable method for evaluating Bezier curves
- Used in game development for curved roads, smooth camera paths, and procedural terrain
- Bezier splines chain multiple Bezier segments for complex curves with C1 or C2 continuity
- Interactive visual explanations available on Red Blob Games with motivating examples from game development

## Related Concepts
- [[broadcasting]]
- [[bezier-curves]]

## Sources
- [[amit-patel]]
- [[red-blob-games]]
