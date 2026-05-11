---
created: 2026-04-28
updated: 2026-04-28
tags: [transformer, vision]
sources: 0
---

# Vision Transformer

## Definition

The Vision Transformer (ViT) is an architecture that applies the standard Transformer architecture — originally designed for NLP — directly to image patches. Instead of using convolutional layers, ViT splits an image into fixed-size patches, linearly embeds each patch, adds positional embeddings, and feeds the sequence to a Transformer encoder. Introduced by Google Research in 2020, ViT demonstrated that pure attention can match or exceed CNN performance on image classification when trained at sufficient scale.

## Key Attributes

- **Introduced**: 2020 (Dosovitskiy et al., Google Research)
- **Architecture**: Transformer encoder applied to image patches
- **Key insight**: CNNs are not necessary for vision; patch + attention is sufficient
- **Scale requirement**: ViT needs large datasets (e.g., JFT-300M) or heavy data augmentation to outperform CNNs
- **Variants**: DeiT (data-efficient), Swin Transformer (hierarchical windows), BEiT, MAE

## Related Entities

- [[google]] — original research team
- [[meta]] — contributed DeiT, DINO, and MAE
- [[pytorch|timm (PyTorch Image Models)]] — comprehensive ViT implementation collection

## Related Concepts

- [[transformers]] — the base architecture ViT adapts
- [[convolutional-neural-network]] — the architecture ViT challenged
- [[imagenet-source|ImageNet]] — the benchmark dataset for ViT evaluation
- [[transfer-learning]] — ViT pretrained on large datasets transfers well to downstream tasks
- [[self-attention]] — applied to image patch sequences

## Sources

- [[pytorch|PyTorch Image Models (timm)]] — includes ViT, Swin, DeiT implementations
- [[intuitively-understanding-convolutions|Intuitively Understanding Convolutions for Deep Learning]] — contrasts CNNs with attention-based vision

## Evolution

- **2020**: ViT paper shows transformers can replace CNNs at scale
- **2021**: Swin Transformer introduces hierarchical windows for efficiency
- **2022**: DINO and MAE advance self-supervised ViT pretraining
- **2023–2024**: ViT hybrids (ConvNeXt, CoAtNet) combine CNN and transformer strengths
- **2025–2026**: Vision-language models (CLIP, Gemini) use ViT encoders as vision backbones
