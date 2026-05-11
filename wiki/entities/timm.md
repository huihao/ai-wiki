---
created: 2026-04-27
updated: 2026-04-27
tags: [entity, library, computer-vision, pytorch, huggingface]
sources: 1
---

# timm (PyTorch Image Models)

## Overview

The largest collection of PyTorch image encoders and backbones, maintained by Ross Wightman at Hugging Face. Provides pretrained weights, training scripts, evaluation tools, and export utilities for hundreds of computer vision models. The de facto standard for image classification and transfer learning in the PyTorch ecosystem.

## Key Features

- **Hundreds of models**: ResNet, ResNeXT, EfficientNet, NFNet, Vision Transformer (ViT), MobileNet, RegNet, DPN, CSPNet, Swin Transformer, MaxViT, CoAtNet, ConvNeXt, and many more
- **Pretrained weights**: ImageNet-trained weights available via Hugging Face Hub
- **Training & evaluation scripts**: Ready-to-use scripts for training from scratch, fine-tuning, and evaluation
- **Export support**: Model export for deployment (ONNX, TorchScript, etc.)
- **Active maintenance**: Regular updates with new architectures and optimizations (e.g., Flash Attention for ViT, DINOv3 support)

## Use Cases

- Transfer learning for custom image classification tasks
- Backbone extraction for object detection, segmentation, and other vision tasks
- Benchmarking different architectures on standard datasets
- Research: comparing model families and training techniques

## Related Concepts

- [[pytorch-in-one-hour|PyTorch]] — underlying deep learning framework
- [[huggingface-skills|Hugging Face]] — hosts pretrained weights and model hub
- [[vision-transformer]] — transformer architecture for images
- [[imagenet-source|ImageNet]] — standard pretraining dataset
- [[stable-diffusion-project-creating-illustration|Stable Diffusion]] — uses vision encoders (CLIP) from the same ecosystem

## Sources

- [[pytorch|GitHub - huggingface/pytorch-image-models]] — official repository

## Note

As of early 2026, the project transitioned to community maintenance after Ross Wightman's departure from Hugging Face. Release 1.0.26 was the first maintenance release under new stewardship.
