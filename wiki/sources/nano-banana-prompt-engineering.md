---
created: 2026-04-28
updated: 2026-04-28
tags: [source, evaluation]
sources: 1
---

# Nano Banana Can Be Prompt Engineered for Extremely Nuanced AI Image Generation

## Metadata

- **Author**: Max Woolf (minimaxir)
- **Date**: 2025-11-13
- **URL**: https://minimaxir.com/2025/11/nano-banana-prompts/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/Nano Banana can be prompt engineered for extremely nuanced AI image generation.md`

## Summary

An in-depth evaluation of Google's Nano Banana (Gemini 2.5 Flash Image), an autoregressive image generation model. Demonstrates extremely strong prompt adherence with complex, multi-rule prompts, HTML/JSON inputs, and image editing.

## Key Takeaways

- Nano Banana = Gemini 2.5 Flash Image; autoregressive (1,290 tokens per image).
- Supports 32,768 token context window — far larger than CLIP (77) or T5 (512).
- Excels at complex prompt adherence: multiple subjects, composition rules, hex colors, heterochromia constraints.
- Can render HTML/CSS/JS webpages and JSON character descriptions into images.
- Image editing works well with multiple simultaneous edit commands.
- Weaknesses: poor style transfer, text rendering still imperfect, lenient moderation.
- System prompt partially leaked via adversarial prompt injection.
- Open-sourced `gemimg` Python wrapper for the Gemini API.

## Entities Mentioned

- Max Woolf (minimaxir) — author
- [[google]] / [[google|Google DeepMind]] — Nano Banana developer
- OpenAI — ChatGPT/gpt-image-1 comparison
- Black Forest Labs — FLUX.1-dev
- Bytedance — Seedream

## Concepts Mentioned

- [[autoregressive-image-generation]] — token-based image models
- [[prompt-engineering]] — complex multi-rule prompts
- [[how-llms-generate-text-conditional-probability|Text encoders]] — CLIP vs T5 vs Gemini multimodal encoder
- [[pytorch|Image editing]] — multi-command editing

## Questions / Follow-ups

- How does Nano Banana compare to OpenAI's gpt-image-1 on the same prompts?
