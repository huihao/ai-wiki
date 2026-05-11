---
created: 2026-04-28
updated: 2026-04-28
tags: [source, rag, retrieval, tutorial]
sources: 1
---

# Advanced Techniques to Build Your RAG System

## Metadata

- **Author**: Muhammad Asad Iqbal Khan (MachineLearningMastery.com)
- **Date**: 2025-04-26
- **URL**: https://machinelearningmastery.com/advanced-techniques-to-build-your-rag-system/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Advanced Techniques to Build Your RAG System - MachineLearningMastery.com.md`

## Summary

A hands-on tutorial covering three advanced RAG techniques: query expansion with BART, hybrid retrieval combining BM25 sparse and dense embeddings, and multi-stage retrieval with cross-encoder re-ranking. Includes complete Python code using HuggingFace transformers and FAISS.

## Key Takeaways

- **Query expansion**: Use BART to generate query reformulations. Higher temperature (>1) produces more diverse variations. Assumption: at least one variation will retrieve better results.
- **Hybrid retrieval**: Combines sparse (BM25/TF-IDF keyword matching) and dense (sentence transformer embeddings) retrieval. Neither is universally better — semantic similarity vs. keyword capture serve different query types.
- **Score normalization**: BM25 and L2 distance scores are on different scales. Normalize both to [0, 1] before combining with a tunable `alpha` parameter.
- **Multi-stage retrieval**: Fast retriever (hybrid) shortlists candidates; slow but accurate cross-encoder re-ranks the shortlist. Trade-off: `initial_k` controls recall vs. re-ranking compute; `final_k` controls precision.
- **Cross-encoder re-ranking**: Concatenates `[CLS] query [SEP] document [SEP]` and outputs a relevance score. Much more accurate than bi-encoder similarity but slower.

## Entities Mentioned

- MachineLearningMastery.com — educational platform
- [[huggingface-skills|HuggingFace]] — transformers library and model hub
- [[Facebook]] / Meta — BART model

## Concepts Mentioned

- [[retrieval-augmented-generation|RAG]] — core architecture
- [[grouped-query-attention|Query Expansion]] — generating query variations
- [[goedel-code-prover-hierarchical-proof-search|Hybrid Search]] — combining sparse and dense retrieval
- BM25 — sparse TF-IDF-based scoring
- [[retrieval-augmented-generation|Dense Retrieval]] — embedding-based similarity search
- [[self-attention|Cross-Encoder Reranking]] — accurate but slow relevance scoring
- [[self-attention|Multi-Stage Retrieval]] — coarse-to-fine document selection
- FAISS — vector search library

## Raw Notes

- Uses `facebook/bart-large` for query reformulation, `sentence-transformers/all-MiniLM-L6-v2` for dense embeddings, `cross-encoder/ms-marco-MiniLM-L-6-v2` for re-ranking.
- The tutorial builds on a previous post about building basic RAG with transformers.

## Questions / Follow-ups

- How does this compare to modern RAG frameworks like LlamaIndex or Haystack that implement these patterns internally?
- What are best practices for choosing alpha in hybrid retrieval for different domains?
