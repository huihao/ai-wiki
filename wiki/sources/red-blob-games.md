---
created: 2026-04-28
updated: 2026-04-28
tags: [source, tutorial, algorithms, game-dev, visualization]
sources: 1
---

# Red Blob Games

## Metadata

- **Author**: Amit Patel
- **Date**: Website active since 1995; interactive explanations refined since 2007
- **URL**: https://www.redblobgames.com/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Red Blob Games.md`

## Summary

Amit Patel's website providing interactive visual explanations of math and algorithms, using motivating examples from computer games. Offers free, ad-free educational content for independent, student, and hobbyist developers. Covers pathfinding, procedural generation, graph theory, probability, geometry, and interactive tutorial design.

## Key Takeaways

### Learn Section - Interactive Tutorials

**Pathfinding & Movement**
- Tower Defense pathfinding: BFS, Dijkstra Maps, Flow Field pathfinding
- All pairs shortest paths for map analysis
- Distance to seed points using BFS

**Graph Theory & Grids**
- Introduction to graph theory: grids as graphs
- Grid parts: tiles, edges, vertices for squares, hexagons, triangles
- Grid edges: tiles for square grids
- Railroads on hex grid

**Geometry & Visualization**
- 2D Visibility algorithm: sweep algorithms
- Line drawing: linear interpolation (lerp), supercover
- Filled circles: circles on grids
- Curved roads: Bezier curves, circular arcs, biarcs

**Probability & Math**
- Probability for RPG Damage: distributions, nonparametric distributions
- Essential Machine Learning Equations reference

**Map Generation**
- Polygonal Map Generation: blue noise, Delaunay triangulation, Voronoi diagrams, water flow
- Noisy edges: area-constrained noisy paths
- Procedural planet generation on sphere
- Placing natural resources on maps
- Map generation with no code (image filters only)

### Play Section - Demos

- Mapgen4: Interactive map generator with terrain drawing
- Procedural face generator (Scott McCloud inspiration)
- Ellipse from lines (3blue1brown inspiration)
- Modulo multiplication (Mathologer inspiration)
- Orbits of planets (John Carlos Baez inspiration)
- Noisy edges with shaders
- Bacterial cell animation
- Conveyor belt editor (Factorio inspiration)
- Rounded cells with Chaikin Curves
- Dyson hatching (Watabou inspiration)
- Triangle patterns on Delaunay mesh
- Shape transitions (Dave Bees Bombs inspiration)

### Ponder Section - Explorations

- Alternative to Voronoi with rounder cells
- Procedurally generating names with neural networks
- Procedurally modifying spelling
- Understanding the color yellow
- Homunculus: stretching/shrinking maps
- Terrain shader experiments
- Hexagon on Saturn recreation
- Reshaping distributions
- Signed distance fields
- Game map design principles

### Meta Section - Making Interactive Guides

Tutorial creation techniques:
- Vue.js tutorials (2015+) with drag-and-drop
- D3.js tutorials (2011-2015)
- Starter code: React, Vue, lit-html, vanilla JS, Preact
- Event handlers for dragging (mouse/touch)
- Responsive web design for interactive diagrams
- Vue with Canvas, KaTeX, pointer events
- Diagram and text highlighting together

### History

- **1990**: Started curating game development articles
- **1995**: Website launched
- **2004**: First interactive experiments
- **2007**: Current interactive style established
- **Ongoing**: Free content, no signup, no ads

### Projects & Collaborations

- Solar Realms Elite (early game)
- BlobCity (environmental simulation game)
- Root-1 (educational games)
- Realm of the Mad God (Wild Shadow Studios)
- Artificial Intelligence: A Modern Approach diagrams (Peter Norvig collaboration)
- A Chronicle of Misdeeds (Nonagon Games)
- Galactic Assault Squad (Jetbolt Games)

### Open Source

- MIT License or Apache v2 License
- Commercial use allowed
- GitHub repositories: amitp, redblobgames
- Public project ideas board on Notion

## Entities Mentioned

- [[amit-patel]] — Creator of Red Blob Games
- [[peter-norvig]] — AI textbook collaborator
- [[3blue1brown]] — Math visualization inspiration
- [[mathologer]] — Math YouTube channel inspiration
- [[john-carlos-baez]] — Mathematical physicist inspiration
- [[wild-shadow-studios]] — Realm of the Mad God developer
- [[jetbolt-games]] — Galactic Assault Squad developer
- [[scott-mccloud]] — Understanding Comics author (face generator inspiration)
- [[watabou]] — City generation project inspiration

## Concepts Mentioned

- [[pathfinding]] — Movement algorithms (A*, BFS, Dijkstra, flow fields)
- [[procedural-generation]] — Algorithmic content creation
- [[voronoi-diagrams]] — Spatial partitioning technique
- [[delaunay-triangulation]] — Mesh generation algorithm
- [[bezier-curves]] — Smooth curve representation
- [[hexagonal-grids]] — Alternative coordinate systems
- [[flow-fields]] — Pathfinding optimization technique
- [[graph-theory]] — Network mathematics
- [[interactive-tutorials]] — Educational visualization
- [[vue-js]] — JavaScript framework for interactivity
- [[d3-js]] — Data visualization library
- [[jinja2]] — Templating (similar pattern for tutorials)
- [[probability-distributions]] — Statistical foundations
- [[line-drawing]] — Grid-based rendering

## Questions / Follow-ups

- How applicable are these game algorithms to modern AI pathfinding and simulation?
- What can AI agents learn from these interactive tutorial design patterns?
- How do hexagonal grids compare to square grids for AI movement planning?
