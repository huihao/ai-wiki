---
created: 2026-04-27
updated: 2026-04-27
tags: [source, tutorial, diffusion, image-generation]
sources: 1
---

# Stable Diffusion Project: Creating Illustration

## Metadata

- **Author**: Adrian Tam (MachineLearningMastery.com)
- **Date**: 2024-06-23
- **URL**: https://machinelearningmastery.com/stable-diffusion-project-creating-illustration/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/Stable Diffusion Project_ Creating Illustration - MachineLearningMastery.com.md`

## Summary

A hands-on tutorial for using Stable Diffusion to generate illustrations from text. Covers prompt engineering workflow (using ChatGPT to convert text to prompts), positive/negative prompts, style control, and the ADetailer plugin for fixing facial details in multi-person images.

## Key Takeaways

- **Prompt workflow**: Use ChatGPT to extract a key scene from text and convert it into a Stable Diffusion prompt. Iterate to simplify and refine.
- **Prompt structure**: Good prompts should mention main focus, background, composition, and style.
- **Negative prompts**: Essential for excluding unwanted elements (modern tech, fantasy, sketch, cartoon, anime).
- **Style control**: Adding keywords like "photorealistic" steers output style.
- **Face fix**: ADetailer plugin detects faces in generated images and uses inpainting to regenerate them with better quality. Useful for multi-person photorealistic images where faces often distort.
- **Model used**: Deliberate (768×512 pixels).

## Entities Mentioned

- MachineLearningMastery.com — educational website
- Stability AI — Stable Diffusion creator
- Hugging Face — hosts Deliberate model
- ChatGPT — prompt generation assistant

## Concepts Mentioned

- [[diffusion-models]] — Stable Diffusion
- [[prompt-engineering]] — for image generation
- Inpainting — ADetailer face regeneration
- [[autoregressive-image-generation|Text-to-Image Generation]] — core capability

## Raw Notes

- The tutorial is beginner-oriented and focuses on practical workflow rather than technical depth.
- Using LLMs to generate image prompts is a common pattern that lowers the barrier for non-artists.
- ADetailer is an important practical tip for anyone generating images with multiple human subjects.

## Questions / Follow-ups

- How does this manual prompt engineering workflow compare to newer models (DALL-E 3, Midjourney, Flux) that require less prompt optimization?
- What are the best practices for illustration generation in 2025? Has the field moved beyond Stable Diffusion Web UI?
