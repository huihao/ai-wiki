---
created: 2026-04-29
updated: 2026-05-09
tags: [deep-learning]
sources: 1
---

# Locality

## Definition

Locality in deep learning refers to the spatial coherence prior exploited by convolutional neural networks, where nearby pixels in an image are assumed to be related and share features. This principle allows convolutional layers to use small kernels that operate on local patches, dramatically reducing parameters compared to dense layers while capturing meaningful spatial patterns.

## Key Aspects

- Nearby pixels influence each other (e.g., red neighbors are likely also red), forming the basis for local feature detection
- Convolutions are linear transformations with a strong prior: most weights are fixed to 0 (locality) and remaining weights are shared (parameter tying)
- Parameter efficiency: a 3x3 convolution has 9 parameters versus 225 for an equivalent dense 5x5-to-3x3 transformation
- Scalability is critical: 224x224x3 input would need 10 billion parameters in a dense layer, versus 25M for ResNet-50
- Locality enables progressive feature learning through receptive field expansion: early layers detect edges, later layers detect complete objects
- Contrast with tabular data: in images, spatial order is consistent and meaningful; in tables, column order is arbitrary
- Anomalies to locality (edges, patterns) are the interesting features that networks learn to detect

## Related Concepts

- [[locality-of-reference]]
- [[matrix-calculus]]
- [[causal-attention]]

## Sources

- [[intuitively-understanding-convolutions]]
