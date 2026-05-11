---
created: 2026-04-29
updated: 2026-05-09
tags: [generative, machine-learning]
sources: 3
---

# Generative Models

## Definition

Generative models are machine learning systems that learn to produce new data samples — images, text, audio, video — that resemble the training data they were trained on, rather than simply classifying or labeling inputs. They capture the underlying distribution of data and can generate novel instances that are statistically similar to but distinct from the training examples, enabling applications from image synthesis to text generation.

## Key Aspects

- **Taxonomy of approaches**: Generative models encompass several families — autoregressive models (GPT family, which predict one token at a time), variational autoencoders (VAEs, which learn latent representations), generative adversarial networks (GANs, which use a generator-discriminator game), and diffusion/flow models (which iteratively denoise random noise into coherent outputs).
- **GAN fundamentals**: GANs, introduced by Ian Goodfellow, frame generation as a minimax game between a generator (producing fake samples) and a discriminator (distinguishing real from fake), converging when generated samples are indistinguishable from training data.
- **Diffusion models**: Recent image and video generation breakthroughs rely on diffusion models, which learn to reverse a gradual noising process — Alec Helbling's Diffusion Explorer and ConceptAttention tools visualize and interpret these models' internal representations.
- **Interpretability frontier**: Understanding what generative models have learned remains an active research area; feature visualization, activation atlases, and attention analysis provide windows into the hierarchical features these models build.
- **Deep Learning textbook coverage**: Ian Goodfellow et al.'s Deep Learning book devotes Chapter 20 to deep generative models, covering RBMs, VAEs, GANs, and autoregressive models in mathematical depth.
- **Applications span modalities**: Modern generative models operate across text (LLMs), images (Stable Diffusion, DALL-E, Midjourney), video (Sora), audio (Voicebox), and code (Codex), with multimodal models combining several modalities.

## Related Concepts

- [[feature-visualization]]
- [[neural-network-interpretability]]
- [[frontier-ai-models]]

## Sources

- [[alec-helbling]]
- [[ian-goodfellow]]
- [[ickma-dev-notes]]
