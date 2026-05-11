---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Intuitively Understanding Convolutions for Deep Learning

## Metadata

- **Author**: Irhum Shafkat
- **Date**: 2018-06-01
- **URL**: https://medium.com/data-science/intuitively-understanding-convolutions-for-deep-learning-1f6f42faee1
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Intuitively Understanding Convolutions for Deep Learning.md`

## Summary

An intuitive explanation of convolution operations in deep learning, relating them to standard feedforward networks and exploring how they build strong visual hierarchies that make CNNs powerful feature extractors. The article covers the mechanics of 2D convolutions, multi-channel extensions, and the conceptual foundations (locality, receptive field expansion) that enable progressive feature learning from edges to complete objects.

## Key Takeaways

### 2D Convolution Mechanics
- **Kernel**: Small matrix of weights (e.g., 3x3) that slides over input
- **Operation**: Element-wise multiplication with input patch → sum → single output pixel
- **Output size**: Smaller than input unless padding applied (edge trimming)
- **Parameters**: Dramatically fewer than dense layers (e.g., 9 vs 225 for 5x5→3x3 transformation)

### Common Techniques
- **Padding**: Add "fake" pixels (usually 0) at edges so kernel can center on original edge pixels; maintains output size
- **Striding**: Skip slide locations (e.g., stride 2 picks slides 2 pixels apart); downsizes output
- **Modern networks**: Use strided convolutions instead of pooling for downsizing (ResNet)

### Multi-Channel Convolution
- **Filter vs kernel**: In multi-channel case, filter = collection of kernels (one per input channel)
- **Process**: Each kernel slides over its channel → produce processed version → sum across channels → one output channel + bias
- **Multiple filters**: Each produces one output channel → concatenate → overall output (channels = number of filters)

### Conceptual Foundations

#### Convolutions as Linear Transforms
- Convolution is still a linear transformation, but with hard prior on weight matrix:
  - Most weights fixed to 0 (locality)
  - Remaining weights are shared (parameter tying)
- **Efficiency**: 9 parameters vs 64 for equivalent dense transformation
- **Scalability**: Essential for large images (224x224x3 = 150K inputs → 10B parameters dense, vs 25M for ResNet-50)

#### Locality Prior
- **Spatial coherence**: Nearby pixels influence each other (e.g., red neighbors → likely red)
- **Consistent order**: Pixels always appear in same spatial arrangement
- **Anomaly detection**: Deviations from locality (edges, patterns) are interesting features
- **Contrast with tabular data**: Column order arbitrary; no "local shared features"

#### Visual Hierarchy via Receptive Field Expansion

**Layer-by-layer progression**:
1. **Early layers**: Small kernels (3x3) → detect low-level features (edges, lines)
2. **Strided layer**: Downsizing → each output pixel represents larger input area
3. **Next convolution**: Same kernel size operates on "representatives" → larger effective receptive field
4. **Progressive expansion**: 3x3 → 32x32 → entire image by final layers
5. **Deep features**: From edges → curves/textures → parts/patterns → complete objects (faces, birds)

**Example**: GoogLeNet
- Input: 224x224
- Final convolution: 7x7 (each pixel represents 32x32 input patch)
- 1024 filters in final layer → each detects extremely specific high-level feature
- Final pooling: 7x7 → 1 pixel → feature detector with full-image receptive field

#### Feature Visualization
- **Method**: Optimize random noise image to maximally activate a filter
- **Result**: Reveals what filter detects (e.g., edges, textures, objects)
- **Visual hierarchy confirmed**: Early layers show edges; later layers show complex patterns

#### Adversarial Attacks
- **Problem**: CNNs fail on slightly tampered images that humans easily detect
- **Implication**: Visual hierarchy isn't entirely human-like
- **Risk**: Silent failures in critical applications (self-driving, healthcare)
- **Research focus**: Robustness against adversarial examples

## Entities Mentioned

- Irhum Shafkat — author

## Concepts Mentioned

- [[convolutional-neural-network]] — the architecture explained
- [[image-kernels]] — fundamental operation
- [[image-kernels-explained-visually]] — visual demonstration
- [[receptive-field]] — area of input visible to output neuron
- [[feature-visualization]] — technique to reveal filter behavior
- [[adversarial-attacks]] — vulnerability of CNNs
- [[locality]] — spatial coherence prior
- [[padding]] — edge handling technique
- [[striding]] — downsizing technique

## Raw Notes

The article uses visual diagrams and concrete examples:
- 4x4 input → 2x2 output transformation matrix comparison (dense vs convolution)
- Sobel edge detection filter example (fixed parameters, operates locally)
- Feature visualization images from Distill.pub (edges → objects)
- GoogLeNet architecture progression (mixed3a → mixed4a → mixed5a)

Key references:
- Vincent Dumoulin and Francesco Visin: "A guide to convolution arithmetic for deep learning" (arXiv 2019)
- CS231n: Convolutional Neural Networks for Visual Recognition
- Distill.pub: Feature Visualization (Lucid library)
- OpenAI blog: Adversarial Examples

## Questions / Follow-ups

- How do Vision Transformers change this visual hierarchy model?
- Relationship to [[image-kernels-explained-visually]] for basic kernel demos?
