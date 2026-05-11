---
created: 2026-04-29
updated: 2026-04-29
tags: [source, scaling, neural-networks, optimization, deep-learning]
sources: 1
url: "https://cloneofsimo.notion.site/What-to-do-to-scale-up-09e469d7c3444d6a90305397c38a46f5"
title: "What to do to scale up?"
---

# What to do to scale up?

## Summary

A comprehensive Notion document by Simo Ryu (cloneofsimo) covering practical guidance on scaling up neural networks. The document addresses hyperparameter selection, initialization strategies, and training considerations as model size and dataset size increase, drawing on scaling laws and practical experience.

## Key Takeaways

- As compute budget scales (C = 6ND), models tend to perform better, but this requires near-optimal hyperparameters for each compute level
- muP (Maximal Update Parameterization) provides theoretically grounded methods for optimal learning rate transfer across model widths
- Standard Parameterization (SP) is only well-defined at initialization, not during training, leading to "left-shifted lr curves"
- The optimal learning rate at small scale can be transferred to larger models by halving lr when doubling width
- Weight initialization, multiplier, and learning rate are per-parameter quantities in muP, not global settings
- muP was likely used in GPT training at OpenAI (confirmed by Andrew Carr)
- The document references the diffusionflow.github.io post by GDM as inspiration for the theme

## Entities Mentioned

- [[simo-ryu]] -- creator of cloneofsimo, author of this scaling guide
- [[greg-yang]] -- co-author of Tensor Program V (muP)
- [[edward-hu]] -- co-author of Tensor Program V
- [[openai]] -- where muP was likely used for GPT training
- [[microsoft]] -- collaborator with OpenAI on muP research

## Concepts Mentioned

- [[scaling-laws]] -- universal relationships between compute, model size, and performance
- [[mup-parameterization]] -- Maximal Update Parameterization for stable training across scales
- [[hyperparameter-transfer]] -- transferring optimal HPs from small to large models
- [[maximal-feature-learning]] -- ensuring every layer learns features maximally at each optimization step
- [[abc-parameterization]] -- framework defining multiplier (a), init std (b), and lr (c) per parameter

## Raw Notes

- The document content is partially raw HTML from Notion, making full extraction difficult
- The core message is about understanding "how to scale" -- setting init std, lr, and bsz as model/dataset size grow
