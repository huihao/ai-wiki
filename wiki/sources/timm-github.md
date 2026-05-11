---
created: 2026-04-27
updated: 2026-04-28
tags: [source, github, computer-vision, pytorch, image-models, deep-learning]
sources: 1
---

# PyTorch Image Models (timm): Largest Collection of PyTorch Image Encoders

## Metadata

- **Author**: Ross Wightman
- **Organization**: Hugging Face (formerly independent)
- **Date**: 2019-02-02 (ongoing updates)
- **URL**: https://github.com/huggingface/pytorch-image-models
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/GitHub - huggingface_pytorch-image-models_ The largest collection of PyTorch image encoders _ backbo.md`

## Summary

PyTorch Image Models (timm) is the largest collection of PyTorch image encoders/backbones, including hundreds of pretrained models (ResNet, ViT, EfficientNet, ConvNeXt, etc.), training scripts, evaluation tools, inference utilities, and export capabilities. It serves as a standard library for image classification, transfer learning, and vision transformer research.

## Key Features

- **700+ models**: ResNet, ResNeXt, EfficientNet, NFNet, Vision Transformer (ViT), MobileNet, RegNet, Swin Transformer, MaxViT, CoAtNet, ConvNeXt, and many more
- **Pretrained weights**: ImageNet, ImageNet-12k, custom datasets
- **Training/eval scripts**: Reference scripts for reproducible ImageNet training
- **Feature extraction**: Multi-scale feature maps, forward_intermediates() support
- **Optimizers**: AdamW, AdamP, Lamb, Muon, Kron (PSGD), LaProp, Lion, etc.
- **Schedulers**: Cosine, step, tanh with restarts, plateau
- **Augmentations**: Mixup, CutMix, AutoAugment, RandAugment, AugMix, Random Erasing
- **Global pooling**: Average, max, average+max, concat([avg, max])
- **Export**: ONNX, TensorRT, CoreML support via timmx

## Recent Updates (v1.0.26)

- **Security**: Improved pickle checkpoint handling, weights_only=True default
- **Gemma4 ViT**: NaFlex pipeline support (variable aspect/size)
- **DINOv3**: ConvNeXt and ViT weights added
- **SigLIP 2**: NaFlex ViT encoder
- **MetaCLIP-2 Worldwide**: ViT encoders
- **MobileCLIP-2**: FastViT variants
- **Hiera**: F.SDPA optimization for Flash Attention
- **Muon optimizer**: AdaMuon, NAdaMuon additions
- **CSATv2**: Lightweight high-res model with DCT stem

## Benchmark Results

Available for RTX Pro 6000, RTX 5090, RTX 4090 with PyTorch 2.9.1

| Model | Image Size | Top-1 | Params |
|-------|------------|-------|---------|
| vit_so150m2_patch16_reg1_gap_448 | 448 | 88.1% | 150M |
| vit_so150m2_patch16_reg1_gap_384 | 384 | 87.9% | 150M |
| convnext_nano r384 | 384 | ~82% | small |

## Model Families

### Vision Transformers
- **ViT, DeiT, BEiT, EVA, EVA-02, FlexiViT, NaFlexViT, Swin, Swin-V2, MViT-V2, Twins, PiT, PVT-V2, TNT, XCiT, CaiT, CoaT, MaxViT, Hiera, DINOv3, SigLIP, SigLIP-2, PE (Perception Encoder)**

### ConvNets
- **ResNet, ResNeXt, ResNetV2, Res2Net, ResNeSt, DenseNet, VGG, Inception-V3/V4, Xception, EfficientNet, EfficientNet-V2, MobileNet-V2/V3/V4/V5, RegNet, RegNetZ, ConvNeXt, ConvNeXt-V2, NFNet, GhostNet**

### Hybrid/Attention
- **CoAtNet, Bottleneck Transformer, Lambda Networks, Halo Nets, CBAM, SE-Net, SK-Net, GC-Net, ECA-Net**

### Lightweight
- **MobileOne, MobileViT, EdgeNeXt, EfficientFormer, SwiftFormer, FasterNet, SHViT, StarNet, TinyViT, RepViT, FastViT**

## Optimizers

Includes 25+ optimizers:
- Standard: Adam, AdamW, SGD, RMSProp
- Research: AdaBelief, AdaFactor, AdaHessian, AdamP/SGDP, Adan, Kron (PSGD), Lamb, Lion, Muon, LaProp, MADGRAD, NovoGrad, RAdam
- BitsAndBytes: bnbadamw, bnbadam8bit
- Apex fused: fusedadam, fusedlamb

## Augmentation Pipeline

- **Random Erasing** — Zhun Zhong
- **Mixup** — 2017
- **CutMix** — 2019
- **AutoAugment, RandAugment** — Google TPU impl
- **AugMix** — JSD loss, clean + augmented mixing
- **SplitBatchNorm** — clean/augmented batch separation

## Training Features

- **DropPath** (stochastic depth)
- **DropBlock** — spatial dropout
- **Blur Pooling** — anti-aliasing
- **Adaptive Gradient Clipping** — NFNet
- **LayerScale** — ViT stability
- **Test Time Pool** — inference boost for larger inputs
- **Gradient checkpointing** — memory optimization

## Entities Mentioned

- [[hugging-face]] — organization hosting timm
- Ross Wightman — creator and maintainer
- NVIDIA — Apex fused optimizers
- Google — EfficientNet, MobileNet families
- Facebook — WSL/SSL/SWSL ResNeXt weights

## Concepts Mentioned

- [[vision-transformer]] — ViT and 50+ transformer variants
- [[imagenet-source]] — standard pretraining dataset
- [[transfer-learning]] — primary use case
- [[image-classification]] — core task
- [[deep-learning]] — foundation

## Raw Notes

- Release 1.0.26 marks community maintenance after author's departure from Hugging Face
- Pickle security improvements (weights_only=True) show attention to safety
- Model zoo approach enables easy architecture experimentation
- Active changelog indicates healthy maintenance (monthly updates)
- NaFlexViT supports variable aspect/size images (SigLIP-2, FlexiViT)

## Questions / Follow-ups

- What are the inference speed/accuracy tradeoffs for different ViT variants?
- How does Muon optimizer compare to AdamW for vision tasks?
