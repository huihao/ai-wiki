---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/field]
sources: 2
---

# Image Classification

## Summary
Image classification is the task of assigning a label or class to an entire image based on its visual content. It is one of the most fundamental problems in computer vision and served as the benchmark task that demonstrated the power of deep learning, particularly when AlexNet won the ImageNet Large Scale Visual Recognition Challenge (ILSVRC) in 2012. Modern image classification uses deep CNNs and Vision Transformers to achieve superhuman accuracy on standard benchmarks.

## Key Attributes
- **Type**: concept/field
- **Notable for**: being the task that validated deep learning's superiority over hand-crafted feature methods for computer vision
- **Other facts**: the ImageNet dataset (1.2 million images, 1000 classes) has been the standard benchmark; error rates dropped from ~26% (AlexNet, 2012) to ~3.5% (ResNet, 2015) to below human-level (~5.1%); LeNet-5 was one of the earliest successful CNN-based classifiers for digit recognition; pre-trained models (transfer learning) have made image classification accessible with limited data

## Related Entities
- [[imagenet]] -- the ImageNet dataset that drove image classification research
- [[alexnet]] -- the CNN that won ImageNet 2012 and sparked the deep learning revolution
- [[stanford]] -- Stanford researchers have made significant contributions to image classification

## Related Concepts
- [[convolutional-neural-network]] -- the architecture family that dominates image classification
- [[cnn-architectures]] -- specific CNN designs (AlexNet, VGG, ResNet) for classification
- [[computer-vision]] -- the broader field encompassing image classification
- [[transfer-learning]] -- using pre-trained classifiers as feature extractors for new tasks
- [[feature-extraction]] -- CNNs automatically learn hierarchical visual features
- [[lenet-5]] -- one of the first practical image classification systems

## Sources
- [[gradient-based-learning-document-recognition-lenet5]] -- the foundational paper on LeNet-5 for handwritten digit classification
- [[lenet-5]] -- discusses the LeNet-5 architecture and its role in image classification history

## Contradictions / Open Questions
- While image classification accuracy on standard benchmarks has plateaued, real-world performance in diverse, noisy, and adversarial conditions remains a challenge. The gap between benchmark performance and deployment reliability is an active area of research.
