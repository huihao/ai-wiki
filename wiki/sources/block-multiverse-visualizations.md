---
created: 2026-04-28
updated: 2026-04-28
tags: [source, visualization, language-models, probability]
sources: 1
---

# Block multiverse visualizations

## Metadata

- **Author**: generative.ink
- **Date**: 2022-11-07
- **URL**: https://generative.ink/meta/block-multiverse/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Block multiverse visualizations.md`

## Summary

An interactive visualization tool showing probability mass distribution across possible futures of language model generations. Each block represents a sequence ending with a displayed token, with height indicating sampling probability (temperature 1). The interface supports renormalization — clicking a block zooms to treat that sequence as certain, visualizing conditional probabilities thereafter.

## Key Takeaways

### Visualization Mechanics
- **Block structure**: each block = possible sequence ending at displayed token
- **X-axis**: sequence dimension (time) — token positions
- **Block height**: probability that sequence is sampled conditional on prompt
- **Total height**: unity (1) — all probabilities sum to 1
- **Probability calculation**: P(A+B|prompt) = P(A|prompt) × P(B|prompt+A) (chain rule)

### Generation Parameters
- **Depth**: maximum sequence length to plot
- **Cutoff**: minimum probability threshold; low-probability branches not plotted (API cost limit)

### Renormalization Feature
- Clicking block zooms to make that block fill display height
- Conceptually renormalizes: treated as probability = 1
- Visualizes probabilities conditional on clicked sequence being sampled
- Similar to wave function renormalization in quantum mechanics
- Bottom of screen shows magnification level after each zoom

### Conceptual Interpretation
- Language models generate "multiverse" of possible futures
- Each token choice branches into multiple futures
- Visualization shows probability mass across all branches
- Renormalization = assuming one branch was actually taken

## Mathematical Foundation

- Conditional probability chain: P(seq) = P(t₁|prompt) × P(t₂|prompt+t₁) × P(t₃|prompt+t₁+t₂) ...
- Temperature 1 sampling: raw probabilities from softmax
- Renormalization: P'(future|clicked_seq) = P(future|clicked_seq) / P(clicked_seq|prompt), then set P(clicked_seq) = 1

## Entities Mentioned

- None identified (generative.ink is website, not organization cataloged yet)

## Concepts Mentioned

- [[language-model-multiverse]] — probability distribution over futures
- [[probability-mass-visualization]] — visual representation of probability
- [[renormalization]] — probability rescaling technique
- [[conditional-probability]] — foundation of chain rule calculation
- [[temperature-parameter]] — sampling at temperature 1

## Raw Notes

- Uses Python implementation of loom
- Visualization concept from "language models are multiverse generators" post
- Analogous to quantum mechanics wave function renormalization
- Interactive: click-to-zoom enables exploring specific branches
- Practical tool for understanding model uncertainty and branching