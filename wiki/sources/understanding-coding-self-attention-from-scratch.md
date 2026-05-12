# Understanding and Coding Self-Attention Mechanism from Scratch

**Source:** [Understanding and Coding the Self-Attention Mechanism of Large Language Models From Scratch](https://sebastianraschka.com/blog/2023/self-attention-from-scratch.html) by [[sebastian-raschka]] (February 9, 2023)

**Related:** [[self-attention]], [[multi-head-attention]], [[cross-attention]], [[scaled-dot-product-attention]], [[attention-mechanisms]], [[transformer-architecture]], [[pytorch]], [[kv-cache]]

---

## Summary

Step-by-step implementation of [[self-attention]] mechanism in PyTorch, covering scaled dot-product attention, multi-head attention, and cross-attention. Explains why attention mechanisms replaced RNNs and provides complete code walkthrough with visualizations.

## Key Themes

### Self-Attention Concept

**Attention origins:** Effort to improve RNNs for longer sequences. Translating sentence word-by-word fails. Need access to all sequence elements at each time step.

**Self-attention:**

- Enhances information content of input embedding by including context information
- Enables model to weigh importance of different elements
- Dynamically adjust influence on output
- Critical for language processing (word meaning changes based on context)

**Most popular variant:** Scaled dot-product attention (original from "Attention Is All You Need"). Most widely used despite efficiency research variants.

### Embedding an Input Sentence

**Example:** "Life is short, eat dessert first"

**Process:**

1. Create vocabulary dictionary (word → integer index)
2. Convert sentence to integer vector
3. Use embedding layer → encode inputs into real-vector embeddings
4. GPT-2 style: 16-dimensional embedding, 6 words → 6×16 tensor

### Defining Weight Matrices

**Three weight matrices:** W_q (Query), W_k (Key), W_v (Value) → model parameters adjusted during training.

**Purpose:** Project inputs into query, key, value components.

**Dimensions:**

- Query: q^(i) = W_q × x^(i) for i ∈ [1, T]
- Key: k^(i) = W_k × x^(i)
- Value: v^(i) = W_v × x^(i)

- q^(i) and k^(i): dimension d_k
- v^(i): dimension d_v
- W_q and W_k: shape d_k × d
- W_v: shape d_v × d

**Important:** d_q = d_k (dot product requires same number of elements). d_v arbitrary (determines context vector size).

### Computing Unnormalized Attention Weights

**For query token:**

1. Compute Query vector (W_q × embedding)
2. Compute all Key vectors (W_k × all embeddings)
3. Compute all Value vectors (W_v × all embeddings)

**Attention weights ω:**

- ω_ij = q^(i)^T × k^(j) (dot product between query and key)
- Measures similarity between vectors
- High score = vectors point in similar directions

### Computing Attention Scores

**Normalization:**

1. Scale by sqrt(d_k) before softmax
   - Prevents scores too small/large
   - Numerical stability
   - Helps convergence
2. Apply softmax → probabilities summing to 1

**Why sqrt(d_k):**

- Dot product sum of d_k independent terms, each variance ~1
- Raw score variance grows linearly with d_k
- Dividing by sqrt(d_k) cancels growth, brings variance back to ~1

**Context vector:**

- z^(i) = attention weights × values
- Attention-weighted version of original query input
- Includes context from all other input elements

### Multi-Head Attention

**Concept:** Multiple attention heads (each = query, key, value matrices). Similar to multiple kernels in CNNs.

**Implementation:**

```python
h = 3  # 3 attention heads
multihead_W_query = torch.nn.Parameter(torch.rand(h, d_q, d))
multihead_W_key = torch.nn.Parameter(torch.rand(h, d_k, d))
multihead_W_value = torch.nn.Parameter(torch.rand(h, d_v, d))
```

**Each head:** Works independently on slice of data (768 dimensions split → 12 heads × 64 dimensions each in GPT-2).

**Advantages:**

- Focus on different aspects simultaneously
- One head → local patterns
- Another → long-range dependencies
- Third → syntactic relationships

**Process:**

1. Project to Q, K, V for all heads
2. Split into heads (reshape dimensions)
3. Compute attention scores per head
4. Merge heads back (recombine dimensions)
5. Final projection to mix information

### Cross-Attention

**Self-attention:** Same input sequence for queries, keys, values.

**Cross-attention:** Two different input sequences.

- x_1 → Queries (decoder sequence)
- x_2 → Keys and Values (encoder sequence)

**Applications:**

- Original transformer: Encoder output + decoder input
- [[stable-diffusion]]: Generated image + text prompts for conditioning

**Constraint:** Embedding dimensions must match. Number of elements can differ.

**Code difference:**

- Self-attention: keys/values from same embedded_sentence
- Cross-attention: keys/values from embedded_sentence_2 (different sequence)

### Implementation Details

**Single head:**

```python
import torch.nn.functional as F
attention_weights_2 = F.softmax(omega_2 / d_k**0.5, dim=0)
context_vector_2 = attention_weights_2.matmul(values)
```

**Multi-head:**

```python
# Batch matrix multiplication
multihead_keys = torch.bmm(multihead_W_key, stacked_inputs)
multihead_values = torch.bmm(multihead_W_value, stacked_inputs)

# Permute dimensions for intuitive interpretation
multihead_keys = multihead_keys.permute(0, 2, 1)
multihead_values = multihead_values.permute(0, 2, 1)
```

### Visualizations

**Key figures:**

- Attention matrices (Query, Key, Value projections)
- Unnormalized attention weights (omega)
- Attention scores (normalized, scaled)
- Context vector construction
- Single head summary
- Multi-head architecture
- Cross-attention concept
- Cross-attention summary

### Why This Implementation

**Advantages:**

- Step-by-step understanding (not just using library functions)
- Complete control over every operation
- Debuggable (see every intermediate result)
- Educational (learn mechanism, not just API)

**Related tutorials:**

- Implementing BPE Tokenizer from Scratch
- Understanding and Coding KV Cache in LLMs
- LLM Architecture Gallery

### Code Availability

**Complete code:** All examples runnable in PyTorch.

**Related book:** "Build a Large Language Model (From Scratch)" by [[sebastian-raschka]] (Amazon, Manning Early Access for "Build a Reasoning Model (From Scratch)")

## References

- Paper: "Attention Is All You Need" (2017)
- Framework: PyTorch
- Related: Efficient Transformers Survey (2020), Efficient Training of Transformers review (2023), FlashAttention paper