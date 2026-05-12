---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Understanding and Coding Self-Attention Mechanism

## Metadata

- **Author**: Sebastian Raschka, PhD
- **Date**: 2024-01-14
- **URL**: https://magazine.sebastianraschka.com/p/understanding-and-coding-self-attention
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/Understanding and Coding Self-Attention, Multi-Head Attention, Causal-Attention, and Cross-Attention.md

## Summary

A comprehensive tutorial implementing self-attention mechanisms from scratch in Python and PyTorch. Covers self-attention, multi-head attention, causal attention, and cross-attention - core components of transformer architectures used in LLMs like GPT-4 and Llama. The article emphasizes learning through coding algorithms from scratch.

## Key Takeaways

- Self-attention enhances input embeddings by incorporating contextual information from the entire sequence
- Three weight matrices (Wq, Wk, Wv) project inputs into query, key, and value components
- Attention weights computed via scaled dot-product: softmax(q·k / sqrt(dk))
- Multi-head attention uses multiple parallel attention heads, each learning different features/relationships
- Causal attention masks future tokens to ensure predictions depend only on preceding words (essential for GPT-like models)
- Cross-attention applies between two distinct sequences (useful for translation, summarization)
- Scaling by sqrt(dk) prevents numerical instability and maintains gradient stability
- Llama 2 uses 32 attention heads; embedding sizes typically 4,096 dimensions

## Entities Mentioned

- [[sebastian-raschka|Sebastian Raschka]] — Author, PhD researcher and ML educator
- [[openai|OpenAI]] — Mentioned GPT-4 as example LLM
- [[meta|Meta]] — Mentioned Llama as example LLM

## Concepts Mentioned

- [[self-attention|Self-Attention]] — Mechanism enabling models to weigh importance of sequence elements
- [[multi-head-attention|Multi-Head Attention]] — Multiple parallel attention heads for diverse feature learning
- [[causal-attention|Causal Attention]] — Masked attention for autoregressive generation
- [[cross-attention|Cross-Attention]] — Attention between two distinct sequences
- [[transformer-architecture|Transformer Architecture]] — Foundation architecture for modern LLMs
- [[transformers|Attention Is All You Need]] — Original transformer paper (2017)
- [[scaled-dot-product-attention|Scaled Dot-Product Attention]] — Standard attention computation method
- [[embeddings|LLM Embeddings]] — Vector representations of tokens in language models

## Raw Notes

The article provides hands-on implementation details crucial for understanding how transformers work internally. Emphasizes that coding from scratch is superior to just reading theory. The author is writing a book "Build a Large Language Model (from Scratch)" motivated by this teaching approach. Shows step-by-step how query/key/value projections work, how attention weights normalize, and how masking prevents future token access in autoregressive models.

## Questions / Follow-ups

- How does Flash Attention optimize the basic self-attention implementation?
- What are the computational bottlenecks in self-attention for different sequence lengths?
- How do attention mechanisms differ between encoder-only (BERT) vs decoder-only (GPT) architectures?