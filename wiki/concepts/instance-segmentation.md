---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Instance Segmentation

## Definition

Instance segmentation is a computer vision task that combines object detection (localizing objects with bounding boxes) and semantic segmentation (classifying each pixel) to both detect and delineate the precise boundaries of each individual object instance in an image. Unlike semantic segmentation, which labels all pixels of the same class identically, instance segmentation distinguishes between separate objects of the same category (e.g., two different cars get separate masks).

## Key Aspects

- **Object Detection Foundation**: Builds on bounding box detection to identify and localize objects before generating pixel-level masks
- **Per-Instance Masks**: Each detected object receives a unique pixel mask, distinguishing it from other objects of the same class
- **Pixel-Level Precision**: Provides exact object boundaries rather than just bounding boxes, critical for applications like autonomous driving and medical imaging
- **Common Architectures**: Mask R-CNN extends Faster R-CNN by adding a mask prediction branch; other approaches include SOLO and query-based methods
- **Datasets**: Popular benchmarks include COCO (Common Objects in Context), with instance segmentation annotations
- **Applications**: Robotics, autonomous vehicles, medical image analysis, augmented reality, and industrial inspection
- **Open-Source Ecosystem**: Platforms like Roboflow Universe host 1 billion+ images and 1 million+ datasets, including instance segmentation collections, enabling rapid model development

## Related Concepts

- [[machine-learning-math]]
- [[hardware-design]]

## Sources

- [[object-detection]]
- [[roboflow-universe-platform]]
