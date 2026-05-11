---
created: 2026-04-29
updated: 2026-05-09
tags: [computer-vision, image-processing]
sources: 1
---

# Edge Detection

## Definition

Edge detection is an image processing technique that identifies points in an image where brightness changes sharply, typically by applying specialized convolution kernels such as the Sobel or outline kernel. These kernels highlight regions of high spatial gradient, effectively extracting structural boundaries from raw pixel data.

## Key Aspects

- Achieved by convolving a small matrix (kernel) over an image, where the kernel values are tuned to respond to intensity gradients
- Common edge detection kernels: Sobel (horizontal/vertical gradient approximation), outline/identity-like difference kernels
- The convolution process slides the kernel across every pixel, computing a weighted sum of neighboring pixel values to produce a new pixel value
- Edge handling is a practical subtlety: edge pixels may be handled by extending neighboring values outward or by padding
- Edge detection is foundational to convolutional neural networks (CNNs), where learned kernels automatically discover useful feature detectors including edges, textures, and shapes
- Distinguishes edge detection (hand-designed kernels) from feature extraction (learned kernels in CNNs), though the underlying operation — convolution — is the same

## Related Concepts

- [[image-kernels]]
- [[feature-extraction]]
- [[convolutional-neural-network]]

## Sources

- [[image-kernels-explained-visually]]
