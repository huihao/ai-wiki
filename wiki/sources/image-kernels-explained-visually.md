---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Image Kernels explained visually

## Metadata

- **Author**: Setosa.io
- **Date**: N/A
- **URL**: https://setosa.io/ev/image-kernels/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Image Kernels explained visually.md`

## Summary

An interactive visual explainer on image kernels — small matrices used to apply effects like blur, sharpen, and emboss to images. Also covers how kernels are used in machine learning for feature extraction (convolution in CNNs).

## Key Takeaways

- An image kernel is a small matrix applied via convolution to transform an image.
- Common kernels: sharpen, blur, emboss, identity, sobel, outline (edge detection).
- The process involves sliding the kernel over the image, multiplying pixel values, and summing to produce a new pixel.
- Edge handling is a subtlety: one approach is to extend edge values outward.
- Kernels are the basis of feature extraction in convolutional neural networks.

## Entities Mentioned

- Setosa.io — creator of the visual explainer series

## Concepts Mentioned

- [[image-kernels-explained-visually|Image kernel]] — small matrix for image convolution
- [[convolutional-neural-network|Convolution]] — sliding-window matrix multiplication operation
- [[convolutional-neural-network]] — uses kernels for feature extraction
- Edge detection — sobel and outline kernels highlight pixel differences
- [[claude-code|Feature extraction]] — learning important image regions automatically

## Questions / Follow-ups

- Link to a broader CNN concept page if one exists.
