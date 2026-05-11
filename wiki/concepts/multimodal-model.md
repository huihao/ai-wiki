---
created: 2026-04-28
updated: 2026-05-09
tags: [architecture, multimodal, vision]
sources: 0
---

# Multimodal model

## Definition

Multimodal models are AI systems that can process and reason across multiple modalities -- such as text, images, audio, and video -- within a unified architecture. Rather than having separate models for each data type, multimodal models learn joint representations that capture relationships between modalities. Modern multimodal models typically extend language model architectures by adding vision encoders (like CLIP or ViT) or audio encoders, connected through projection layers or cross-attention mechanisms that allow the language model to condition on non-text inputs.

## Key Proponents / Critics

- [[anthropic]] — Claude supports text and image inputs natively
- [[openai]] — GPT-4V and GPT-4o are multimodal models processing text, images, and audio
- [[google-deepmind]] — Gemini is natively multimodal, trained jointly on text, images, audio, and video

## Related Concepts

- [[vision-transformer]] — the transformer architecture adapted for image processing, commonly used as the vision encoder in multimodal models
- [[clip]] — contrastive learning model that creates aligned text-image representations
- [[transformers]] — the base architecture extended for multimodal processing
- [[cross-attention]] — a mechanism for allowing one modality to attend to another
- [[embeddings]] — multimodal models learn joint embeddings across modalities
- [[encoder-decoder]] — the architecture pattern used in some multimodal systems
- [[diffusion-models]] — used for multimodal generation (text-to-image, image-to-text)
- [[text-to-image-generation]] — a specific multimodal task combining text understanding with image creation
- [[llm]] — large language models serve as the backbone of most modern multimodal systems

## Related Entities

- [[openai]] — GPT-4o is a natively multimodal model supporting text, vision, and audio
- [[google-deepmind]] — Gemini was designed as a natively multimodal model from the ground up
- [[anthropic]] — Claude supports vision inputs with strong image understanding
- [[meta-ai]] — LLaMA and related models extended to multimodal via vision encoders

## Sources

- No source pages currently link to this concept

## Evolution

- **2021**: CLIP demonstrates strong text-image alignment through contrastive pretraining
- **2022**: Flamingo shows effective few-shot multimodal learning with frozen LLMs and vision encoders
- **2023**: GPT-4V brings multimodal capabilities to mainstream language models; LLaVA popularizes open-source multimodal approaches
- **2024**: GPT-4o is natively multimodal with real-time audio capabilities; Gemini 1.5 processes hours of video
- **2025**: Multimodal capabilities become standard in frontier models; native multimodal training (not bolted-on) becomes the norm
