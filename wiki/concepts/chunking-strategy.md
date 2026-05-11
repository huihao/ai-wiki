---
created: 2026-04-28
updated: 2026-04-28
tags: [preprocessing, rag]
sources: 0
---

# Chunking Strategy

## Definition

Chunking strategy defines how documents are split into smaller segments for vector storage and retrieval in RAG systems. Effective chunking balances semantic coherence (chunks should contain complete ideas) with retrieval granularity (chunks should be specific enough to match queries). Poor chunking causes irrelevant or incomplete retrieved context.

## Key Approaches

- **Fixed-size chunking**: Split by character/token count (e.g., 7500 chars, 100 overlap)
- **Recursive character splitting**: Hierarchical split by paragraphs, sentences, words
- **Semantic chunking**: Split by semantic boundaries (topic changes, headings)
- **Document structure chunking**: Respect PDF sections, markdown headers, code blocks

## Parameters

- **Chunk size**: Larger chunks retain context but may dilute relevance; smaller chunks are precise but may miss context
- **Chunk overlap**: Overlapping chunks prevent boundary splits from losing information
- **Separator strategy**: Which delimiters to prioritize (paragraphs, sentences, custom)

## Related Concepts

- [[retrieval-augmented-generation]] — chunking is preprocessing step
- [[embeddings]] — chunks are converted to vectors
- [[vector-database]] — chunks are stored and retrieved
- [[semantic-search]] — retrieval matches chunk granularity
- [[rag-optimization]] — chunking optimization improves retrieval quality

## Sources

- [[tuning-local-llms-with-rag]] — demonstrates RecursiveCharacterTextSplitter (7500, 100)

## Trade-offs

- **Large chunks**: Better context preservation, worse retrieval precision
- **Small chunks**: Better retrieval precision, risk of incomplete context
- **Overlap**: Prevents information loss at boundaries but duplicates storage