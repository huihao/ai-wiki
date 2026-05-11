---
created: 2026-04-28
updated: 2026-04-28
tags: [classic, information-retrieval, nlp]
sources: 1
---

# TF-IDF

## Definition

Term Frequency-Inverse Document Frequency. A statistical measure that evaluates how relevant a word is to a document in a collection of documents. Combines local term frequency (how often a word appears in a document) with global inverse document frequency (how rare the word is across all documents).

## Key Proponents / Critics

- **Originators:** Karen Spärck Jones — pioneered IDF in the 1970s
- **Expositors:** [[vector-embeddings-mallya|Ajay Mallya]] — intuitive explanation in embedding evolution article

## Related Concepts

- TF — local frequency of a term in a document
- IDF — global rarity of a term across corpus
- [[the-evolution-of-modern-rag-architectures|BOW]] — predecessor approach
- [[word-embeddings]] — successor approach for semantic representation
- [[retrieval-augmented-generation|information retrieval]] — primary application domain

## Sources

- [[vector-embeddings-mallya]]

## Evolution

- **1970s:** IDF introduced by Karen Spärck Jones
- **1980s-2000s:** TF-IDF became the standard baseline for document retrieval and classification
- **2013+:** Word embeddings and neural approaches largely supplanted TF-IDF for semantic tasks
- **Current:** Still widely used as a simple, interpretable baseline
