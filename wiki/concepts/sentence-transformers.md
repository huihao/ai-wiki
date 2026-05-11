---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 1
---

# Sentence Transformers

## Definition

Sentence transformers are neural network models that encode entire sentences or paragraphs into fixed-length dense vector representations (embeddings) that capture semantic meaning. Unlike word-level embeddings, sentence transformers produce a single vector for the entire input, enabling efficient semantic similarity search, clustering, and classification at the sentence or document level.

## Key Aspects

- Produce fixed-length sentence embeddings regardless of input length, enabling efficient comparison and retrieval
- Built on transformer architectures (BERT, RoBERTa, etc.) with pooling strategies to aggregate token-level representations
- Trained on large datasets of sentence pairs using contrastive learning objectives (e.g., MNLI, STS benchmarks)
- Enable semantic similarity search: compute cosine similarity between sentence embeddings to find related content
- Foundation for modern RAG systems: encode document chunks and queries into the same embedding space for retrieval
- Significantly more efficient than cross-encoders for large-scale retrieval, though less accurate per pair
- Used in clustering (grouping similar documents), semantic search (finding relevant passages), and paraphrase detection
- Hugging Face `sentence-transformers` library provides pre-trained models and easy fine-tuning pipelines
- Can be specialized for domains (legal, medical, code) through fine-tuning on domain-specific sentence pairs

## Related Concepts

- [[cross-encoder]] -- More accurate but slower alternative for pairwise comparison
- [[word-embeddings]] -- Predecessor technology at the token level
- [[vector-search]] -- Application of sentence embeddings for retrieval
- [[retrieval-augmented-generation]] -- Retrieval Augmented Generation relying on sentence embeddings for indexing

## Sources

- [[cross-encoder]]
