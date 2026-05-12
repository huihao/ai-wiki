---
created: 2026-04-27
updated: 2026-04-27
tags: [source, tutorial, foundational, transformer]
sources: 1
---

# The Illustrated Transformer

## Metadata

- **Author**: [[jay-alammar]]
- **Date**: 2018-06-27 (updated through 2025)
- **URL**: https://jalammar.github.io/illustrated-transformer/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/The Illustrated Transformer.md`

## Summary

The canonical visual introduction to the Transformer architecture. Alammar breaks down the original "Attention Is All You Need" paper into digestible, illustrated concepts: encoder-decoder stacks, self-attention, multi-headed attention, positional encoding, residual connections, and the decoding process. Featured in courses at Stanford, Harvard, MIT, Princeton, and CMU. Later expanded into a book at llm-book.com.

## Key Takeaways

- **Architecture overview**: Transformer = stack of encoders + stack of decoders. The original paper uses 6 layers each, but this is a hyperparameter.
- **Encoder structure**: Each encoder has two sub-layers — self-attention + feed-forward neural network. The FFN is position-wise (same network applied independently to each position), enabling parallelization.
- **Self-attention mechanism**:
  - For each word, create Query, Key, and Value vectors by multiplying embeddings with learned weight matrices.
  - Score = dot product of Query with all Keys.
  - Scale by √d_k, apply softmax, multiply by Values, sum → output vector.
  - This allows the model to bake "understanding" of other relevant words into the current word's representation.
- **Multi-headed attention**: 8 parallel attention heads with separate Q/K/V weight matrices. Expands the model's ability to focus on different positions and provides multiple representation subspaces. Outputs are concatenated and projected via WO.
- **Positional encoding**: Sine/cosine vectors added to embeddings to encode sequence order. Scales to unseen sequence lengths.
- **Residual connections + Layer Norm**: Around every sub-layer in both encoder and decoder.
- **Decoder specifics**:
  - Masked self-attention (can only attend to earlier positions).
  - Encoder-decoder attention (Queries from decoder, Keys/Values from encoder output).
  - Autoregressive output generation one token at a time.
- **Training**: Cross-entropy loss against target probability distributions. Decoding strategies include greedy decoding and beam search.

## Entities Mentioned

- [[jay-alammar]] — author
- Google Brain / Google Research — original Transformer team (Vaswani et al.)
- Tensor2Tensor — reference implementation
- Harvard NLP — annotated paper with PyTorch code

## Concepts Mentioned

- [[transformer-architecture]] — core subject
- [[self-attention]] — foundational mechanism
- [[multi-head-attention-from-scratch|Multi-Head Attention]] — parallel attention heads
- [[projective-ray-positional-encoding|Positional Encoding]] — sine/cosine sequence ordering
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|Encoder-Decoder Architecture]] — model structure
- [[residual-connections|Residual Connections]] — training stability
- [[layer-normalization]] — training stability
- [[goedel-code-prover-hierarchical-proof-search|Beam Search]] — decoding strategy
- [[self-attention|Cross-Entropy Loss]] — training objective
- [[all-the-transformer-math-you-need-to-know|Attention Is All You Need]] — original paper

## Raw Notes

- The article is deliberately oversimplified to make concepts accessible. It covers the original 2017 Transformer for machine translation, not modern decoder-only LLMs.
- The 2025 update mentions a free short course with animations and a book (llm-book.com) that covers modern variants like Multi-Query Attention and RoPE.
- Images referenced in the raw file are stored in `raw/assets/70/` but are not critical for understanding the text summary.

## Questions / Follow-ups

- How does the original encoder-decoder Transformer differ from modern decoder-only architectures (GPT, Llama)?
- What are the practical implications of Multi-Query Attention and RoPE (mentioned in the 2025 update)?
- How has the training objective evolved from cross-entropy on translations to next-token prediction in LLMs?
