---
created: 2026-04-29
updated: 2026-05-09
tags: [embedding, nlp, weight-sharing]
sources: 1
---

# Embedding Layers

## Definition

Embedding layers in modern neural language models often share weights between the input embedding (mapping tokens to vectors) and the output projection (mapping vectors back to vocabulary logits). This weight tying technique reduces the total parameter count of the model and often improves generalization, as the model must learn a single consistent representation space for both encoding and decoding tokens.

## Key Aspects

- Weight tying sets the output projection matrix equal to the transpose of the input embedding matrix, halving the parameters of the embedding/output stage
- Originally proposed by Press and Wolf (2017), weight tying was shown to reduce overfitting and improve perplexity on language modeling benchmarks
- The intuition is compelling: if a word's meaning is captured by a vector, then the same vector should be useful for predicting that word as a next-token candidate
- In transformer models, embedding layers are followed by positional encoding and normalization before entering the attention blocks
- Modern implementations (e.g., in GPT-style models) routinely tie embeddings, with some exceptions for models where input and output vocabularies differ
- Embedding layers are lightweight compared to attention and feed-forward layers, but they form the critical interface between discrete text and continuous model representations
- Pre-trained embedding layers can be frozen for downstream tasks or fine-tuned end-to-end depending on the training regime

## Related Concepts

- [[embedding-layers]]
- [[weight-tying]]
- [[word-embeddings]]
- [[transformers]]

## Sources

- [[weight-tying]]
