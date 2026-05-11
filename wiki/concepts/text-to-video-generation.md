---
created: 2026-04-29
updated: 2026-05-09
tags: [generative]
sources: 1
---

# Text-to-Video Generation

## Definition

Text-to-video generation is the task of synthesizing coherent video sequences from natural language descriptions, extending text-to-image generation into the temporal dimension by producing sequences of frames that exhibit temporal consistency, motion, and scene dynamics described in the prompt. Recent advances in diffusion-based video models have made text-to-video a rapidly maturing capability with applications in content creation, filmmaking, and marketing.

## Key Aspects

- **Temporal modeling**: Unlike image generation, video generation must maintain temporal coherence across frames — objects should move smoothly, lighting should be consistent, and physics should be plausible, requiring architectures that model temporal relationships explicitly.
- **Diffusion-based video models**: The dominant approach extends image diffusion models by adding temporal attention layers and 3D convolutions that process frame sequences, enabling the generation of temporally coherent video through iterative denoising in spatiotemporal latent space.
- **Key commercial models**: Sora 2 Pro (OpenAI), Veo 3.0/3.1 (Google), Kling O1/O3 (Kuaishou), Seedance 2.0 (ByteDance), WAN 2.6/2.7 (Alibaba), and LTX-2 (Lightricks) represent the current state of the art, with significant competition from Chinese AI labs.
- **Evaluation challenges**: Video quality assessment is more complex than image quality — metrics must capture temporal consistency, motion realism, text-video alignment, and aesthetic quality, often requiring human evaluation as the gold standard.
- **Compute requirements**: Video generation is orders of magnitude more expensive than image generation — generating a few seconds of video may require minutes of GPU compute, with memory requirements scaling with both spatial resolution and temporal length.
- **Latent video diffusion**: Similar to images, video diffusion operates in compressed latent space (using video VAEs), with typical compression ratios of 4x-8x in both spatial and temporal dimensions to make the process tractable.

## Related Concepts

- [[text-to-image-generation]]
- [[diffusion-models]]
- [[video-vaes]]
- [[temporal-attention]]

## Sources

- [[available-models-oxen-ai]]
