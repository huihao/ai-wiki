---
created: 2026-04-29
updated: 2026-05-09
tags: [diffusion, text-to-image]
sources: 1
---

# Text Encoders

## Definition

Text encoders are neural network components that transform natural language text into dense vector representations (embeddings) that can be consumed by downstream models, particularly diffusion models for text-to-image generation. In modern text-to-image architectures, the text encoder plays a critical role in determining how well the generated image aligns with the text prompt, making encoder selection and design a key architectural decision.

## Key Aspects

- **T5-XXL as standard**: T5-XXL (11B parameters) has become a widely adopted text encoder for diffusion models, providing rich text understanding through its encoder-decoder transformer architecture, though its large size creates deployment challenges.
- **T5Gemma as efficient replacement**: Recent work (Photoroom PRX) demonstrates that T5Gemma (2B parameters) can serve as a drop-in replacement for T5-XXL with fewer parameters, smaller embeddings, better evaluation loss, and multilingual support.
- **CLIP text encoder**: OpenAI's CLIP provides an alternative text encoding approach through contrastive learning, aligning text and image representations in a shared embedding space. CLIP is used in Stable Diffusion and other models.
- **Text conditioning mechanisms**: Encoded text embeddings are injected into diffusion models via cross-attention layers (where image tokens attend to text tokens), AdaLN modulation, or direct concatenation, with each mechanism affecting text-image alignment differently.
- **Text token caching**: Architectures like PRX process text tokens independently of timestep, enabling one-time encoding and caching of text embeddings across denoising steps, significantly reducing inference compute.
- **Encoder-design trade-offs**: Larger encoders provide richer language understanding but increase latency and memory. The choice between T5-XXL, T5Gemma, CLIP, and other encoders involves balancing text comprehension quality against computational cost.

## Related Concepts

- [[t5]]
- [[clip]]
- [[text-to-image-generation]]
- [[diffusion-models]]

## Sources

- [[text-to-image-architectural-experiments]]
