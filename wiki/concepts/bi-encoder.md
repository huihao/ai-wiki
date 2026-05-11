---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Bi-Encoder

## Definition
A bi-encoder (or dual-encoder) is an architecture for computing similarity between two inputs by encoding each independently with its own encoder network and then comparing the resulting embeddings via a distance metric (typically cosine similarity or dot product). Unlike cross-encoders that jointly process both inputs, bi-encoders enable efficient pre-computation of embeddings, making them suitable for large-scale retrieval tasks.

## Key Aspects
- **Independent encoding**: Each input (query, document, passage) is encoded separately into a fixed-dimensional embedding vector, with no cross-attention between inputs
- **Pre-computation advantage**: Document embeddings can be computed offline and indexed, so retrieval at query time is a fast nearest-neighbor search rather than a forward pass through a joint model
- **Scalability**: Enables retrieval over millions or billions of documents using approximate nearest neighbor (ANN) indices like FAISS, ScaNN, or HNSW
- **Speed-accuracy tradeoff**: Bi-encoders are faster but less accurate than cross-encoders because they cannot model fine-grained token-level interactions between query and document
- **Two-tower architecture**: Often visualized as two separate transformer towers (one for query, one for document) sharing or not sharing parameters
- **Typical pipeline**: Bi-encoder retrieves top-k candidates from a large corpus, then a cross-encoder re-ranks those candidates for final precision

## Related Concepts
- [[cross-encoder]] -- more accurate but slower alternative that jointly processes both inputs
- [[embedding-models]] -- the neural networks used as bi-encoder components
- [[vector-search]] -- the retrieval mechanism bi-encoders enable

## Sources
- [[cross-encoder]]
