---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, transformer, neural-network, explanation]
sources: 1
---

# What Is ChatGPT Doing … and Why Does It Work?

## Metadata

- **Author:** [[stephen-wolfram]]
- **Date:** 2023-02-14
- **URL:** https://writings.stephenwolfram.com/2023/02/what-is-chatgpt-doing-and-why-does-it-work/
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/What Is ChatGPT Doing … and Why Does It Work_.md`

## Summary

A comprehensive, accessible deep-dive into how [[what-is-chatgpt-doing-wolfram|ChatGPT]] works at a fundamental level. Wolfram explains that the model is essentially trying to produce a "reasonable continuation" of text by repeatedly asking "given the text so far, what should the next word be?" He walks through the entire pipeline: from simple n-gram models to neural networks, embeddings, transformers, attention mechanisms, training at scale, and the role of human feedback. The article uses [[large-language-models|Wolfram Language]] code examples and visualizations to make concepts concrete.

## Key Takeaways

- ChatGPT generates text one token at a time by computing probability distributions over possible next tokens
- The "temperature" parameter controls randomness: always picking the highest-probability word yields flat, repetitive output; introducing randomness produces more interesting text
- Embeddings map words into high-dimensional "meaning spaces" where semantically similar words are near each other
- The transformer architecture uses [[self-attention|attention]] to allow the model to "look back" at relevant earlier tokens when predicting the next one
- GPT-3 has ~175 billion weights and processes text through ~400 layers; each token generation requires ~175 billion calculations
- Training requires ~n² computational steps where n is the number of weights, explaining billion-dollar training costs
- Human feedback after pre-training (similar to [[nathan-lambert|RLHF]]) is crucial for producing coherent, helpful responses
- Computational irreducibility sets fundamental limits: neural nets excel at "human-like" tasks but struggle with deep, multi-step computation

## Entities Mentioned

- [[openai]] — creator of ChatGPT and GPT models
- [[stephen-wolfram]] — author, founder of Wolfram Research
- [[what-is-chatgpt-doing-wolfram|Alpha]] — computational knowledge engine suggested as a tool for LLMs

## Concepts Mentioned

- [[large-language-models|LLM]] — the core technology behind ChatGPT
- [[transformer-architecture|transformer]] — the neural architecture enabling modern LLMs
- [[attention-mechanisms]] — how transformers focus on relevant context
- [[rotary-positional-embedding|embedding]] — numerical representations of words in meaning space
- [[tokenization]] — splitting text into tokens (words or subwords)
- [[convolutional-neural-network|neural network]] — the computational foundation
- [[backpropagation]] — how neural nets learn from examples
- [[reinforcement-learning-from-human-feedback|RLHF]] — post-training with human feedback
- [[temperature-parameter]] — controlling randomness in generation
- [[computational-irreducibility]] — fundamental limits of what neural nets can learn

## Raw Notes

- GPT-2 has 12 attention blocks with 12 attention heads each; GPT-3 has 96 blocks with 96 heads each
- Embedding vectors for GPT-2 are length 768; for GPT-3 they are length 12,288
- Positional embeddings are added to token embeddings (not concatenated) — "just something that seems to work"
- The attention mechanism recombined chunks of embedding vectors with learned weights
- Wolfram emphasizes that much of transformer architecture reflects "engineering lore" rather than theoretical derivation
- The model operates as a pure feed-forward network with no looping during a single token generation
- An "outer loop" exists because each generated token becomes input for the next step
- Training data: web pages (~billions), books (~5 million digitized, ~100 billion words)
- The size of the network that works well is comparable to the size of the training data

## Questions / Follow-ups

- How do newer architectures (Mixture of Experts, state-space models) change the fundamental picture?
- What are the implications of Wolfram's "computational irreducibility" argument for tool-use in LLMs?
