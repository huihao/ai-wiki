---
created: 2026-04-28
updated: 2026-04-28
tags: [mathematics, probability, visualization]
sources: 1
---

# Renormalization

## Definition

Technique of rescaling probability distributions so that a subset of outcomes is treated as having total probability 1. In language model visualization, clicking a branch renormalizes to view that branch as certain, then shows conditional probabilities for its continuations. Analogous to wave function renormalization in quantum mechanics. Useful for focusing analysis on specific decision paths.

## Key Attributes

- **Definition**: rescale probabilities so subset sums to 1
- **Mechanism**: P'(x∈subset) = P(x) / P(subset)
- **Visualization effect**: clicked branch fills display height
- **Interpretation**: "assume this branch was sampled, what futures remain?"
- **Analogy**: quantum mechanics wave function normalization

## Application to Language Models

- Original: P(clicked_seq) may be small (e.g., 0.15)
- Renormalize: set P(clicked_seq) = 1 for visualization
- Show: P'(future|clicked_seq) = P(future|clicked_seq) conditional on that branch
- Effect: zoom into sub-multiverse of that branch's futures

## Mathematical Foundation

- Original: Σ P(all sequences) = 1
- Subset: P(clicked_seq) = some value < 1
- Renormalized: Σ P'(future|clicked_seq) = 1 for all futures of clicked_seq
- Formula: P'(future) = P(future) / P(clicked_seq)

## Use Cases

- Analyze specific decision path in detail
- Understand branching within a chosen continuation
- Debug: why did model take this low-probability path?
- Explore: what alternatives existed at key decision point?

## Related Concepts

- [[language-model-multiverse]] — probability distribution to renormalize
- [[probability-mass-visualization]] — tool using renormalization
- [[conditional-probability]] — mathematical foundation

## Sources

- [[block-multiverse-visualizations]] — renormalization implemented as click-to-zoom

## Contradictions / Open Questions

- Does renormalization change interpretation or just visualization?
- How does repeated renormalization affect probability understanding?
- Is analogy to quantum mechanics helpful or confusing?