---
created: 2026-04-28
updated: 2026-05-09
tags: [deep-learning, image-classification, neural-network]
sources: 2
---

# ResNet

## Definition

Residual Network (ResNet) is a deep convolutional neural network architecture that introduced skip connections (also called residual connections), enabling the effective training of networks with hundreds or even thousands of layers. The key insight is that instead of learning a desired mapping H(x) directly, the network learns a residual function F(x) = H(x) - x, which is easier to optimize. This breakthrough solved the degradation problem where adding more layers to deep networks caused training accuracy to saturate or degrade, and it remains one of the most influential architectural innovations in deep learning.

## Key Proponents / Critics

- Kaiming He — Lead author of the ResNet paper, later at [[meta]] (FAIR) and now at MIT
- Xiangyu Zhang — Co-author of the original ResNet paper
- Shaoqing Ren — Co-author, also known for co-founding [[deepseek]]'s early work
- Jian Sun — Senior author and head of the research group at Microsoft Research Asia

## Related Concepts

- [[convolutional-neural-network]] — ResNet extends the CNN family with residual connections
- [[deep-learning]] — ResNet was a breakthrough that enabled much deeper neural network architectures
- [[residual-connections]] — The core architectural innovation introduced by ResNet
- [[image-classification]] — ResNet achieved breakthrough results on ImageNet classification
- [[batch-normalization]] — Used extensively in ResNet to stabilize training
- [[transfer-learning]] — ResNet models are widely used as pretrained feature extractors
- [[convolution]] — The fundamental operation underlying ResNet's conv layers

## Related Entities

- [[meta]] — Kaiming He worked at Facebook AI Research (FAIR) when advancing ResNet research
- [[pytorch]] — ResNet is a core model in PyTorch's torchvision library

## Sources

- [[cs231n-deep-learning-computer-vision]] — Stanford's computer vision course covers ResNet in depth as a key CNN architecture
- [[imagenet-source]] — ResNet's breakthrough was demonstrated on the ImageNet dataset

## Evolution

- **2015**: ResNet paper published ("Deep Residual Learning for Image Recognition"), wins ImageNet challenge with 152-layer network achieving 3.57% top-5 error
- **2016**: ResNet variants (ResNeXt, DenseNet) build on the residual connection idea
- **2017-2018**: ResNet becomes the de facto backbone architecture for computer vision tasks; pretrained ResNets become standard for transfer learning
- **2019-2021**: Vision Transformers (ViT) challenge ResNet's dominance, but ResNet remains widely used in production
- **2022-2025**: ResNet continues to serve as a reliable, well-understood baseline; ResNet-inspired residual connections appear in transformer architectures
