# Part 1: Tokenization, Building an LLM From Scratch in Rust

**Source:** [Part 1: Tokenization, Building an LLM From Scratch in Rust](https://www.tag1.com/white-paper/part1-tokenization-building-an-llm-from-scratch-in-rust/) by [[jeremy-andrews]] (December 8, 2025)

**Related:** [[feste]], [[tag1]], [[byte-pair-encoding]], [[tokenization]], [[vocabulary-size]], [[transformer-architecture]], [[llm-foundations]]

---

## Summary

Comprehensive guide to tokenization in language models, explaining why LLMs can't count letters, reverse text, or handle character-level operations reliably. Implements [[byte-pair-encoding]] from scratch in Rust as part of [[feste]] project—a complete GPT-2 style transformer trained on Shakespeare's complete works.

## Key Themes

### Why Tokenization Shapes Everything

Tokenization is not a preprocessing step—it's an integral part of model architecture. Every quirk in LLM behavior traces back to tokenization:

- **Can't count letters:** Tokenizer sees ["run", "ning"], not individual characters
- **Spacing matters:** " hello" and "hello" tokenize differently
- **Rare words:** Break into unfamiliar token pieces rarely seen during training
- **Reverse text:** "hello" → ["he", "llo"], but "olleh" breaks completely differently

### Byte Pair Encoding (BPE)

BPE finds middle ground between word-level and character-level tokenization:

1. **Start with bytes:** 256 base tokens (0-255), covering all possible byte values
2. **Count adjacent pairs:** Scan corpus for frequent adjacent token pairs
3. **Merge most frequent:** Create new token for most frequent pair
4. **Repeat:** Continue until vocabulary reaches target size

**Advantages:**
- Works for any language, any alphabet (everything is bytes underneath)
- Common words get dedicated tokens
- Rare words break into familiar byte sequences
- Vocabulary size is configurable and fixed

### Vocabulary Size Trade-offs

Experiments on Shakespeare corpus (5.5MB, 5.4M bytes):

| Vocab Size | Compression | Training Time | Encoding Time | Example Tokens |
|------------|-------------|---------------|---------------|----------------|
| 256 | 1.00x | Fast | Fast | Byte-level only |
| 512 | 1.96x | ~1 min | 0.8s | "To |be |or |not |to |be" |
| 1024 | 2.48x | ~3 min | 2s | Common words get tokens |
| 1536 | 2.78x | ~2.4 min | 30s | "Wherefore" → 2 pieces |
| 20,534 | 3.66x | ~4.8 min | 242s | Production-scale |

**Key findings:**

1. **Compression:** Improves with vocabulary size but with diminishing returns
2. **Training time:** Scales roughly linearly (sampling optimization prevents exponential growth)
3. **Encoding time:** Grows dramatically—checking more merge rules is expensive
4. **Data scarcity:** Large vocabularies with small datasets cause embedding collapse

### Rust Implementation Details

**Performance optimizations:**

- **Parallel training:** Rayon for parallel pair counting across CPU cores (2-3x speedup)
- **Chunk boundary handling:** Count pairs spanning chunks to avoid missing merges
- **Sampling:** For large vocabularies, train on 200KB sample instead of full 5.5MB corpus
- **Sequential encoding:** Walk through token sequence once, apply merges in order

**What was intentionally NOT done:**

- Trie-based encoding lookup (production tokenizers use this for speed)
- Integer token representation (debuggable hex strings instead)
- Vocabulary pruning (keep every merge for learning purposes)
- Unicode normalization (correct by design but not optimized)

### Choosing Vocabulary Size

**Critical factors:**

1. **Data scarcity:** Massive vocabulary + small dataset = tokens appear once, embedding collapse
2. **Computational cost:** Larger vocab = shorter sequences during training, but expensive encoding
3. **Too small:** Forces model to memorize rigid character sequences, "mutes" smart model
4. **Embedding parameters:** Each token requires row in embedding matrix (vocab_size × embedding_dim)

**Recommendation:** Balance compression, speed, and training data availability. Production models use 50,257 tokens (GPT-2/3), but smaller vocabularies make sense for educational purposes or constrained datasets.

## Technical Implementation

**BPE algorithm:**

```rust
pub struct BPETokenizer {
    vocab: HashMap<String, usize>,     // Maps token strings to IDs
    merges: Vec<(String, String)>,     // Merge rules in order
    unk_token: String,                 // Unknown token
}
```

**Encoding:** Apply learned merge rules sequentially. Order matters because earlier merges change what later ones can match.

**Decoding:** Invert vocabulary map, look up each ID, join tokens, parse hex bytes back to UTF-8.

## References

- Part of 6-part series: Tokenization → Tensor Operations → Model Architecture → Training Infrastructure → Training at Scale
- Corpus: Shakespeare complete works (Project Gutenberg)
- Base architecture: GPT-2 (OpenAI 2019)
- Related Rust libraries: tiktoken-rs (OpenAI bindings), tokenizers (Hugging Face)