---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Vocabulary Mapping

## Definition

Vocabulary mapping is the process of maintaining bidirectional lookup dictionaries that translate between human-readable words and integer token indices used by embedding layers, enabling neural networks to convert text inputs into numerical representations and decode numerical outputs back into text.

## Key Aspects

- A vocabulary mapping consists of two dictionaries: word-to-index (used during the forward pass to look up embedding vectors) and index-to-word (used during decoding to convert model output indices back to readable text).
- In PyTorch's `nn.Embedding` layer, the vocabulary is defined by `vocab_size` and `embedding_dim` parameters: a 165,000-word vocabulary with 1024-dimensional embeddings creates a 165M parameter embedding matrix.
- The training process adapts vocabulary mappings to the specific task: a translation model and a sentiment classifier trained on the same raw text will learn different embedding vectors for the same word.
- Trigram models use vocabulary mappings to create training examples: three-word windows from text are converted to index sequences, with the network learning to predict the next word from the previous two.
- Unknown words (not in the vocabulary) are mapped to the `<UNKOWN>` token index, receiving a generic embedding that represents "unseen word" information.
- Subword tokenization (BPE, WordPiece, SentencePiece) creates vocabulary mappings at the subword level rather than word level, dramatically reducing the frequency of unknown tokens.
- The quality of the vocabulary mapping directly impacts model performance: an poorly chosen vocabulary (too small, missing important domain terms) limits what the model can represent.

## Related Concepts

- [[unknown-token]] -- the fallback entry in vocabulary mappings for unseen words
- [[word-embeddings]] -- the dense vectors that vocabulary mappings index into
- [[tokenization]] -- the preprocessing step that determines vocabulary composition

## Sources

- [[transformers-word-embeddings]]
