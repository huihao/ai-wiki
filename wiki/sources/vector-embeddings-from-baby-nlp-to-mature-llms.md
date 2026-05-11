---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Vector Embeddings: From Baby NLP to Mature LLMs

## Metadata

- **Author**: Ajay Mallya
- **Date**: 2024-04-09
- **URL**: https://medium.com/@amallya0523/vector-embeddings-from-baby-nlp-to-mature-llms-f395b533a5e0
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/Vector Embeddings_ From Baby NLP to Mature LLMs.md

## Summary

A comprehensive evolution of vector embedding techniques in NLP, tracing the progression from simple one-hot encoding to modern transformer architectures. The article explains how computers represent words as numbers, starting with basic positional encoding, then advancing through frequency-based methods (Bag of Words, TF-IDF) to semantic capture approaches (CBOW, Skip-Gram) and finally to transformer-based embeddings.

## Key Takeaways

- NLP fundamentally requires representing words as numbers for computer processing
- Early approaches (one-hot encoding, Bag of Words) focused on positional and frequency information but suffered from curse of dimensionality
- TF-IDF improved on frequency-based methods by incorporating global document importance through term frequency × inverse document frequency
- Continuous Bag of Words (CBOW) introduced neural networks to predict target words from context, capturing semantic relationships
- Skip-Gram reversed CBOW's approach, predicting context words from targets, better handling polysemy (words with multiple meanings)
- Transformers represent the current pinnacle, using multi-head attention to capture long-range dependencies and complex relationships
- Each advancement addressed limitations of previous methods while enabling more sophisticated language understanding

## Entities Mentioned

- [[ajay-mallya|Ajay Mallya]] — Columbia University Applied Mathematics undergraduate student, author of the article

## Concepts Mentioned

- [[vector-embeddings|Vector Embeddings]] — Numerical representations of words that capture semantic and syntactic properties
- [[one-hot-encoding|One-Hot Encoding]] — Binary vector representation where each word gets a unique position
- [[bag-of-words|Bag of Words (BOW)]] — Frequency-based text representation ignoring word order
- [[tf-idf|TF-IDF]] — Term Frequency-Inverse Document Frequency weighting scheme
- [[cbow|Continuous Bag of Words]] — Neural network method predicting target word from context
- [[skip-gram|Skip-Gram]] — Neural network method predicting context words from target
- [[transformer|Transformer]] — Modern architecture using attention mechanisms for language understanding
- [[neural-networks|Neural Networks]] — Computational models inspired by biological neural systems
- [[nlp|Natural Language Processing]] — Field focused on computers understanding human language
- [[curse-of-dimensionality|Curse of Dimensionality]] — Problem where high-dimensional data requires exponentially more resources

## Raw Notes

The article provides an excellent pedagogical progression from basic to advanced NLP representations. Mallya effectively uses concrete examples (like the sentence "The color of nature's sky is blue") to illustrate each technique's strengths and limitations. The progression shows how each method addresses previous shortcomings: one-hot encoding lacks semantic information, BOW ignores word importance, TF-IDF misses context relationships, CBOW loses individual word significance through averaging, and Skip-Gram struggles with small context windows. Transformers overcome these by processing all word relationships simultaneously through multi-head attention.

## Questions / Follow-ups

- How do modern embedding methods handle polysemy compared to Skip-Gram?
- What are the practical trade-offs between different embedding dimensions?
- How do contextual embeddings (BERT, GPT) differ from static embeddings (Word2Vec)?