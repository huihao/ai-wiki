---
created: 2026-04-28
updated: 2026-04-28
tags: [source, tutorial]
sources: 1
---

# Part 1: Tokenization, Building an LLM from Scratch in Rust

## Metadata

- **Author**: Jeremy Andrews
- **Date**: 2025-12-08
- **URL**: https://www.tag1.com/white-paper/part1-tokenization-building-an-llm-from-scratch-in-rust/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/Part 1_ Tokenization, Building an LLM From Scratch in Rust.md`

## Summary

Part 1 of the Feste series implements Byte Pair Encoding (BPE) tokenization in Rust. Explains why tokenization shapes model capabilities, vocabulary size trade-offs, and parallelized training/encoding.

## Key Takeaways

- BPE starts with 256 byte tokens and iteratively merges frequent pairs.
- Tokenization is integral to model architecture, not just preprocessing.
- LLM quirks (counting letters, spacing sensitivity, reverse text) stem from tokenization.
- Feste implements BPE with Rayon parallelization for pair counting.
- Sampling optimization: training on a 200KB sample instead of 5.5MB achieves nearly identical compression with 0.34% difference.
- Vocabulary trade-offs: larger vocab → better compression but slower encoding and more parameters.
- Shakespeare corpus results: 256 vocab = 1.00x compression; 512 = ~1.9x; 1024 = 2.48x; 1536 = 2.78x; 20,534 = 3.66x.

## Entities Mentioned

- Jeremy Andrews — author
- Tag1 — publisher
- OpenAI — GPT-2/BPE creators

## Concepts Mentioned

- [[tokenization]] — BPE algorithm
- [[positional-encoding|Byte pair encoding]] — subword tokenization
- Vocabulary size — compression vs speed trade-off
- [[building-llm-from-scratch-rust-part1|Rust]] — implementation language

## Questions / Follow-ups

- How does this educational BPE implementation compare to production tokenizers like tiktoken?
