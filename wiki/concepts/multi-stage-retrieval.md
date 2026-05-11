---
title: "Multi-Stage Retrieval"
created: "2026-04-28"
tags: [optimization, rag, retrieval]
---

# Multi-Stage Retrieval

## Definition

Two-stage retrieval approach combining fast initial candidate selection with accurate final re-ranking. Balances efficiency and precision.

## Architecture

### Stage 1: Initial Retrieval

- Fast method (typically [[hybrid-retrieval|Hybrid Retrieval]])
- Retrieves `initial_k` candidates (e.g., 20-50 documents)
- Prioritizes speed and recall
- Must be roughly correct for Stage 2 to work

### Stage 2: Re-ranking

- Slow but accurate model
- Re-ranks only Stage 1 candidates
- Returns `final_k` documents (e.g., 3-10)
- Prioritizes precision and relevance

## Why Two Stages?

Single perfect model would be ideal but impractical:

- **High-quality models**: Computationally expensive (seconds per query)
- **Fast models**: Less accurate (may miss relevant docs)
- **Two-stage**: Fast initial selection + accurate refinement on small set

## Re-ranking Models

### Cross-Encoders

Most common re-ranking architecture:

- Input: `[CLS] query [SEP] document [SEP]`
- Output: Single relevance score
- Example: `cross-encoder/ms-marco-MiniLM-L-6-v2`

Advantages over bi-encoders:
- Full attention between query and document
- Better captures interaction and relevance
- Higher accuracy on ranking tasks

Disadvantages:
- Much slower (must encode each pair separately)
- Cannot pre-compute document embeddings
- Requires full model run per candidate

## Implementation

```python
def multi_stage_retrieval(query, documents, initial_k=5, final_k=3):
    # Stage 1: Hybrid retrieval
    initial_results = hybrid_retrieval(query, k=initial_k)
    initial_docs = [doc for doc, _ in initial_results]

    # Stage 2: Re-ranking
    reranked_results = rerank(query, initial_docs, top_k=final_k)
    return reranked_results

def rerank(query, documents, top_k=3):
    # Prepare pairs for cross-encoder
    pairs = [[query, doc] for doc in documents]
    features = tokenizer(pairs, padding=True,
                        truncation=True, return_tensors="pt")

    # Get scores
    with torch.no_grad():
        scores = model(**features).logits.squeeze(-1)

    # Sort and select top-k
    ranked_indices = np.argsort(scores)[::-1][:top_k]
    return [(documents[idx], scores[idx]) for idx in ranked_indices]
```

## Parameter Trade-offs

### initial_k

- **Large**: Higher recall, more re-ranking computation
- **Small**: Lower recall, faster re-ranking
- Typical: 10-50 documents

### final_k

- **Large**: More context for generation, lower precision
- **Small**: Less context, higher precision
- Typical: 3-10 documents

### Trade-off Matrix

| Scenario | initial_k | final_k | Reason |
|----------|-----------|---------|--------|
| High recall | 50+ | 10 | Cast wide net |
| High precision | 10-20 | 3-5 | Focus on best |
| Balanced | 20-30 | 5 | Default |

## Advantages

- Near-perfect model accuracy at reasonable cost
- Better precision than single-stage
- Tunable recall vs precision balance
- Works with any initial retrieval method

## Disadvantages

- Two model calls required
- Additional latency from re-ranking
- Requires cross-encoder model
- Optimal parameters vary by domain

## When to Use

- High-quality retrieval critical
- Complex or ambiguous queries
- Enterprise RAG systems
- Mixed domain documents

## Alternatives

- Single-stage with perfect model (expensive)
- [[hybrid-retrieval|Hybrid Retrieval]] only (less accurate)
- Multiple re-ranking stages (overkill)

## Related Concepts

- [[re-ranking|Re-ranking]]
- [[cross-encoder|Cross-Encoder]]
- [[hybrid-retrieval|Hybrid Retrieval]]
- [[query-expansion|Query Expansion]]

## Sources

- [[advanced-techniques-build-rag-system|Advanced Techniques to Build Your RAG System]]