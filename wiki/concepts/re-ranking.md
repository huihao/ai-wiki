---
title: "Re-ranking"
created: "2026-04-28"
tags: [optimization, rag, retrieval]
---

# Re-ranking

## Definition

Second-stage retrieval process that re-scores and re-orders documents from initial retrieval. Uses high-quality (but slow) models for precise relevance assessment.

## Purpose

Improves precision by:
- Applying accurate relevance scoring
- Correcting initial retrieval errors
- Filtering false positives
- Prioritizing truly relevant documents

## Models Used

### Cross-Encoders

Primary re-ranking architecture:

**Architecture**:
- Takes query-document pair as single input
- Format: `[CLS] query [SEP] document [SEP]`
- Full cross-attention between query and document tokens
- Outputs single relevance score

**Examples**:
- `cross-encoder/ms-marco-MiniLM-L-6-v2`
- `cross-encoder/ms-marco-TinyBERT-L-2-v2`
- Various sentence-transformer cross-encoders

### Why Cross-Encoders?

**Advantages over bi-encoders**:
- Full query-document interaction modeling
- Better semantic matching
- Higher accuracy on ranking tasks
- Captures subtle relevance signals

**Disadvantages**:
- Slow (full model run per pair)
- Cannot pre-compute document embeddings
- Requires encoding query for each document
- Not suitable for large corpus search

## Implementation

```python
from transformers import AutoTokenizer, AutoModelForSequenceClassification

tokenizer = AutoTokenizer.from_pretrained("cross-encoder/ms-marco-MiniLM-L-6-v2")
model = AutoModelForSequenceClassification.from_pretrained("cross-encoder/ms-marco-MiniLM-L-6-v2")

def rerank(query, documents, top_k=3):
    # Prepare query-document pairs
    pairs = [[query, doc] for doc in documents]

    # Tokenize pairs
    features = tokenizer(
        pairs,
        padding=True,
        truncation=True,
        return_tensors="pt",
        max_length=512
    )

    # Score pairs
    with torch.no_grad():
        scores = model(**features).logits.squeeze(-1).cpu().numpy()

    # Sort by score descending
    ranked_indices = np.argsort(scores)[::-1][:top_k]
    reranked_docs = [(documents[idx], float(scores[idx]))
                     for idx in ranked_indices]

    return reranked_docs
```

## Integration with Retrieval

Used in [[multi-stage-retrieval|Multi-Stage Retrieval]]:

1. Stage 1: Fast retrieval gets 20-50 candidates
2. Stage 2: Re-ranking scores and selects top 3-10

Only feasible because re-ranking operates on small candidate set.

## Performance Characteristics

| Model | Speed | Accuracy | Use Case |
|-------|-------|----------|----------|
| TinyBERT | Fast | Medium | Low latency |
| MiniLM | Medium | High | Balanced |
| Large BERT | Slow | Best | Maximum accuracy |

**Typical throughput**:
- TinyBERT: ~50 docs/sec
- MiniLM: ~20 docs/sec
- Large: ~5 docs/sec

## Score Interpretation

Cross-encoder scores are raw logits, not probabilities:

- Higher score = more relevant
- Scores can be negative
- Not normalized (varies by model)
- Relative ranking matters more than absolute score

## Training Data

Cross-encoders trained on relevance datasets:

- MS MARCO (Microsoft)
- Natural Questions
- TREC datasets
- Domain-specific pairs

## Optimization Strategies

### Batch Processing

Process multiple pairs in single batch:
```python
features = tokenizer(pairs, padding=True, return_tensors="pt")
# All pairs processed in parallel
```

### Top-k Selection

Only score top candidates from Stage 1:
- Typical: Score 10-50 docs
- Return top 3-10
- Reduces computation

### Model Selection

Choose based on requirements:
- Latency-sensitive: TinyBERT
- Accuracy-critical: MiniLM/Large
- Balanced: MiniLM

## Related Concepts

- [[multi-stage-retrieval|Multi-Stage Retrieval]]
- [[cross-encoder|Cross-Encoder]]
- [[hybrid-retrieval|Hybrid Retrieval]]
- [[bm25|BM25]] (often Stage 1)

## Alternative Approaches

- LLM-based re-ranking (GPT-4 scoring)
- Learning-to-rank models
- Diversity-based re-ranking

## Sources

- [[advanced-techniques-build-rag-system|Advanced Techniques to Build Your RAG System]]