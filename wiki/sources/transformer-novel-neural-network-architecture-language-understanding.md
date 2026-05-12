# Transformer: A Novel Neural Network Architecture for Language Understanding

**Source:** [Transformer: A Novel Neural Network Architecture for Language Understanding](https://research.google/blog/transformer-a-novel-neural-network-architecture-for-language-understanding/) by [[jakob-uszkoreit]] (August 31, 2017)

**Related:** [[transformers]], [[google]], [[vaswani-et-al]], [[self-attention]], [[encoder-decoder]], [[machine-translation]], [[tpu]], [[coreference-resolution]], [[tensor2tensor]]

---

## Summary

Google Research blog announcing Transformer architecture from "Attention Is All You Need" paper. Explains self-attention mechanism advantages over RNNs/CNNs, demonstrates English→German/French translation superiority, and shows applications beyond translation.

## Key Themes

### Accuracy and Efficiency in Language Understanding

**RNN limitations:**

- Process language sequentially (left-to-right or right-to-left)
- Multiple steps for distant word decisions
- Hard to learn dependencies requiring many steps
- Sequential nature limits GPU/TPU parallelization

**CNN limitations (ByteNet, ConvS2S):**

- Less sequential than RNNs
- Still require growing number of steps with increasing distance

**Transformer advantage:**

- Small, constant number of steps
- [[self-attention]] directly models relationships between all words
- Regardless of position, can attend to any word in single step
- Better fit for modern hardware (GPUs, TPUs)
- Training speedup by up to an order of magnitude

### The Transformer Architecture

**Self-attention mechanism:**

- Directly models relationships between all words in sentence
- Word representations informed by entire context
- Example: "bank" in "I arrived at the bank after crossing the river" → immediately attends to "river" → river bank (not financial)

**Process:**

1. Compare given word to every other word
2. Compute attention scores (how much each word should contribute)
3. Use scores as weights for weighted average of all words' representations
4. Feed into fully-connected network
5. Generate new representation reflecting context

**Encoder-decoder:**

- Encoder: Generates initial embeddings → self-attention aggregates information → new representations informed by context
- Decoder: Generates output word-by-word, attends to encoder representations + previously generated words

### Flow of Information

**Visualizing attention:**

- Insights into how information travels through network
- Shows what parts of sentence network attends to when processing/translating given word

**Coreference resolution example:**

- Challenge: "it" refers to different nouns based on context
  - "The animal didn't cross the street because it was too tired" → "it" = animal
  - "The animal didn't cross the street because it was too wide" → "it" = street

- Translation requires knowing gender of referenced noun:
  - French: "animal" (male) vs "street" (female)
  - Different translations for "it"

**Transformer success:**

- Correctly translates both sentences to French/German
- Current Google Translate model fails
- Visualizing attention shows network identified two nouns, amount of attention reflects choice in different contexts

### Performance

**Machine translation benchmarks:**

- Outperforms recurrent and convolutional models on English→German and English→French
- Higher translation quality
- Less computation to train
- Better fit for modern ML hardware

**Syntactic constituency parsing:**

- Classic language analysis task
- Highly specialized systems attacked for decades
- Transformer with little adaptation outperformed all but one previous approach

### Applications Beyond Translation

**Ongoing experiments:**

- Not only natural language
- Different inputs/outputs (images, video)
- Accelerated by [[tensor2tensor]] library (open sourced)
- Train own Transformers for translation/parsing with few commands

## Research Team

**Paper authors:** Ashish Vaswani, Noam Shazeer, Niki Parmar, [[jakob-uszkoreit]], Llion Jones, Aidan N. Gomez, Łukasz Kaiser, Illia Polosukhin

**Animation:** David Chenell

## References

- Paper: "Attention Is All You Need"
- Tasks: Language modeling, machine translation, question answering
- Hardware: TPUs, GPUs
- Library: Tensor2Tensor (open source)
- Benchmark datasets: English→German, English→French translation