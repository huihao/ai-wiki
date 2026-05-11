---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Feature Visualization

## Definition

Feature visualization is a technique for understanding what a neural network filter or neuron has learned by optimizing an input image to maximally activate that filter. The resulting image reveals the visual pattern the filter detects, providing interpretability into the hierarchical representations that convolutional neural networks (CNNs) build — from simple edges in early layers to complex objects in deeper layers.

## Key Aspects

- **Method**: Start with a random noise image and use gradient ascent to iteratively modify it so that a target filter's activation is maximized; the resulting image is a visual representation of what the filter "looks for."
- **Visual hierarchy confirmation**: Feature visualization confirms that CNNs learn a progression from low-level features (edges, lines, textures) in early layers to high-level features (parts, objects, faces) in deeper layers, matching the intuition behind receptive field expansion.
- **Receptive field expansion**: Through successive convolution and striding operations, each output neuron in deeper layers "sees" an increasingly large portion of the input image, enabling detection of progressively more complex patterns.
- **Distill.pub contributions**: The Distill publication pioneered interactive feature visualization articles, including activation atlases that map the learned feature space of millions of activations across a dataset, making the internal representations of neural networks visually explorable.
- **Practical applications**: Feature visualization is used to debug model failures (e.g., identifying when a model relies on spurious textures rather than shape), verify that models have learned meaningful representations, and build trust in AI systems.
- **Limitations**: Feature visualization can be affected by adversarial vulnerabilities — models that appear to have learned correct features may still fail on carefully crafted perturbations that humans would easily detect.

## Related Concepts

- [[neural-network-interpretability]]
- [[convolutional-neural-network]]
- [[attention-mechanisms]]

## Sources

- [[distill-pub]]
- [[distill-publication-approach]]
- [[intuitively-understanding-convolutions]]
