---
created: 2026-04-29
updated: 2026-05-09
tags: [interpretability, machine-learning]
sources: 1
---

# Activation Atlases

## Definition

Activation atlases are visualization techniques that create spatial maps of the features learned by neural networks, projecting millions of neuron activations into a navigable 2D landscape. Pioneered by researchers at Distill, they allow humans to visually explore what a network has learned by revealing the semantic structure of its internal representations.

## Key Aspects

- Feature inversion technique used to visualize millions of activations in a single image
- Reveals the semantic structure of what neural networks learn — from edges and textures to complete object concepts
- Part of the broader neural network interpretability movement led by Chris Olah and collaborators at Distill
- Enables researchers to see how networks organize knowledge spatially in activation space
- Related to but distinct from feature visualization, which optimizes a single image to maximally activate a specific neuron
- Helped demonstrate that neural networks develop human-interpretable visual hierarchies

## Related Concepts

- [[activation-checkpointing]]
- [[alexnet]]
- [[ai-visualization]]

## Sources

- [[distill-pub]]
