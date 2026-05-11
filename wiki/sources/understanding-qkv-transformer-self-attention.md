---
url: https://medium.com/analytics-vidhya/understanding-q-k-v-in-transformer-self-attention-9a5eddaa5960
author: Mustafac
date: 2021-01-01
---

# Understanding Q,K,V In Transformer (Self Attention)

Technical walkthrough of Query, Key, and Value vectors in transformer self-attention, with visualizations and code debugging examples.

## Core Content

### Q, K, V Definitions

All three are outputs of linear layers with same input/output dimensions (not dimension reduction):

- **Query (Q)**: Vector related to what we encode (output of encoder or decoder layer)
- **Key (K)**: Vector related to what we use as input to output
- **Value (V)**: Learned vector as result of calculations, related with input

### Three Attention Locations in Transformer

1. **Encoder Self-Attention**: Q = K = V = source sentence (English)
2. **Decoder Self-Attention**: Q = K = V = target sentence (German)
3. **Decoder-Encoder Attention**: Q = target sentence (German), K = V = source sentence (English)

### Attention Computation

```python
energy = torch.matmul(Q, K.permute(0, 1, 3, 2)) / self.scale
attention = torch.softmax(energy, dim = -1)
x1 = torch.matmul(self.dropout(attention), V)
```

x1 is the vector of attention multiplied by V — what Q, K, V learns.

### Visualization Experiments

**Experiment 1: Encoder Q, K, V vectors**
- 2 sentences with same verb "eat": "we want to eat apple" vs "we want to eat bread"
- Q, K, V form clusters; X1@30 for "eat" becomes different between sentences
- Good model must represent "eating bread" and "eating apple" differently based on context

**Experiment 2: Decoder Q, K, V vectors**
- More scattered than encoder (decoder has self-attention + encoder attention + position layer)

**Experiment 3: Permutation Invariance Theory**
- Claim: Changing word order should yield same X4 result
- Q: Similar (same entries at diagonal)
- K: Different (reverse diagonal — same items at different positions have same embedding)
- V: Different (reverse diagonal)
- X4: SAME (multiplying 3 matrices yields similar vector)
- Attention: Same for same items at different positions

### Understanding Q, K, V Embedding

Think of network: Input → Q → K → V → Output. At each epoch, weights updated according to loss. After training, V output compliant with input word — that's how neural networks learn.

**Why 3 encodings instead of 1?**
- Example: 10 × 20 × 30 = 6000. Small changes to each value (9 × 19 × 29 = 4959 or 11 × 21 × 31 = 7161) produce big differences
- With little parameter updates via backpropagation, can make big representation differences

### Sentiment Analysis Experiment

5 sentences (proper + nonsense):
- "i can eat apple" → target: ['ich', 'konnen', 'apfel', 'essen', '<eos>']
- "i can eat bread" → target: ['ich', 'konnen', 'brot', 'essen', '<eos>']
- "i can eat book" → target: ['ich', 'konnen', 'apfel', 'essen', '<eos>'] (wrong — predicts apple)
- "i can eat newspaper" → target: ['ich', 'konnen', 'brot', 'essen', '<eos>'] (wrong — predicts bread)
- "i can eat apple book" → target: ['ich', 'konnen', 'apfel', 'essen', '<eos>']

**Result**: Q, K, V vectors seem similar but results (X1, X4, src_final) scattered. Combined effect differs even if individual vectors similar.

## Key Insight

Self-attention learns which co-occurrences are meaningful vs. random, creating good word representations depending on context.

## Related

- [[Transformer Architecture]]
- [[Self-Attention]]
- [[Multi-Head Attention]]
- [[Attention Mechanism]]

## Sources

- Original article: https://medium.com/analytics-vidhya/understanding-q-k-v-in-transformer-self-attention-9a5eddaa5960
- Code: https://github.com/mcelikkaya/medium_articles/blob/main/transformer_debugging.ipynb