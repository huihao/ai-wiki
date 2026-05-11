---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 1
---

# CLIP

## Summary
CLIP (Contrastive Language-Image Pre-training) is a neural network developed by OpenAI that learns visual concepts from natural language supervision. It serves as a text encoder in text-to-image generation systems, mapping text descriptions into the same embedding space as images, enabling zero-shot classification and text-guided image generation.

## Key Aspects

- **Contrastive Learning**: Trained to match images with their correct text descriptions while separating mismatched pairs
- **Zero-Shot Classification**: Can classify images into categories it has never seen during training
- **Dual Encoder**: Separate text and image encoders that produce aligned embedding spaces
- **Text Encoder Role**: In diffusion models, CLIP's text encoder maps prompts to conditioning vectors that guide image generation
- **Widely Adopted**: Used in DALL-E, Stable Diffusion, and many other text-to-image systems
- **CLIP-MMD**: A variant/metric used to evaluate text-image alignment quality

## Related Concepts

- [[text-encoders]]
- [[clip-mmd]]
- [[latent-diffusion]]
- [[text-to-image-architectural-experiments]]

## Sources

- [[text-encoder]]
