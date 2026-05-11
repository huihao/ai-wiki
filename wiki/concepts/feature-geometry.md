---
created: 2026-04-29
updated: 2026-05-09
tags: [interpretability, mechanistic]
sources: 1
---

# Feature Geometry

## Definition

Feature geometry refers to the spatial and geometric structure of learned representations within neural networks — how features are organized, oriented, and related to each other in activation space. In mechanistic interpretability, understanding the geometry of features (their directions, clusters, and linear relationships in activation space) is key to reverse-engineering what a model has learned and how it processes information.

## Key Aspects

- Features in neural networks can often be identified with specific directions in activation space: a feature is "present" when the activation has a large component along that direction
- Superposition hypothesis: networks represent more features than they have dimensions by encoding features as nearly-orthogonal directions in high-dimensional space, with slight interference between non-orthogonal pairs
- Feature geometry enables linear probing: simple linear classifiers trained on internal activations can accurately predict high-level properties, suggesting that meaningful features are linearly encoded
- In transformer models, attention head geometry (the shapes formed by attention patterns) reveals how information flows between positions and how different heads specialize for different syntactic or semantic roles
- Circuit analysis in mechanistic interpretability traces how features combine through layers: the geometry of intermediate activations shows how lower-level features (edges, tokens) compose into higher-level features (objects, concepts)
- Feature visualization techniques (activation maximization, gradient-based saliency) reveal the geometry of what individual neurons or channels respond to, making abstract representations more interpretable
- Understanding feature geometry is essential for model editing, safety alignment, and detecting emergent behaviors that aren't explicitly trained

## Related Concepts

- [[mechanistic-interpretability]]
- [[circuit-analysis]]
- [[superposition]]

## Sources

- [[mechanistic-interpretability]]
