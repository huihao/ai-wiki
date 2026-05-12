---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Data Augmentation

## Definition

Techniques for artificially expanding a training dataset by creating modified versions of existing data points. Common in computer vision (cropping, flipping, color jitter) and NLP (back-translation, paraphrasing). In the context of LLM training, techniques like [[knowledge-data-rephrasing]] represent a form of data augmentation that increases [[token-utility]] by presenting the same information in diverse linguistic styles.

## Related Concepts

- [[knowledge-data-rephrasing]] — specific augmentation technique for knowledge data
- [[token-utility]] — augmentation increases per-token learning signal
- [[synthetic-data-generation]] — broader category including augmentation
- [[supervised-fine-tuning]] — augmented data improves fine-tuning quality

## Sources

- [[learning-beyond-gradients]] — general augmentation concepts
- [[kimi-k2-deepseek-v3-training]] — knowledge rephrasing as augmentation

## Evolution

- **Classical augmentation (2012+)**: Image flipping, cropping, rotation for CNNs. Simple transforms that preserve labels
- **Back-translation (2018)**: Translate text to another language and back for paraphrase diversity
- **LLM-era augmentation**: Synthetic rephrasing (Moonshot AI 2026), persona-driven generation, chain-of-thought distillation. Focus on maintaining factual accuracy while varying style and complexity
