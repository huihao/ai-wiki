---
title: "Dense Vectors"
created: "2026-04-28"
tags: [embedding, retrieval, vectors]
---

# Dense Vectors

## Definition

High-dimensional vectors of floating-point numbers used to represent text semantic meaning. All dimensions are meaningful, unlike sparse vectors with many zeros.

## Properties

### Structure

- Dimension: Typically 384-1536
- Values: Floating-point (float32)
- All dimensions non-zero (dense)
- No explicit dimension meaning

### Generation

Created by embedding models:
- Sentence transformers
- Encoder-only transformers
- Specialized embedding models

### Representation

Captures semantic properties:
- Meaning similarity → vector similarity
- Nearby vectors = similar meaning
- Enables semantic search

## Popular Models

### Sentence Transformers

- `all-MiniLM-L6-v2`: 384-dim, fast
- `all-mpnet-base-v2`: 768-dim, accurate
- `multi-qa-mpnet-base-dot-v1`: 768-dim, QA optimized

### OpenAI

- `text-embedding-ada-002`: 1536-dim
- `text-embedding-3-small`: 1536-dim
- `text-embedding-3-large`: 3072-dim

### Others

- Cohere embeddings
- E5 models
- BGE models

## Embedding Process

### Mean Pooling

Most common method:

```python
def generate_embedding(text):
    # Tokenize
    inputs = tokenizer(text, return_tensors="pt")

    # Encode
    outputs = model(**inputs)
    embeddings = outputs.last_hidden_state

    # Mean pool with attention mask
    mask = inputs['attention_mask']
    expanded_mask = mask.unsqueeze(-1).expand(embeddings.shape).float()

    sum_embeddings = torch.sum(embeddings * expanded_mask, axis=1)
    sum_mask = torch.clamp(expanded_mask.sum(axis=1), min=1e-9)

    mean_embeddings = sum_embeddings / sum_mask
    return mean_embeddings
```

### Pooling Strategies

- **CLS pooling**: Use [CLS] token only
- **Mean pooling**: Average all tokens (weighted by mask)
- **Max pooling**: Maximum across tokens

## Distance Metrics

### L2 Distance (Euclidean)

```
d(x, y) = ||x - y||_2 = sqrt(Σ(xi - yi)^2)
```

Used with FAISS IndexFlatL2.

### Cosine Similarity

```
sim(x, y) = (x · y) / (||x|| * ||y||)
```

Normalized dot product, range [-1, 1].

### Dot Product

```
score = x · y = Σ(xi * yi)
```

Fast but requires normalization for fairness.

## Indexing

### FAISS

Facebook AI Similarity Search:

- **IndexFlatL2**: Exact L2 search
- **IndexFlatIP**: Exact inner product
- **IndexIVFFlat**: Inverted file index
- **IndexHNSW**: Hierarchical navigable small world

### Performance

| Index | Speed | Accuracy | Memory |
|-------|-------|----------|--------|
| Flat | Slow | Exact | High |
| IVF | Medium | Near-exact | Medium |
| HNSW | Fast | Near-exact | Medium |

## Advantages

- Semantic similarity matching
- Handles paraphrases
- Cross-language potential
- Vocabulary mismatch handled
- Dense storage efficient

## Disadvantages

- Requires embedding model
- Computation to generate
- Approximate search only (large scale)
- Black-box dimensions
- Domain-specific models needed

## Use Cases

- Semantic search
- RAG retrieval ([[retrieval-augmented-generation|RAG]])
- Similarity matching
- Clustering documents
- [[hybrid-retrieval|Hybrid Retrieval]] (with sparse)

## Comparison with Sparse

| Aspect | Dense | Sparse |
|--------|-------|--------|
| Dimensions | 384-1536 | 50K-100K |
| Values | Float | Int (many zeros) |
| Matching | Semantic | Keyword |
| Storage | Compact | Large |
| Speed | Medium | Fast |

## Best Practices

1. **Model selection**: Match domain (general vs specific)
2. **Pooling**: Mean pooling typically best
3. **Normalization**: Normalize for cosine similarity
4. **Indexing**: Choose based on corpus size
5. **Batching**: Generate embeddings in batches

## Related Concepts

- [[sparse-vectors|Sparse Vectors]]
- [[hybrid-retrieval|Hybrid Retrieval]]
- [[bm25|BM25]]
- [[embeddings|Embeddings]]
- [[faiss|FAISS]]

## Sources

- [[advanced-techniques-build-rag-system|Advanced Techniques to Build Your RAG System]]