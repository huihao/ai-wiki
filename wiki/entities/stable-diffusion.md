---
created: 2026-04-29
updated: 2026-05-09
tags: [generative]
sources: 2
---

# Stable Diffusion

## Summary

Stable Diffusion is a latent diffusion model for generating high-resolution images from text prompts. Unlike pixel-space diffusion models, it operates on a compressed latent representation, making it computationally feasible to run on consumer GPUs while producing photorealistic and artistic outputs.

## Key Aspects

- Based on the diffusion process: iteratively denoising random noise into coherent images, guided by text conditioning via cross-attention
- Architecture consists of three main components: a variational autoencoder (VAE) for latent compression, a U-Net for iterative denoising, and a CLIP text encoder for prompt understanding
- Cross-attention mechanisms condition the image generation on text embeddings, allowing fine-grained control over output content
- Interactive visualization tools like Diffusion Explainer provide step-by-step walkthroughs of the architecture, making the denoising process and attention mechanisms accessible to learners
- Self-attention layers within the U-Net enable spatial coherence across the generated image, allowing the model to maintain global structure
- Open-source model weights enable community fine-tuning, LoRA adapters, and control nets for specialized generation tasks

## Related Concepts

- [[diffusion-models]]
- [[self-attention]]
- [[cross-attention]]
- [[text-generation]]

## Sources

- [[diffusion-explainer-stable-diffusion-visualization]]
- [[understanding-coding-self-attention-from-scratch]]
