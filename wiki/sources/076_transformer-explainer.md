---
created: 2026-04-29
updated: 2026-04-29
tags: [source, transformer-visualization, interactive, education, gpt-2]
sources: 1
url: "https://poloclub.github.io/transformer-explainer/"
title: "Transformer Explainer: LLM Transformer Model Visually Explained"
---

# Transformer Explainer: LLM Transformer Model Visually Explained

## Summary

An interactive visualization tool that explains how text-generative Transformer models work, powered by GPT-2 (small, 124M parameters). Walks through the full pipeline step by step: tokenization, embedding, positional encoding, multi-head self-attention (QKV matrices, masking, softmax), MLP layers, and output probability generation with temperature control.

## Key Takeaways
- Three key Transformer components: Embedding, Transformer Block, Output Probabilities
- Tokenization splits text into tokens (words or subwords); GPT-2 has 50,257 tokens in vocabulary
- Token embeddings are 768-dimensional vectors stored in a (50,257, 768) matrix (~39M parameters)
- Multi-head self-attention: each token gets Q, K, V vectors; 12 heads capture different linguistic relationships
- Masked self-attention prevents the model from "peeking" at future tokens
- MLP expands dimensionality 4x (768 -> 3072) then compresses back, enriching each token independently
- Temperature controls output randomness: < 1 = deterministic, > 1 = more creative
- Transformer Explainer is powered by GPT-2 but illustrates principles shared by GPT, Llama, Gemini

## Entities Mentioned
- [[openai]]
- [[hugging-face]]
- [[google]]
- [[polo-club]]

## Concepts Mentioned
- [[next-token-prediction]]
- [[scaled-dot-product-attention]]
- [[multi-head-attention]]
- [[positional-encoding]]
- [[tokenization]]
- [[word-embedding]]
- [[softmax]]
- [[temperature-sampling]]
