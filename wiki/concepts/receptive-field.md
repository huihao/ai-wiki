---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Receptive Field

## Definition

The receptive field is the region of the input space that a particular output neuron "sees" or is influenced by. In convolutional neural networks, each successive layer expands the effective receptive field, enabling the network to progressively detect features ranging from simple edges to complex whole objects, forming a visual hierarchy.

## Key Aspects

- Early CNN layers with small kernels (3x3) detect low-level features like edges and lines within a small local area
- Strided convolutions downsize the output, causing each output pixel to represent a larger input area
- Each subsequent convolution layer operates on "representatives" of the previous layer, further expanding the effective receptive field
- Progressive expansion goes from 3x3 local patches to 32x32 to the entire image by final layers
- Deep features progress from edges to curves/textures to parts/patterns to complete objects (faces, birds)
- In GoogLeNet, the final 7x7 convolution has each pixel representing a 32x32 input patch, and final pooling collapses to 1 pixel with full-image receptive field
- Feature visualization confirms the visual hierarchy: early layers show edges, later layers show complex patterns
- Contrast with dense layers: convolutions achieve far fewer parameters (9 vs 225 for 5x5 to 3x3) by exploiting locality and weight sharing

## Related Concepts

- [[convolutional-neural-network]] -- The architecture where receptive fields are fundamental
- [[feature-visualization]] -- Technique revealing what filters detect
- [[padding]] -- Edge handling technique preserving output size
- [[striding]] -- Downsizing technique that expands receptive field

## Sources

- [[intuitively-understanding-convolutions]]
