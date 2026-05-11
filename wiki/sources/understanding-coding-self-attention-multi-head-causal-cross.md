---
url: https://magazine.sebastianraschka.com/p/understanding-and-coding-self-attention
author: Sebastian Raschka; PhD
date: 2024-01-14
---

# Understanding and Coding Self-Attention, Multi-Head Attention, Causal-Attention, and Cross-Attention in LLMs

Comprehensive tutorial implementing all attention mechanism variants from scratch in Python and PyTorch. Foundation for understanding transformer architectures and LLMs like GPT-4 and Llama.

## Core Content

### Self-Attention Introduction

- Attention mechanism roots: improving RNNs for longer sequences
- Key insight: give access to all sequence elements at each time step, but be selective about which words matter most in context
- 2017 transformer: standalone self-attention eliminating RNNs
- Self-attention enhances input embedding by including context information, enabling model to weigh importance of different elements

### Self-Attention Implementation

**Setup**:
- Sentence: "Life is short, eat dessert first"
- 6 words → 6×3 embedding (tiny 3-dimensional for illustration, Llama 2 uses 4,096)
- Three weight matrices: W_q, W_k, W_v (model parameters)

**Computations**:
```
Query sequence: q(i) = x(i)W_q  for i in 1...T
Key sequence: k(i) = x(i)W_k    for i in 1...T
Value sequence: v(i) = x(i)W_v  for i in 1...T
```

- q(i), k(i) vectors: dimension d_k
- W_q, W_k shape: d × d_k
- W_v shape: d × d_v
- For illustration: d_q = d_k = 2, d_v = 4

**Step-by-step for x(2)**:

1. Compute keys and values for all inputs
2. Compute unnormalized attention weights ω:
   - ω_i,j = q(i) · k(j) (dot product)
   - Example: ω_24 = query_2.dot(keys[4])

3. Normalize to attention weights α:
   - α = softmax(ω / √d_k)
   - Scaling prevents weights becoming too small/large
   - Why √d_k? Dot product is sum of d_k independent terms, each variance ~1, so variance grows linearly. Division brings variance back to ~1.

4. Compute context vector z(2):
   - Attention-weighted version of original input x(2)
   - z(2) = Σ α_j × v(j)
   - Higher dimension (d_v = 4) than input (d = 3)

**Compact Implementation**:

```python
class SelfAttention(nn.Module):
    def __init__(self, d_in, d_out_kq, d_out_v):
        super().__init__()
        self.d_out_kq = d_out_kq
        self.W_query = nn.Parameter(torch.rand(d_in, d_out_kq))
        self.W_key = nn.Parameter(torch.rand(d_in, d_out_kq))
        self.W_value = nn.Parameter(torch.rand(d_in, d_out_v))

    def forward(self, x):
        keys = x @ self.W_key
        queries = x @ self.W_query
        values = x @ self.W_value

        attn_scores = queries @ keys.T
        attn_weights = torch.softmax(
            attn_scores / self.d_out_kq**0.5, dim=-1
        )

        context_vec = attn_weights @ values
        return context_vec
```

### Multi-Head Attention

**Concept**:
- Multiple attention heads, each with query, key, value matrices
- Similar to multiple kernels in CNNs producing multi-channel feature maps
- Each head learns to focus on different input parts, capturing diverse relationships

**Implementation**:

```python
class MultiHeadAttentionWrapper(nn.Module):
    def __init__(self, d_in, d_out_kq, d_out_v, num_heads):
        super().__init__()
        self.heads = nn.ModuleList(
            [SelfAttention(d_in, d_out_kq, d_out_v)
             for _ in range(num_heads)]
        )

    def forward(self, x):
        return torch.cat([head(x) for head in self.heads], dim=-1)
```

**Example**:
- 6 input tokens, 4 self-attention heads (output dimension 1 each)
- Result: 6×4 tensor (same as single head with output dim 4)
- Why multiple heads? Diversity in representation, parallel computation efficiency
- Llama 2 7B: 32 attention heads

### Causal Self-Attention

**Purpose**: For GPT-like decoder LLMs generating text left-to-right. Each token should only attend to previous tokens, not future ones.

**Masking Implementation**:

```python
# Compute attention scores
attn_scores = queries @ keys.T

# Mask future tokens (above diagonal)
context_length = attn_scores.shape[0]
mask = torch.triu(torch.ones(context_length, context_length), diagonal=1)
masked = attn_scores.masked_fill(mask.bool(), -torch.inf)

# Normalize
attn_weights = torch.softmax(masked / d_k**0.5, dim=-1)
```

**Efficient approach**: Replace above-diagonal scores with -inf before softmax (e^-inf → 0, contributes nothing)

**Alternative** (requires renormalization):
```python
mask = torch.tril(torch.ones(context_length, context_length))
masked_weights = attn_weights * mask
renormalized = masked_weights / masked_weights.sum(dim=-1, keepdim=True)
```

### Cross-Attention

**Distinction from self-attention**:
- Self-attention: Q, K, V from same sequence
- Cross-attention: Q from one sequence, K, V from different sequence
- Example: encoder-decoder architecture (Q from decoder, K, V from encoder)

**Implementation**: Same mechanics, different input sources for Q vs. K, V

## Key Insights

1. Self-attention is trainable parameters enabling models to access all source information
2. Multi-head attention provides diverse representation learning
3. Causal masking ensures autoregressive generation coherence
4. Cross-attention bridges information across different sequences

## Practical Notes

- Code is illustrative, not optimized
- Production: use Flash Attention for memory/computation efficiency
- KV cache essential for inference (separate topic)

## Related

- [[Self-Attention]]
- [[Multi-Head Attention]]
- [[Causal Attention]]
- [[Cross-Attention]]
- [[Transformer Architecture]]
- [[KV Caching]]

## Sources

- Original article: https://magazine.sebastianraschka.com/p/understanding-and-coding-self-attention
- Motivated Raschka's book "Build a Large Language Model (from Scratch)"