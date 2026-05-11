---
created: 2026-04-28
updated: 2026-04-28
tags: [compression, nlp, tokenization]
sources: 1
---

# Byte-Pair Encoding

## Definition

Byte-Pair Encoding (BPE) is a compression algorithm adapted for subword tokenization in language models. Starts with 256 byte-level tokens, iteratively merges most frequent adjacent pairs to create larger vocabulary. Works for any language/alphabet because everything is bytes underneath.

## Algorithm

**Training process:**

1. **Start with bytes:** 256 base tokens (0-255), hex-encoded as <00> through <ff>
2. **Count adjacent pairs:** Scan corpus, count frequency of each adjacent token pair
3. **Merge most frequent:** Create new token for most frequent pair, add to vocabulary
4. **Repeat:** Continue until vocabulary reaches target size

**Encoding process:**

- Apply learned merge rules sequentially (order matters)
- Earlier merges change what later ones can match
- Walk through token sequence once, apply each merge rule

**Decoding process:**

- Invert vocabulary map (ID → token string)
- Join all tokens
- Parse hex bytes back to UTF-8

## Key Properties

**Universal:**

- Works for any language, any alphabet
- UTF-8: English characters = 1 byte, Japanese = 3 bytes, Arabic = 2 bytes, emoji = 4 bytes
- Everything is bytes underneath → algorithm doesn't care about linguistic boundaries

**Deterministic:**

- Same corpus + same vocabulary size = exact same merges in exact same order
- No randomness in training
- Train once, save rules, use forever

**Frequency-driven:**

- Algorithm only cares about frequency
- Tokens can be: single byte, common pair ("th"), entire word ("the"), phrase (" not to ")
- Common patterns get dedicated tokens
- Rare words break into familiar byte sequences

## Vocabulary Size Trade-offs

| Metric | Small Vocabulary | Large Vocabulary |
|--------|------------------|------------------|
| Compression | Poor (1-2x) | Good (3-4x) |
| Training time | Fast | Slower (linear) |
| Encoding time | Fast | Very slow (checking many rules) |
| Sequence length | Long (more tokens) | Short (fewer tokens) |
| Embedding parameters | Fewer | More (vocab_size × embedding_dim) |
| Data requirements | Small dataset OK | Needs large dataset |

**Key considerations:**

- **Compression:** Improves with vocabulary size but diminishing returns
- **Encoding cost:** Checking more merge rules is expensive
- **Data scarcity:** Large vocabulary + small dataset = embedding collapse (tokens appear once)
- **Too small:** Forces model to memorize rigid character sequences, "mutes" smart model

## Performance Optimization

**Training:**

- Parallel pair counting (Rayon in Rust, 2-3x speedup)
- Chunk boundary handling (don't miss pairs spanning chunks)
- Sampling for large vocabularies (train on representative subset)

**Encoding:**

- Production tokenizers: Trie-based lookup, cached encoding
- Educational implementations: Sequential merge checking (debuggable)

**Decoding:**

- Simple: Invert vocab map, join tokens, parse hex bytes

## Advantages vs Alternatives

**vs. word-level:**

- Word-level: Hundreds of thousands of unique words, vocabulary explosion
- BPE: Fixed vocabulary size, handles new words gracefully

**vs. character-level:**

- Character-level: Extremely long sequences, model learns spelling + language simultaneously
- BPE: Middle ground, common patterns get tokens, model focuses on relationships

**vs. other subword methods:**

- Unigram LM: Different statistical approach
- WordPiece: Similar to BPE, different merge criteria
- SentencePiece: Language-agnostic, includes space as token

## Production Use

**GPT-2/3:** 50,257 tokens

**Training corpus:** WebText, books, Wikipedia

**Vocabulary:** Learned once, frozen during training

**Libraries:**

- tiktoken (OpenAI): Fast BPE implementation
- tokenizers (Hugging Face): Production-grade, many features
- sentencepiece: Language-agnostic tokenization

## Educational Implementation

**Debuggable features:**

- Hex string representation (immediately see what token represents)
- Sequential merge application (trace every step)
- No pruning (keep every merge for learning)

**What NOT to optimize:**

- Trie-based lookup (fast but opaque)
- Integer representation (efficient but not debuggable)
- Vocabulary pruning (production practice, hurts learning)

## LLM Behavior Explained

**Quirks from tokenization:**

- Can't count letters: Tokenizer sees ["run", "ning"], not individual characters
- Spacing matters: " hello" ≠ "hello" (different tokens)
- Rare words struggle: Break into unfamiliar pieces rarely seen during training
- Reverse text hard: "hello" → ["he", "llo"], "olleh" → completely different breakdown

## Related Concepts

- [[wordpiece-tokenization|WordPiece Tokenization]] — similar approach with ## markers
- [[vocabulary-size|Vocabulary Size]] — trade-offs in vocab selection
- [[tokenization|Tokenization]] — subword tokenization family
- [[transformers]] — BPE used in transformer models

## Related Entities

- [[openai]] — GPT models use BPE
- [[hugging-face]] — tokenizers library
- [[feste]] — Rust BPE implementation

## Sources

- [[part1-tokenization-building-llm-from-scratch-rust]]

## References

- Paper: Neural Machine Translation of Rare Words with Subword Units (Sennrich et al., 2016)
- GPT-2: OpenAI 2019 (50,257 token vocabulary)
- Feste: Rust implementation by [[jeremy-andrews]], [[tag1]]

## Differences from WordPiece

- No special continuation markers
- Merges based on frequency pairs, not likelihood scores
- More flexible, works on bytes not just Unicode characters
- Used in generative/decoder models

## Evolution

2016: Sennrich et al. introduce BPE for NMT
2019: GPT-2 adopts BPE (50,257 tokens)
2023+: Still dominant for production LLMs