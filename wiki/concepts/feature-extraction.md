---
created: 2026-04-29
updated: 2026-05-09
tags: [computer-vision, deep-learning]
sources: 1
---

# Feature Extraction

## Definition

Feature extraction is the process of automatically identifying and isolating informative, discriminative patterns from raw data — such as edges, textures, and shapes from images — using learned or hand-designed transformations. In convolutional neural networks (CNNs), feature extraction occurs through convolution layers where learned kernels automatically discover useful detectors, replacing the manual kernel design of traditional image processing.

## Key Aspects

- In traditional image processing, feature extraction uses hand-designed kernels (Sobel for edges, Gabor for textures) applied via convolution to highlight specific patterns
- CNNs generalize this by learning the kernel weights through backpropagation: the network discovers which features are most useful for the task, often learning edge detectors in early layers and increasingly abstract features in deeper layers
- The relationship between image kernels and CNN feature extraction is direct: the same sliding-window convolution operation is used, but the kernel values are learned rather than prescribed
- Feature extraction sits between raw input and high-level reasoning: it transforms high-dimensional raw data into a compact, informative representation that downstream layers can use for classification, detection, or generation
- Transfer learning leverages pre-trained feature extractors: the early convolutional layers of a trained network capture universal visual features (edges, textures, shapes) that transfer well to new tasks
- In NLP, feature extraction has evolved from manual tokenization and n-grams to learned embedding representations that capture semantic features from text
- The depth of feature extraction correlates with abstraction: shallow layers detect local patterns, deep layers compose them into object-level representations

## Related Concepts

- [[image-kernels]]
- [[edge-detection]]
- [[convolutional-neural-network]]

## Sources

- [[image-kernels-explained-visually]]
