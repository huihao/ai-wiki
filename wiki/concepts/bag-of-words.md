---
created: 2026-04-29
updated: 2026-04-29
tags: [feature-engineering, nlp, text-representation]
sources: 1
---
# Bag of Words

## Definition

Bag of Words (BoW) is a text representation method that represents documents as vectors of word counts, ignoring grammar and word order. Each unique word in the vocabulary corresponds to a dimension in the vector space.

## Key Concepts

- BoW represents text as a fixed-length vector with one dimension per unique word in the vocabulary
- The value in each dimension is the count (or TF-IDF weight) of that word in the document
- BoW loses all word order and syntactic information, treating documents as unordered word collections
- TF-IDF weighting downweights common words (high document frequency) and upweights rare, informative words
- BoW produces high-dimensional, sparse vectors that are inefficient for storage and computation
- N-gram models extend BoW to capture limited word order (bigrams, trigrams)
- BoW is the foundation for many classical NLP tasks: sentiment analysis, document classification, spam detection
- Word2Vec/CBOW learned dense embeddings by predicting context, moving beyond sparse BoW representations
- Despite its simplicity, BoW can be surprisingly effective for many classification tasks

## Related Concepts

- [[cbow]]
- [[word-embeddings]]
- [[word2vec]]

## Sources

- [[cbow-model]]
