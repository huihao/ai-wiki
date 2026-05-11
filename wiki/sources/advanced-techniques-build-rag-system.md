---
url: "https://machinelearningmastery.com/advanced-techniques-to-build-your-rag-system/"
title: "Advanced Techniques to Build Your RAG System"
author: "Muhammad Asad Iqbal Khan"
date: "2025-04-26"
description: "Advanced RAG techniques including query expansion, hybrid retrieval, and multi-stage retrieval with re-ranking"
---

# Advanced Techniques to Build Your RAG System

> Original link: [https://machinelearningmastery.com/advanced-techniques-to-build-your-rag-system/](https://machinelearningmastery.com/advanced-techniques-to-build-your-rag-system/)

---

## Summary

This article explores advanced techniques for enhancing RAG systems, focusing on improving retrieval quality and prompt engineering. Covers three key techniques: query expansion/reformulation, hybrid retrieval (combining dense and sparse methods), and multi-stage retrieval with re-ranking.

## Key Concepts

### Query Expansion and Reformulation

Challenge: User queries may not match terminology in knowledge base.

Solution: Generate multiple query variations using models like BART to bridge the gap. Uses beam search with high temperature for diversity.

Implementation: Use `BartForConditionalGeneration` to generate multiple reformulations, assuming at least one variation will help retrieve relevant documents.

### Hybrid Retrieval: Dense and Sparse Methods

Combines two retrieval approaches:

- **Dense Vector Retrieval**: High-dimensional floating-point vectors capturing semantic similarity via embedding models
- **Sparse Vector Retrieval**: High-dimensional integer vectors (like one-hot encoding) capturing keywords using Okapi BM25

Neither is universally better. Dense excels at semantic similarity, sparse excels at keyword matching.

Implementation:
- Use `rank_bm25` for BM25 scoring
- Use FAISS index for dense vector search with L2 distance
- Normalize both scores to [0, 1] range
- Combine with weighted average (`alpha * dense + (1-alpha) * sparse`)
- Allows tuning emphasis between semantic vs keyword matching

### Multi-Stage Retrieval with Re-ranking

Two-stage approach balancing efficiency and accuracy:

1. **Stage 1**: Fast hybrid retrieval to shortlist candidates (initial_k documents)
2. **Stage 2**: Slow but accurate re-ranking model on shortlist only (final_k documents)

Uses cross-encoder models like `ms-marco-MiniLM-L-6-v2` for re-ranking. Takes concatenated `[CLS] query [SEP] document [SEP]` format and outputs relevance scores.

Trade-offs:
- Larger `initial_k` increases recall but requires more re-ranking computation
- Smaller `final_k` focuses on most relevant documents
- First-stage model must be roughly correct for second-stage to work

## Technical Details

### Embedding Generation

Uses mean pooling on transformer outputs:
```python
def generate_embedding(text):
    inputs = tokenizer(text, padding=True, truncation=True, return_tensors="pt")
    outputs = model(**inputs)
    attention_mask = inputs['attention_mask']
    embeddings = outputs.last_hidden_state
    # Mean pooling with attention mask
    expanded_mask = attention_mask.unsqueeze(-1).expand(embeddings.shape).float()
    sum_embeddings = torch.sum(embeddings * expanded_mask, axis=1)
    sum_mask = torch.clamp(expanded_mask.sum(axis=1), min=1e-9)
    mean_embeddings = sum_embeddings / sum_mask
    return mean_embeddings.cpu().numpy()
```

### BM25 Implementation

Tokenizes documents to lowercase for TF-IDF-based scoring. Capitalization doesn't matter for BM25 since it checks exact word intersection.

### Score Normalization

Both BM25 scores and L2 distances normalized to [0, 1] range for combination:
- BM25: divide by max score
- Dense: use `1/(eps + distance)` as similarity, then normalize

## Related Concepts

- [[rag-optimization|RAG Optimization]]
- [[query-expansion|Query Expansion]]
- [[hybrid-retrieval|Hybrid Retrieval]]
- [[multi-stage-retrieval|Multi-Stage Retrieval]]
- [[re-ranking|Re-ranking]]
- [[dense-vectors|Dense Vectors]]
- [[sparse-vectors|Sparse Vectors]]
- [[bm25|BM25]]
- [[cross-encoder|Cross-Encoder]]

## Models Mentioned

- `facebook/bart-large` - Query expansion
- `sentence-transformers/all-MiniLM-L6-v2` - Dense embeddings
- `cross-encoder/ms-marco-MiniLM-L-6-v2` - Re-ranking

## Key Takeaways

For a given generator model, RAG success depends on:
1. Providing useful context via improved retrieval
2. Accurately describing expected output in prompts

These advanced techniques significantly improve RAG performance by enhancing both retriever quality and prompt construction.