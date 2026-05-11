---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 4
---

# Embeddings

## Definition

Embeddings are dense, high-dimensional numerical vectors that represent the semantic meaning of tokens (words, subwords, or other discrete units) in a continuous vector space. Created by looking up a learned matrix during the forward pass of a neural network, embeddings map discrete token IDs to continuous representations where semantically similar tokens are positioned close together, enabling models to capture and reason about meaning rather than treating text as opaque symbols.

## Key Aspects

- **From IDs to vectors**: Tokenization converts text into integer IDs, but neural networks require continuous representations. An embedding layer maintains a matrix of shape [vocab_size, embedding_dim] (e.g., GPT-2 uses 768 dimensions for 50,000 tokens), and retrieving a token's embedding is simply indexing into that matrix to copy out its row vector.
- **Learned during training**: Embedding values start random and are adjusted through backpropagation based on prediction accuracy. Tokens appearing in similar contexts (e.g., "king" and "queen") naturally cluster together in the embedding space, capturing semantic relationships without explicit labels.
- **Position embeddings complement token embeddings**: Since transformer architectures process all tokens in parallel, a second learned embedding table encodes positional information. Position and token embeddings are added element-wise, giving the model both meaning and location for each token.
- **Dense vectors for retrieval**: In retrieval-augmented generation (RAG) and semantic search, embedding models (sentence transformers, OpenAI ada-002) produce vectors of 384–3072 dimensions where cosine similarity or dot-product distance reflects semantic closeness, enabling fast approximate nearest-neighbor search via indexes like FAISS.
- **Parameter cost scales with vocab size**: A 50,000-token vocabulary at 768 dimensions requires approximately 38 million parameters for embeddings alone—roughly 44% of GPT-2 Small's total 87 million parameters.
- **Subword tokenization interacts with embeddings**: Since subword tokenizers (BPE, WordPiece) break rare words into known pieces, embeddings for those pieces must recombine meaning during downstream processing—an implicit limitation that causes LLMs to struggle with tasks like character-level counting or reversing text.

## Related Concepts

- [[dense-vectors]]
- [[tokenization]]
- [[transformers]]
- [[retrieval-augmented-generation]]
- [[faiss]]
- [[tf-idf]] — sparse predecessor to dense embeddings

## Key Proponents

- **Word embeddings**: Tomas Mikolov (word2vec), Jeffrey Pennington (GloVe)
- **Contextual embeddings**: ELMo, BERT, GPT — embeddings that depend on context
- **Modern standard**: Transformer-based embeddings (e.g., OpenAI's text-embedding-3, BGE, E5)
- **Vision embeddings**: CLIP, DINOv2 — cross-modal image representations

## Sources

- [[dense-vectors]]
- [[part3-model-architecture-building-llm-from-scratch-rust]]
- [[tokenization]]
- [[what-is-chatgpt-doing-and-why-does-it-work]]

## Evolution

- **2013**: word2vec demonstrates semantic vector arithmetic (king - man + woman ≈ queen)
- **2014**: GloVe improves word embeddings with global matrix factorization
- **2018**: BERT introduces deep contextualized embeddings
- **2020–2022**: Sentence embeddings (SBERT, SimCSE) enable semantic search
- **2023–2024**: Multi-modal embeddings (CLIP-style) unify vision and language
- **2025–2026**: Embedding models become commoditized; late-interaction models (ColBERT, ColPali) improve retrieval
