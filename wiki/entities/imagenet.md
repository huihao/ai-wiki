---
created: 2026-04-27
updated: 2026-04-28
tags: [entity, dataset, computer-vision, benchmark]
sources: 2
---

# ImageNet

## Overview

A large-scale image database organized according to the WordNet hierarchy, where each node (synset) is depicted by hundreds to thousands of images. Instrumental in advancing computer vision and deep learning research. Available free for non-commercial research use.

## Historical Significance

- **Launched**: 2009 by Fei-Fei Li et al. at Stanford and Princeton
- **The ImageNet moment (2012)**: AlexNet's victory in the ImageNet Large Scale Visual Recognition Challenge (ILSVRC) by a massive margin demonstrated the power of deep CNNs, sparking the deep learning revolution
- **Impact**: The dataset that "changed the direction of AI research and possibly the world"
- **Scale**: ~14 million images, ~21,000 categories

## Role in Modern AI

- **Pretraining standard**: Most vision models are pretrained on ImageNet before fine-tuning on downstream tasks
- **Benchmark**: Standard reference for comparing architecture improvements (ResNet, EfficientNet, ViT, etc.)
- **Transfer learning**: Features learned on ImageNet transfer remarkably well to other vision tasks

## Related Concepts

- [[timm-github|timm]] — library providing pretrained ImageNet weights for hundreds of models
- [[vision-transformer]] — ViT demonstrated competitive ImageNet performance without convolutions
- AlexNet — the architecture that won ILSVRC 2012
- [[transfer-learning]] — ImageNet as the universal pretraining dataset
- WordNet — semantic hierarchy underlying ImageNet's organization

## Sources

- [[imagenet-source|ImageNet]] — official website
- [[imagenet-dataset|ImageNet Dataset]] — dataset overview
