---
created: 2026-04-28
updated: 2026-04-28
tags: [attention, multimodal, transformer]
sources: 1
---

# Cross-Attention

## Definition

A variant of attention where the query sequence comes from one input and the key/value sequences come from a different input. Used in encoder-decoder transformers (where decoder queries attend to encoder outputs) and in multimodal models like Stable Diffusion (where image features attend to text prompts).

## Key Proponents / Critics

- **Originators:** [[vaswani-et-al|Vaswani et al.]] — introduced in original transformer for machine translation
- **Adopters:** [[stability-ai]] — uses cross-attention in Stable Diffusion for text-to-image generation

## Related Concepts

- [[self-attention]] — attention within the same sequence
- encoder-decoder — architecture using cross-attention
- [[how-to-scale-your-model|multimodal model]] — models processing multiple input types
- [[stable-diffusion-project-creating-illustration|Stable Diffusion]] — uses cross-attention between image and text
- [[transformers|transformer]] — the architecture containing cross-attention

## Sources

- [[self-attention|understanding-coding-self-attention-raschka]]
- [[self-attention|coding-self-attention-multi-head-causal-cross-raschka]]

## Evolution

- **2017:** Introduced in original transformer for machine translation
- **2020+:** Became essential in vision-language models
- **2022:** Stable Diffusion demonstrated cross-attention's power for text-conditioned image generation
- **Current:** Standard component in any model mixing information from multiple modalities
