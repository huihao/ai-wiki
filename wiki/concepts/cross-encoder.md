---
title: "Cross-Encoder"
created: "2026-04-28"
tags: [re-ranking, retrieval, transformer]
---

# Cross-Encoder

## Definition

Transformer model architecture that processes query and document together as single input for relevance scoring. Used primarily for re-ranking in retrieval systems.

## Architecture

### Input Format

Concatenated sequence:
```
[CLS] query tokens [SEP] document tokens [SEP]
```

### Processing

Single transformer pass:
1. Tokenize query and document
2. Concatenate with special tokens
3. Full transformer encoding
4. Pool output (typically [CLS] token)
5. Linear layer to single score

### Cross-Attention

Key differentiator from bi-encoders:

- **Query tokens** attend to **document tokens**
- **Document tokens** attend to **query tokens**
- Full bidirectional interaction
- Captures subtle relevance signals

## vs. Bi-Encoder

### Bi-Encoder

```
Query → Encoder → Query embedding
Document → Encoder → Document embedding
Score = similarity(query_emb, doc_emb)
```

**Pros**:
- Fast (pre-compute document embeddings)
- Scalable to large corpus
- Simple similarity matching

**Cons**:
- No query-document interaction
- Lower accuracy
- Misses nuanced relevance

### Cross-Encoder

```
Query + Document → Encoder → Score
```

**Pros**:
- Full interaction modeling
- Higher accuracy
- Better semantic matching

**Cons**:
- Slow (encode each pair)
- Cannot pre-compute
- Limited scalability

## Use Cases

### Ideal: Re-ranking

Stage 2 in [[multi-stage-retrieval|Multi-Stage Retrieval]]:
- Operates on small candidate set (10-50 docs)
- High accuracy critical
- Latency acceptable for small set

### Not Ideal: Initial Retrieval

Large corpus search:
- Would need to encode all query-doc pairs
- Computationally infeasible
- Use bi-encoder or BM25 instead

## Popular Models

### MS MARCO Series

Trained on Microsoft's MS MARCO dataset:

- `cross-encoder/ms-marco-MiniLM-L-6-v2`
  - 6-layer MiniLM
  - Good balance of speed and accuracy

- `cross-encoder/ms-marco-TinyBERT-L-2-v2`
  - 2-layer TinyBERT
  - Fast, medium accuracy

- `cross-encoder/ms-marco-MiniLM-L-12-v2`
  - 12-layer model
  - High accuracy, slower

### Performance Comparison

| Model | Layers | Speed | Accuracy |
|-------|--------|-------|----------|
| TinyBERT-L-2 | 2 | Fastest | Medium |
| MiniLM-L-6 | 6 | Fast | Good |
| MiniLM-L-12 | 12 | Medium | Best |

## Implementation

```python
from transformers import AutoTokenizer, AutoModelForSequenceClassification

# Load model
tokenizer = AutoTokenizer.from_pretrained("cross-encoder/ms-marco-MiniLM-L-6-v2")
model = AutoModelForSequenceClassification.from_pretrained("cross-encoder/ms-marco-MiniLM-L-6-v2")

def score_pairs(query, documents):
    # Create pairs
    pairs = [[query, doc] for doc in documents]

    # Tokenize
    features = tokenizer(
        pairs,
        padding=True,
        truncation=True,
        max_length=512,
        return_tensors="pt"
    )

    # Score
    with torch.no_grad():
        scores = model(**features).logits.squeeze(-1)

    return scores.cpu().numpy()
```

## Training

### Data

Relevance datasets with query-document pairs:
- MS MARCO: 500K+ queries, 8.8M passages
- Natural Questions: Question-answer pairs
- TREC: Judgment datasets

### Objective

Binary classification or regression:
- Relevant (label=1) vs irrelevant (label=0)
- Or continuous relevance score

### Loss Functions

- Cross-entropy for classification
- MSE for regression
- Ranking loss (margin-based)

## Optimization

### Batch Processing

Process multiple pairs simultaneously:
```python
# Efficient batch scoring
pairs = [[query, doc] for doc in docs]
features = tokenizer(pairs, padding=True, return_tensors="pt")
scores = model(**features)  # All pairs in parallel
```

### Length Limits

Truncate long documents:
- Typical max_length: 512 tokens
- Focus on beginning/end
- Avoid excessive padding

### Top-k Only

Only score Stage 1 candidates:
- Score 10-50 docs (not 1M)
- Reduces computation drastically

## Alternatives

### LLM Re-ranking

Use GPT-4 or Claude to score:
- Highest accuracy potential
- Most expensive
- Slowest

### Learning-to-Rank

Specialized ranking models:
- LambdaMART
- RankNet
- Traditional ML approach

## Related Concepts

- [[re-ranking|Re-ranking]]
- [[multi-stage-retrieval|Multi-Stage Retrieval]]
- [[bi-encoder|Bi-Encoder]]
- [[sentence-transformers|Sentence Transformers]]

## Sources

- [[advanced-techniques-build-rag-system|Advanced Techniques to Build Your RAG System]]