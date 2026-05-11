---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 2
---

# LLM Embeddings

## Definition

LLM embeddings are dense numerical vector representations that encode the meaning of tokens (words, subwords, or characters) in a high-dimensional space where semantic relationships are captured as geometric distances. In transformer models, embeddings are the first transformation applied to input token IDs, mapping discrete symbols into continuous vector spaces (e.g., 768 dimensions in GPT-2, 4,096 in Llama 2) where the model can perform mathematical operations to understand context and meaning.

## Key Aspects

- **Token Embeddings**: Lookup table mapping each token ID to a row in a [vocab_size, embedding_dim] matrix; GPT-2 uses 50,257 tokens x 768 dimensions = ~39M parameters just for embeddings
- **Semantic Clustering**: Tokens that appear in similar contexts end up close in embedding space; "king" and "queen" cluster together because both follow "the" and precede "ruled"
- **Position Embeddings**: A second embedding table encodes token position (since transformers process all tokens in parallel); added element-wise to token embeddings
- **Training Behavior**: Embedding values start random (untrained models produce garbage) and are adjusted during training based on prediction success
- **Contextual Understanding**: Self-attention refines embeddings by incorporating contextual information from the entire sequence -- each token's representation is informed by every other token
- **Query, Key, Value Projections**: Three weight matrices (Wq, Wk, Wv) project input embeddings into query, key, and value components for attention computation
- **Scaling**: Embedding parameters scale linearly with vocab_size; increasing embedding_dim causes quadratic growth in attention and MLP matrices
- **Applications Beyond LLMs**: Embeddings power semantic search, recommendation systems, and clustering; the same vector space principles apply

## Related Concepts

- [[gpt-2]]
- [[gpt-neo]]
- [[machine-translation]]

## Sources

- [[understanding-and-coding-self-attention-mechanism]]
- [[what-are-llm-embeddings]]
