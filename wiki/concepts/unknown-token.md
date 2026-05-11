---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 1
---

# Unknown Token

## Definition

An unknown token (often abbreviated `<UNK>` or `<UNKOWN>`) is a special token in a vocabulary mapping used to represent any word or subword unit that is not present in the model's trained vocabulary, serving as a fallback when the tokenizer cannot map a given input to a known token ID.

## Key Aspects

- In PyTorch's `nn.Embedding` layer, words are mapped to integer indices; words not in the vocabulary are assigned the unknown token index (commonly 0), receiving a learned but generic embedding vector.
- The frequency of unknown tokens depends on vocabulary size and tokenization strategy: larger vocabularies and subword tokenizers (BPE, WordPiece, SentencePiece) drastically reduce UNK occurrences compared to word-level tokenizers.
- The `<UNKOWN>` token (note the historical misspelling in some frameworks) is trained alongside other embeddings, so it learns to represent a reasonable "average" of unseen words based on the contexts in which it appears.
- Modern transformer models minimize unknown tokens through subword tokenization: rare words are decomposed into known subword pieces, so almost every input can be represented without UNK tokens.
- Vocabulary mapping dictionaries maintain bidirectional lookups: word-to-index (for embedding lookup during forward pass) and index-to-word (for decoding model output back to text).
- The treatment of unknown tokens is a key design decision: some models use a fixed UNK embedding, others use character-level fallback, and some (like BERT) use a WordPiece tokenizer that ensures no input produces UNK.

## Related Concepts

- [[vocabulary-mapping]] -- the dictionaries that define the token-to-index correspondence
- [[word-embeddings]] -- dense vector representations that UNK tokens must fit within
- [[tokenization]] -- the process that determines which inputs become UNK tokens

## Sources

- [[transformers-word-embeddings]]
