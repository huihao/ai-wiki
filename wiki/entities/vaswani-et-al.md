---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, researchers]
sources: 0
---

# Vaswani et al.

## Summary

Vaswani et al. refers to the authors of the landmark 2017 paper "Attention Is All You Need," which introduced the Transformer architecture. Published by researchers at Google Brain and the University of Toronto, this paper fundamentally changed machine learning by demonstrating that attention mechanisms alone — without recurrence or convolution — could achieve state-of-the-art results in machine translation. The Transformer architecture underpins virtually all modern large language models.

## Key Attributes

- **Paper**: "Attention Is All You Need" (NeurIPS 2017)
- **Authors**: Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Łukasz Kaiser, Illia Polosukhin
- **Institution**: Google Brain, University of Toronto
- **Impact**: The Transformer architecture is the foundation of GPT, BERT, Llama, Claude, and all major modern LLMs

## Related Entities

- [[google]] — employer of most authors at the time of publication
- [[openai]] — GPT series builds directly on Transformer architecture
- [[anthropic]] — Claude uses Transformer variants

## Related Concepts

- [[transformer-architecture]] — the architecture introduced by Vaswani et al.
- [[attention-mechanism]] — core innovation of the paper
- [[self-attention]] — specific attention variant introduced
- [[multi-head-attention-from-scratch|Multi-Head Attention]] — parallel attention heads in the original design

## Sources

- [[the-illustrated-transformer]] — visual breakdown of the original paper
- [[implementing-a-transformer-from-scratch]] — highlights subtle implementation details
- [[everything-about-transformers]] — deep dive into the architecture
- [[how-llm-understands-input-math|How an LLM Understands Input: The Math Under the Hood]] — explains transformer mechanics

## Contradictions / Open Questions

- The original Transformer used an encoder-decoder design; modern LLMs use decoder-only variants. Was the encoder-decoder design a dead end for generative tasks?
