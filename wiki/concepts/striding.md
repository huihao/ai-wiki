---
created: 2026-04-29
updated: 2026-05-09
tags: [convolution, deep-learning]
sources: 1
---

# Striding

## Definition

Striding is a technique in convolutional neural networks where the convolution kernel slides over the input by more than one pixel at a time, effectively downsampling the spatial dimensions of the feature map. By controlling the step size (stride) of the kernel, striding provides a learnable, parameter-efficient alternative to pooling layers for reducing spatial resolution while preserving important features.

## Key Aspects

- **Mechanism**: With stride s, the kernel skips s pixels between successive positions, reducing the output spatial dimensions by a factor of approximately s in each direction.
- **Output size formula**: For input size n, kernel size k, padding p, and stride s, the output size is floor((n + 2p - k) / s) + 1, allowing precise control over feature map dimensions.
- **Downsampling without pooling**: Modern architectures like ResNet use strided convolutions (stride 2) instead of max pooling for downsizing, keeping the entire network differentiable and allowing the network to learn the optimal downsampling function.
- **Parameter efficiency**: Striding reduces the number of computed output values, which downstream layers process, reducing overall computational cost proportional to the square of the stride factor.
- **Trade-off with spatial resolution**: Larger strides reduce spatial information more aggressively, potentially losing fine-grained spatial details needed for tasks like segmentation or detection.
- **Multi-channel interaction**: In multi-channel convolutions, striding is applied uniformly across all input channels, with each filter producing one output channel at the strided positions.

## Related Concepts

- [[convolutional-neural-network]]
- [[pooling]]
- [[receptive-field]]

## Sources

- [[intuitively-understanding-convolutions]]
