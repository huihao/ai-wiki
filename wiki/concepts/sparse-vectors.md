---
title: "Sparse Vectors"
created: "2026-04-28"
tags: [retrieval, search, vectors]
---

# Sparse Vectors

## Definition

High-dimensional vectors with many zero values, typically representing keyword presence or term frequencies. Contrast with dense vectors where all dimensions are meaningful.

## Properties

### Structure

- Dimension: Vocabulary size (50K-100K+)
- Values: Integer (term counts) or float (TF-IDF)
- Mostly zeros (sparse)
- Each dimension = specific word

### Meaning

Each position corresponds to vocabulary word:
- Position i = word i in vocabulary
- Value = count/weight of word i in document
- Explicit semantic (each dim has meaning)

## Common Types

### One-Hot Encoding

```
Document: "cat sat"
Vocabulary: ["cat", "dog", "sat", "stand"]

Vector: [1, 0, 1, 0]
```

Each position: 1 if word present, 0 otherwise.

### Term Frequency (TF)

```
Document: "cat cat sat"
Vocabulary: ["cat", "dog", "sat", "stand"]

Vector: [2, 0, 1, 0]
```

Counts of each word.

### TF-IDF

Term frequency weighted by inverse document frequency:
```
TF-IDF(t, d) = TF(t, d) * IDF(t)
IDF(t) = log(N / df(t))
```

Rare words weighted higher, common words lower.

## BM25 Sparse Vectors

[[bm25|BM25]] uses modified TF-IDF:
- Term frequency saturation
- Document length normalization
- More sophisticated scoring

## Advantages

- Exact keyword matching
- Interpretable dimensions
- No training required
- Fast computation
- Works on raw text

## Disadvantages

- No semantic matching
- Vocabulary mismatch problem
  - "car" ≠ "automobile" (different positions)
- High memory usage (large vectors)
- Zero-shot learning impossible

## Vocabulary Mismatch

Core limitation:

```
Query: "automobile repair"
Doc: "car maintenance"

Sparse vectors: Completely different (different vocab positions)
Dense vectors: Similar (semantic match)
```

## Implementation

### Bag-of-Words

```python
from sklearn.feature_extraction.text import CountVectorizer

vectorizer = CountVectorizer()
sparse_matrix = vectorizer.fit_transform(documents)
# sparse_matrix: scipy sparse matrix
```

### TF-IDF

```python
from sklearn.feature_extraction.text import TfidfVectorizer

vectorizer = TfidfVectorizer()
tfidf_matrix = vectorizer.fit_transform(documents)
```

### BM25

```python
from rank_bm25 import BM25Okapi

tokenized_corpus = [doc.split() for doc in documents]
bm25 = BM25Okapi(tokenized_corpus)
scores = bm25.get_scores(query.split())
```

## Storage

Sparse matrices for efficiency:
- Only store non-zero values
- Compressed Sparse Row (CSR) format
- Dramatically reduces memory

```python
# Dense: 100K dims, all floats = 400KB per doc
# Sparse: 100K dims, 100 non-zero = 0.4KB per doc
```

## Use Cases

- Keyword search
- Exact term matching
- Known vocabulary domains
- [[hybrid-retrieval|Hybrid Retrieval]] (complement dense)
- Quick retrieval ([[bm25|BM25]])

## Integration with Dense

Combined in [[hybrid-retrieval|Hybrid Retrieval]]:
- Sparse handles keywords
- Dense handles semantics
- Scores combined (weighted average)
- Better overall retrieval

## Comparison with Dense

| Aspect | Sparse | Dense |
|--------|--------|-------|
| Dimensions | 50K-100K | 384-1536 |
| Values | Int/float, many zeros | Float, all non-zero |
| Meaning | Explicit (words) | Implicit (semantic) |
| Matching | Keywords | Semantic |
| Memory | High (but sparse) | Low |

## Sparse-Dense Hybrid

Modern trend: Learnable sparse representations:
- SPLADE (Sparse Lexical AnExpansion)
- Learned term weighting
- Combines sparse explicitness with learned semantics

## Related Concepts

- [[dense-vectors|Dense Vectors]]
- [[bm25|BM25]]
- [[hybrid-retrieval|Hybrid Retrieval]]
- [[tfidf|TF-IDF]]
- [[bag-of-words|Bag-of-Words]]

## Sources

- [[advanced-techniques-build-rag-system|Advanced Techniques to Build Your RAG System]]