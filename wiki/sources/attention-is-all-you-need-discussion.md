---
url: "https://news.ycombinator.com/item?id=15938082"
date: "2017-12-16"
source_type: discussion
tags: [transformer, attention, cnn, rnn, architecture, hn-discussion]
---

# Attention Is All You Need (Hacker News Discussion)

Hacker News discussion thread analyzing the seminal Transformer paper and its implications for neural network architecture design.

## Discussion Themes

### Understanding Attention Mechanism

**Core concept**:
- Attention = weighted sum over vectors, weights sum to one
- Weights computed by neural nets based on query, key, value
- Not "grandiose" — mathematically simple but powerful

**Why attention is needed:**
- DNNs operate on fixed-size tensors
- Variable-length inputs (e.g., sentences) need conversion to fixed size
- Options: max, min, mean, sum — attention is weighted mean
- Query represents context, key represents token info, value is tensor for weighted mean

### CNN vs RNN Debate

**Architecture differences:**
- **CNNs**: Local context, translation neutral (pattern recognition anywhere in image)
- **RNNs**: Sequential information, decide what to keep, positioning affects result
- **Domain knowledge encoded**: CNNs encode "close pixels related", RNNs encode "prior influences following"

**Computational complexity trade-offs:**
- Fully connected networks can do everything CNNs/RNNs can, but:
  - CNNs are millions of times faster for images
  - RNNs (LSTMs) are thousands of times faster for sequences
  - Architectures regularize representations, encode problem structure
  - Without regularization, fully connected won't achieve same performance

**Why they work better for different domains:**
- CNNs suited to 2D grid structure (images, pixels)
- RNNs suited to symbolic sequences (text, audio)
- Both are "worse" by error metric but better trade-off: much faster with slightly worse results
- Biological analogy: CNNs in visual cortex, LSTM-like in memory regions

### Transformer Significance

**Paradigm shift:**
- Established norms: CNN for vision, RNN for sequences
- Transformer: dispenses with recurrence and convolutions entirely
- Uses only attention mechanisms
- Result: superior quality, more parallelizable, faster training

**Performance:**
- 28.4 BLEU on WMT 2014 English-to-German (2+ BLEU improvement over best ensembles)
- 41.0 BLEU on WMT 2014 English-to-French (3.5 days on 8 GPUs, new state-of-the-art)
- Fraction of training cost vs previous best models

### Recursive and Tree-Structured Data

**Open question:**
- CNNs for vision, LSTMs for sequences are "standard"
- No standard for variable-size, recursively-structured data (trees, graphs)
- Recursive ANNs, backpropagation-through-structure exist but are "one-off inventions"
- Seq2Seq is "hacky" — encoder/decoder mode switch, nothing in nature works this way

**Transformer potential:**
- Position encoding seems "contrived" but may extend to complex positioning
- Paths from root node in trees?
- Could Transformer approach work for recursive structures?

### Key Insights from Thread

**Neural network fundamentals:**
- NNs are formulas with weights and biases
- 2-layer network = same formula, uses layer 1 outputs as layer 2 inputs
- Architecture patterns dictated by problem structure, not just learning
- Brain has clear patterns: CNNs in eyes/optical cortex, LSTM-like in memory regions

**Evolutionary perspective:**
- Brain processes "video" in 3.5 dimensions (2D + time + 6 channels + sound)
- Biological neuron complexity >> LSTM cell
- Hormonal + electrical signals, unknown principles, evolutionary accidents
- Are biological requirements needed? Or can we simplify?

**Domain knowledge learning:**
- Multiple attention heads could potentially learn domain knowledge from data
- RNNs/CNNs encode priors (sequence influence, local correlation)
- Transformer: can attention heads learn these patterns?

## Paper Abstract

The dominant sequence transduction models use complex recurrent or convolutional networks with encoder-decoder architectures. Best performing models connect encoder and decoder through attention.

**Transformer proposal:**
- New architecture based solely on attention mechanisms
- Dispenses with recurrence and convolutions
- Superior quality + more parallelizable + significantly less training time

**Results:**
- English-to-German: 28.4 BLEU (best result including ensembles)
- English-to-French: 41.0 BLEU (single-model state-of-the-art, 3.5 days on 8 GPUs)

## Relevance

Historical discussion capturing early understanding of Transformer significance:
- Architecture paradigm shift (2017)
- CNN/RNN dominance questioning
- Attention mechanism comprehension struggles
- Recursive structure open problems

Precursor paper: [The Annotated Transformer / ConvS2S (1606.01933)](https://arxiv.org/abs/1606.01933) released year before

## Sources

- [[attention-is-all-you-need-nvidia]] — implementation details

## Cross-references

### Entities
- [[vaswani-et-al|Vaswani et al.]] — original paper authors

### Concepts
- [[Transformer Architecture]]
- [[Attention Mechanism]]
- [[Convolutional Neural Network]]
- [[Recurrent Neural Network]]
- [[Positional Encoding]]
- [[Sequence-to-Sequence]]