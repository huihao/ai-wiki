---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 2
---

# NN Embedding

## Definition

An embedding (nn.Embedding in PyTorch) is a trainable lookup layer that maps discrete indices (typically word or token IDs) to dense, continuous vector representations. These embeddings capture semantic relationships between tokens, where similar tokens end up with similar vectors after training.

## Key Aspects

- nn.Embedding takes a vocabulary index (not one-hot vectors) and returns the corresponding dense vector, making it an efficient lookup table
- Two key parameters: vocab_size (number of unique tokens) and embedding_dim (dimensionality of each vector); larger embedding_dim provides more degrees of freedom for capturing meaning
- In Word2Vec, the embeddings are the rows of the first weight matrix (W1) learned through context prediction
- Words occurring in similar contexts get similar embeddings through the distributional hypothesis -- "you shall know a word by the company it keeps"
- Unknown words are mapped to a special `<UNKOWN>` token with index 0, a limitation of static embedding approaches
- Embeddings are task-specific: the same words produce different embeddings depending on the training objective (translation, next-word prediction, etc.)
- Training uses sliding window contexts (trigrams) with backpropagation adjusting the embedding vectors alongside other model parameters
- The evolution from one-hot encoding to learned embeddings to contextual embeddings (BERT, GPT) represents increasing sophistication in representing language

## Related Concepts

- [[named-entity-recognition]]
- [[negative-sampling]]
- [[neural-network-interpretability]]

## Sources

- [[transformers-word-embeddings]]
- [[word-embeddings]]
