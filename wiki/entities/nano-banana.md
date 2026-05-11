---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, image-generation, prompt-engineering]
---

# Nano Banana

Autoregressive image generation model (Google Gemini 2.5 Flash Image) with 32,768-token context, enabling extremely detailed prompt engineering for nuanced AI image generation.

## Summary

Nano Banana is the nickname for Google's Gemini 2.5 Flash Image model, an autoregressive text-to-image system that generates images token-by-token (like ChatGPT generates text). Its massive 32,768 token input window allows structured, multi-paragraph prompts with JSON character descriptions, HTML/CSS specs, and detailed compositional instructions — enabling far more precise control than diffusion-based models.

## Key Features

- **32K token context**: Orders of magnitude larger than CLIP (77 tokens) or T5 (512 tokens)
- **Autoregressive generation**: Generates 1,290 tokens per image, same paradigm as LLMs
- **Strong prompt adherence**: Follows complex, multi-part instructions with high fidelity
- **Image editing**: Can execute multiple simultaneous edit commands accurately

## Prompt Engineering Insights (from Minimaxir's research)

- **ALL CAPS emphasis**: Using "MUST" and threat-based instructions improves adherence
- **Structured Markdown**: Dashed lists work well for specifying constraints
- **Compositional buzzwords**: "Pulitzer Prize winning" improves rule-of-thirds adherence
- **JSON prompting**: 2,600+ token character descriptions enable precise rendering
- **HTML/CSS rendering**: Can render webpages from code input

## Limitations

- Poor at style transfer ("Studio Ghibli" transformations)
- No IP restrictions (generates Nintendo/Disney characters freely)
- Imperfect text rendering with occasional typos

## Cost

- Free via Gemini web/app or Google AI Studio (with watermark)
- API: ~$0.04/image (vs ChatGPT's $0.17/image), no watermark

## Related Concepts

- [[text-to-image|Text-to-Image Generation]]
- [[autoregressive-image-generation|Autoregressive Image Generation]]
- [[prompt-engineering|Prompt Engineering]]

## Sources

- [[nano-banana]]
