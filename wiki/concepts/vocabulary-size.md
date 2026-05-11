# Vocabulary Size

**Concept type:** Hyperparameter

**Category:** [[tokenization]], [[llm-foundations]]

**Impact:** Compression, speed, training behavior, model capacity

---

## Definition

Number of unique tokens in tokenizer vocabulary. Critical hyperparameter affecting compression ratio, training/inference speed, sequence length, embedding matrix size, and data requirements. Trade-off between computational cost and model capability.

## Key Metrics

**Compression ratio:** Bytes per token on average.

- Higher = shorter sequences = faster training/inference
- Lower = longer sequences = more memory/time

**Training time:** Time to learn merge rules (BPE).

- Scales roughly linearly with vocabulary size
- Sampling optimization prevents exponential growth

**Encoding time:** Time to tokenize new text.

- Grows dramatically with vocabulary size
- Checking more merge rules is expensive
- Production: Trie-based lookup speeds this up

**Embedding parameters:** vocab_size × embedding_dim.

- GPT-2: 50,257 × 768 = 38M parameters (just embeddings)
- Each token requires row in embedding matrix

## Trade-offs

| Vocab Size | Compression | Training | Encoding | Embeddings | Data Needs |
|------------|-------------|----------|----------|------------|------------|
| 256 | 1.00x | Fast | Fast | Tiny | Small OK |
| 512 | ~2x | ~1 min | 0.8s | Small | Small OK |
| 1024 | ~2.5x | ~3 min | 2s | Medium | Moderate |
| 1536 | ~2.8x | ~2.4 min | 30s | Moderate | Moderate |
| 20K+ | ~3.7x | ~5 min | 242s | Large | Large required |

## Key Considerations

### Data Scarcity

**Problem:** Large vocabulary + small dataset → embedding collapse.

- Tokens appear only once → model never learns what they mean
- Treats rare tokens as random noise
- Wastes capacity on memorizing noise

**Solution:** Vocabulary size should match data availability.

- Small datasets (Shakespeare 5.5MB): 512-1536 tokens reasonable, 20K+ risky
- Large datasets (CommonCrawl): 50K tokens appropriate

### Too Small Vocabulary

**Problem:** Forces model to speak in syllables.

- Distinct concepts ("Love", "Shakespeare") break into multiple fragments
- Model memorizes rigid character sequences just to output names
- "Mutes" smart model by forcing character-level focus

**Example:** "Wherefore art thou" → 5 pieces at vocab 512, 2 pieces at vocab 1536.

### Too Large Vocabulary

**Problems:**

- Encoding expensive (checking thousands of merge rules)
- Embedding matrix massive (memory + parameters)
- Risk of embedding collapse without sufficient data
- Diminishing compression returns (256→512 doubles compression, 1536→20K only +32%)

### Encoding Cost vs Training Benefit

**Encoding time:** Grows dramatically (checking merge rules).

- Vocab 1536: 30s encoding
- Vocab 20K: 242s encoding (8x longer)

**Training benefit:** Shorter sequences → faster forward/backward passes.

- Less memory for activations
- Fewer tokens to process per sequence

**Trade-off:** Expensive to create sequences, but cheaper to train on them.

## Compression Behavior

**Diminishing returns:**

- 256 → 512: ~2x compression (huge improvement)
- 512 → 1024: ~1.25x additional
- 1024 → 1536: ~1.12x additional
- 1536 → 20K: ~1.32x additional (13x vocab size, only 32% compression gain)

**Why:** Most frequent pairs learned early. Later merges capture rarer patterns.

## Production Guidelines

**GPT-2/3:** 50,257 tokens

- Large datasets (billions of tokens)
- WebText, books, Wikipedia
- Multi-domain, multi-language

**Domain-specific models:**

- Smaller vocabularies appropriate
- Match vocabulary to data availability
- Avoid embedding collapse

**Educational/experimental:**

- 512-1536 tokens for small corpora
- Debugging: 256 (byte-level)
- Fast iteration: tiny vocabularies

## Examples

**Shakespeare corpus (5.5MB):**

| Vocab | Tokens for "To be or not to be" |
|-------|--------------------------------|
| 256 | Byte-level, very long |
| 512 | 6 tokens: [To |be |or |not |to |be] |
| 1024 | 6 tokens: [To |be |or |not |to |be] |
| 1536 | 6 tokens: [To |be |or |not |to |be] |
| 20K | 5 tokens: [To |be |or |not to |be] (phrase-level) |

**Compression:**

- Common words get tokens quickly (512 vocab)
- Less common patterns require larger vocabulary
- Phrase-level compression needs very large vocabulary

## Performance Optimization

**Training:**

- Sampling (large vocabularies): Train on representative subset instead of full corpus
- Parallel counting (Rayon, multi-core): 2-3x speedup
- Most frequent pairs appear in any sample → training fast

**Encoding:**

- Production: Trie-based lookup (fast)
- Educational: Sequential merge checking (debuggable)

## Sources

- [[part1-tokenization-building-llm-from-scratch-rust]]

## References

- BPE algorithm: Sennrich et al. (2016)
- GPT-2 vocabulary: OpenAI 2019
- Feste experiments: [[jeremy-andrews]], [[tag1]]