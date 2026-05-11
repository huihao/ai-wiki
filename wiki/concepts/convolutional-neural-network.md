---
created: 2026-04-28
updated: 2026-04-28
tags: [deep-learning, vision]
sources: 0
---

# Convolutional Neural Network

## Definition

A Convolutional Neural Network (CNN) is a deep learning architecture designed primarily for processing grid-like data such as images. CNNs use convolution layers to automatically learn spatial hierarchies of features — from edges and textures in early layers to object parts and complete objects in deeper layers. While Transformers have largely superseded CNNs in NLP, CNNs remain foundational in computer vision and are used in hybrid vision transformers.

## Key Proponents / Critics

- **Pioneers**: Yann LeCun (LeNet, 1998), Krizhevsky et al. (AlexNet, 2012)
- **Modern evolution**: ResNet, EfficientNet, ConvNeXt; Vision Transformers (ViT) now challenge pure CNNs
- **Key libraries**: [[pytorch|timm (PyTorch Image Models)]] — comprehensive CNN and ViT collection

## Related Concepts

- [[imagenet-source|ImageNet]] — the dataset that launched the CNN revolution
- [[intuitively-understanding-convolutions|Intuitively Understanding Convolutions for Deep Learning]] — visual explanation of convolutions
- [[vision-transformer]] — transformer-based alternative to CNNs
- [[transfer-learning]] — CNNs pretrained on ImageNet are standard for vision tasks
- [[deep-learning]] — CNNs are a foundational deep learning architecture

## Sources

- [[intuitively-understanding-convolutions]] — visual, intuition-building explanation of convolution mechanics and visual hierarchy
- [[image-kernels-explained-visually]] — interactive demonstration with live kernel examples
- [[pytorch|PyTorch Image Models (timm)]] — library of CNN architectures
- [[imagenet-source|ImageNet]] — the dataset behind CNN breakthroughs

## Evolution

- **1998**: LeNet-5 demonstrates practical CNNs for digit recognition
- **2012**: AlexNet wins ImageNet by a massive margin; deep CNN revolution begins
- **2015**: ResNet enables training of 100+ layer CNNs
- **2019**: EfficientNet introduces compound scaling
- **2020–2024**: Vision Transformers (ViT, Swin) challenge CNN dominance
- **2025–2026**: Hybrid architectures (CNN + transformer) become common; pure CNNs persist in efficiency-critical applications
