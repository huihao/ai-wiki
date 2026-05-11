---
created: 2026-04-28
updated: 2026-04-28
tags: [llm-foundation, nlp]
sources: 1
---

# Tokenization

## Definition

Process of converting raw text into numerical token IDs for neural network processing. Tokenization is integral to model architecture, not just preprocessing. Every quirk in LLM behavior traces back to how tokenizer converts text to numbers.

## Why It Matters

**Tokenization determines what model sees:**

- Model doesn't read text → reads numbers
- Token IDs → embeddings → neural network operations
- Token boundaries define model's "letters"

**LLM quirks from tokenization:**

- **Can't count letters:** Tokenizer sees ["run", "ning"], not characters
- **Spacing matters:** " hello" and "hello" tokenize differently
- **Rare words struggle:** Break into unfamiliar pieces rarely seen in training
- **Reverse text hard:** "hello" → ["he", "llo"], "olleh" → completely different breakdown
- **Multi-byte characters:** Emoji (4 bytes), Japanese (3 bytes), Arabic (2 bytes)

## Methods

### Word-level Tokenization

**Approach:** Map each unique word to number.

**Problems:**

- Vocabulary explosion (hundreds of thousands in English alone)
- New words, typos, other languages → unknown
- Can't handle made-up words

**Use:** Simple models, small vocabularies, specific domains.

### Character-level Tokenization

**Approach:** Each character = token.

**Advantages:**

- Small vocabulary (256 for ASCII, more for Unicode)
- Handles any word/language

**Problems:**

- Extremely long sequences (many tokens per word)
- Model learns spelling + language simultaneously
- Spend neural capacity on character composition

**Use:** Research, specific architectures, small models.

### Subword Tokenization

**Approach:** Middle ground—frequent patterns get tokens, rare patterns break into pieces.

**Methods:**

- **[[byte-pair-encoding]] (BPE):** Start with bytes, merge frequent pairs iteratively
- **WordPiece:** Similar to BPE, different merge criteria (Google BERT)
- **Unigram LM:** Probabilistic model, different training
- **SentencePiece:** Language-agnostic, treats space as token

**Advantages:**

- Fixed vocabulary size
- Handles new words gracefully (break into familiar pieces)
- Works for any language (everything is bytes)
- Common patterns → single tokens (model focuses on relationships)
- Shorter sequences than character-level

**Dominant approach:** Production LLMs (GPT, BERT, LLaMA, etc.).

## Key Concepts

### Vocabulary

**[[vocabulary-size]]:** Number of unique tokens.

- Trade-off: Compression vs speed vs data requirements
- GPT-2/3: 50,257 tokens
- Small models: 512-10K tokens

### Compression Ratio

**Definition:** Bytes per token on average.

- Higher = shorter sequences = faster training/inference
- Lower = longer sequences = more memory/time

**Examples:**

- Byte-level (vocab 256): 1.00x (no compression)
- BPE vocab 512: ~2x
- BPE vocab 20K: ~3.7x

### Special Tokens

**Common special tokens:**

- `<UNK>`: Unknown token (word not in vocabulary)
- `<PAD>`: Padding (batch different-length sequences)
- `<EOS>`: End of sequence
- `<BOS>`: Beginning of sequence
- `<SEP>`: Separator (between sentences)
- `<CLS>`: Classification token (BERT)

### Token IDs

**Mapping:** Token string → integer ID.

- Vocabulary: `{token_string: token_id}`
- Inverse: `{token_id: token_string}`
- Embedding lookup: Token ID → row in embedding matrix

### Encoding vs Decoding

**Encoding:** Text → token IDs.

- Apply tokenizer rules (merge order matters in BPE)
- Result: List of integers

**Decoding:** Token IDs → text.

- Invert vocabulary mapping
- Join token strings
- Handle special tokens

## Production Tokenizers

**GPT-2/3:** BPE, 50,257 tokens

**BERT:** WordPiece, 30K tokens

**LLaMA:** SentencePiece, 32K tokens

**Libraries:**

- tiktoken (OpenAI): Fast BPE
- tokenizers (Hugging Face): Production-grade, multi-algorithm
- sentencepiece: Language-agnostic
- spaCy: NLP pipeline tokenization

## LLM Behavior Examples

**Counting letters:**

- User: "How many 'r' in 'strawberry'?"
- Model: Wrong (tokenization: ["straw", "berry"], doesn't see individual letters)

**Reverse text:**

- User: "Reverse 'hello'"
- Model: Hard (tokenization changes completely: "hello" ≠ "olleh")

**Spacing:**

- User: Code with specific spacing
- Model: Sensitive (different tokens for "hello" vs " hello")

**Rare words:**

- Tokenization breaks into unfamiliar pieces
- Model rarely saw those pieces during training
- Prediction quality drops

## Educational Value

**Understanding tokenization:**

- Explains LLM quirks (not fundamental limitations, design choices)
- Helps debug model behavior
- Critical for evaluating capabilities

**Implementing from scratch:**

- See every operation (not opaque library)
- Understand vocabulary trade-offs
- Debuggable representation

## Related Concepts

- [[byte-pair-encoding|Byte-Pair Encoding]] — most popular subword method
- [[vocabulary-size|Vocabulary Size]] — vocab selection trade-offs
- [[embeddings|Embeddings]] — token IDs → vectors
- [[wordpiece-tokenization|WordPiece]] — alternative subword method

## Related Entities

- [[openai]] — GPT tokenizer
- [[hugging-face]] — tokenizers library
- [[google]] — BERT WordPiece

## Sources

- [[part1-tokenization-building-llm-from-scratch-rust]]

## References

- BPE: Sennrich et al. (2016)
- WordPiece: Google BERT (2018)
- SentencePiece: Kudo & Richardson (2018)
- GPT-2 tokenizer: OpenAI 2019

## Evolution

Early NLP: Word-level (vocabulary explosion)
2015: Character-level RNNs (long sequences)
2016: BPE introduced for NMT (Sennrich)
2018: BERT adopts WordPiece
2019: GPT-2 adopts BPE (50K tokens)
2023+: Subword tokenization standard for LLMs
