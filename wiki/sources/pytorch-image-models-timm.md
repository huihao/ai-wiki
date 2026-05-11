---
created: 2026-04-28
updated: 2026-04-28
tags: [source, computer-vision, pytorch, models, library]
sources: 1
---

# PyTorch Image Models (timm)

## Metadata

- **Author**: Ross Wightman
- **Date**: 2019-02-02
- **URL**: https://github.com/huggingface/pytorch-image-models
- **Fetched**: 2026-04-24
- **Raw file**: `raw/ai/GitHub - huggingface_pytorch-image-models_ The largest collection of PyTorch image encoders _ backbo.md`

## Summary

timm is the largest collection of PyTorch image encoders and backbones, including training, evaluation, inference, and export scripts with pretrained weights. Covers CNNs (ResNet, EfficientNet, ConvNeXt) and Vision Transformers (ViT, Swin, DeiT, etc.). Now maintained by Hugging Face.

## Key Takeaways

- **Extensive model zoo**: 100+ architectures with pretrained ImageNet weights.
- **Key architectures**: ResNet, EfficientNet, ConvNeXt, ViT, Swin Transformer, DeiT, CoAtNet, MaxViT, MobileNetV4.
- **Training infrastructure**: Reference scripts with DDP, AMP, various optimizers and schedulers.
- **Optimizers**: 30+ including AdamW, LAMB, Lion, Muon, AdaMuon, Kron, MADGRAD, MARS.
- **Augmentations**: Mixup, CutMix, AutoAugment, RandAugment, AugMix, DropPath, DropBlock.
- **Recent additions**: NaFlexViT (variable aspect/size), DINOv3, SigLIP-2, Gemma4 encoders, MobileNetV5.
- **Export support**: ONNX, CoreML, LiteRT, TensorRT via timmx.

## Entities Mentioned

- Ross Wightman — original author
- [[huggingface-skills|Hugging Face]] — current maintainer

## Concepts Mentioned

- [[vision-transformer|Computer vision]] — image classification, feature extraction
- [[vision-transformer]] — ViT and variants
- [[convolutional-neural-network|Convolutional neural networks]] — ResNet, EfficientNet, etc.
- [[imagenet-source|ImageNet]] — standard pretraining dataset
- [[ai-data-engineer-return-to-basics|Data augmentation]] — Mixup, CutMix, AutoAugment
- [[how-to-scale-your-model|Model zoo]] — collection of pretrained models

## Raw Notes

See raw file and GitHub repository for full model list and training recipes.

## Questions / Follow-ups

- How do the latest NaFlexViT models compare to standard ViT on downstream tasks?
