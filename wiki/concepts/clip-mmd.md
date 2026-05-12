---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# CLIP-MMD

## Definition

CLIP-MMD (Maximum Mean Discrepancy) is an evaluation metric used to assess text-image alignment quality in text-to-image generative models. It leverages CLIP embeddings to measure the distributional similarity between generated images and their conditioning text descriptions, providing a quantitative measure of how well a model follows text prompts.

## Key Aspects

- **Text-Image Alignment**: Measures whether generated images match their text descriptions
- **Distributional Metric**: Uses Maximum Mean Discrepancy on CLIP embedding distributions rather than individual image-text pairs
- **Lower is Better**: Lower CMMD scores indicate better alignment between text and generated images
- **Comparison Standard**: Used to benchmark architectures like DiT, MMDiT, and PRX in controlled experiments
- **Benchmarks**: In Photoroom's experiments, MMDiT scored 0.19 (best), PRX scored 0.217, DiT scored 0.253
- **Complementary to FID**: While FID measures image quality/diversity, CMMD specifically measures text fidelity

## Related Concepts

- [[clip]]
- [[text-to-image-architectural-experiments]]
- [[text-encoder]]
- [[flow-matching]]

## Sources

- [[text-to-image-architectural-experiments]]
