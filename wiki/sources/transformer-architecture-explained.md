---
created: 2026-04-28
updated: 2026-04-28
tags: [source, transformer]
sources: 1
---

# Transformer Architecture explained

## Metadata

- **Author**: Amanatullah
- **Date**: 2023-09-01
- **URL**: https://medium.com/@amanatulla1606/transformer-architecture-explained-2c49e2257b4c
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Transformer Architecture explained.md`

## Summary

An accessible introduction to transformer architecture, explaining how transformers build text word-by-word while maintaining context. Covers the four main components: tokenization, embedding, positional encoding, transformer blocks, and softmax layer.

## Key Takeaways

- Transformers generate text sequentially, one word at a time, unlike humans who form thoughts first
- Context tracking is achieved through attention mechanism, making generated text coherent
- Five core components: tokenization → embedding → positional encoding → transformer blocks → softmax
- Transformer blocks consist of attention and feedforward components
- Post-training on Q&A datasets helps transformers perform specific tasks like answering questions or chatting

## Entities Mentioned

None specifically - general transformer model references only

## Concepts Mentioned

- [[tokenization]] - converting text to tokens
- [[embeddings]] - turning tokens into numerical vectors
- [[positional-encoding]] - adding position information to embeddings
- [[attention-mechanisms]] - adding context to words based on neighboring words
- [[multi-head-attention]] - using multiple embeddings to add richer context
- [[softmax]] - converting scores to probabilities for word selection
- [[post-training]] - fine-tuning on task-specific datasets

## Questions / Follow-ups

- How does post-training specifically modify the transformer's behavior?