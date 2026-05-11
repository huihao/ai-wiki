---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/architecture]
sources: 1
---

# CNN Architectures

## Summary
Convolutional neural network (CNN) architectures are a family of deep learning models designed to process grid-structured data such as images. CNNs use convolutional layers to automatically learn spatial hierarchies of features, from low-level edges and textures to high-level object parts and shapes. Key architectures in this family include LeNet-5, AlexNet, VGGNet, GoogLeNet/Inception, and ResNet.

## Key Attributes
- **Type**: concept/architecture
- **Notable for**: revolutionizing computer vision by eliminating the need for manual feature engineering
- **Other facts**: LeNet-5 (1998) pioneered CNNs for digit recognition; AlexNet (2012) demonstrated deep CNNs on ImageNet, sparking the deep learning revolution; ResNet (2015) introduced skip connections enabling networks with 100+ layers; modern vision models increasingly use Vision Transformers (ViT) as alternatives to pure CNNs

## Related Entities
- [[alexnet]] -- the CNN architecture that catalyzed the deep learning revolution
- [[google-deepmind]] -- DeepMind has contributed to CNN research and applications
- [[meta]] -- Meta has developed CNN-based vision systems

## Related Concepts
- [[convolutional-neural-network]] -- the general CNN architecture family
- [[convolution]] -- the core mathematical operation in CNN layers
- [[image-classification]] -- the primary task CNN architectures were designed for
- [[computer-vision-library]] -- software libraries (OpenCV, etc.) used alongside CNNs
- [[resnet]] -- residual network architecture with skip connections
- [[lenet-5]] -- one of the earliest successful CNN architectures
- [[feature-extraction]] -- CNNs learn hierarchical feature representations automatically

## Sources
- [[gradient-based-learning-document-recognition-lenet5]] -- the foundational paper describing LeNet-5 and gradient-based learning for document recognition

## Contradictions / Open Questions
- Vision Transformers have increasingly matched or surpassed CNNs on standard benchmarks, raising questions about whether CNN-specific inductive biases (locality, translation equivariance) remain advantageous in the era of large-scale pretraining.
