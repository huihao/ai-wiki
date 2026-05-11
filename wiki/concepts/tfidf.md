---
created: 2026-04-29
updated: 2026-05-09
tags: [information-retrieval]
sources: 2
---

# TF-IDF

## Definition

TF-IDF (Term Frequency-Inverse Document Frequency) is a numerical statistic that reflects how important a word is to a document within a collection. It combines term frequency (how often a word appears in a document) with inverse document frequency (how rare the word is across all documents), producing a score that favors terms that are frequent in a specific document but uncommon overall.

## Key Aspects

- TF-IDF score = TF(w,d) * IDF(w), where TF measures local importance and IDF measures global discriminative power
- BM25 is a probabilistic refinement of TF-IDF that introduces document length normalization and saturation functions for term frequency
- In sparse vector retrieval, TF-IDF produces high-dimensional, sparse embeddings where each dimension corresponds to a vocabulary term
- Unlike dense embeddings (semantic search), TF-IDF captures lexical matching but not semantic similarity: "car" and "automobile" receive no shared weight
- Still widely used as a baseline retrieval method due to its simplicity, interpretability, and zero-training requirement
- Practical applications include document search, plagiarism detection, keyword extraction, and document clustering
- The transition from TF-IDF to dense embeddings (via transformer encoders) represents the shift from lexical to semantic retrieval in modern RAG systems

## Related Concepts

- [[bm25]]
- [[sparse-vectors]]
- [[semantic-search]]

## Sources

- [[an-intuitive-guide-to-how-llms-work]]
