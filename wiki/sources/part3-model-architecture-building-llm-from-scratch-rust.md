# Part 3: Model Architecture, Building an LLM from Scratch in Rust

**Source:** [Part 3: Model Architecture, Building an LLM from Scratch in Rust](https://www.tag1.com/how-to/part3-model-architecture-building-an-llm-from-scratch/) by [[jeremy-andrews]] (January 12, 2026)

**Related:** [[feste]], [[tag1]], [[transformer-architecture]], [[embeddings]], [[attention-mechanism]], [[layer-normalization]], [[residual-connections]], [[gelu]], [[mlp-layer]], [[gpt-2]]

---

## Summary

Detailed walkthrough of GPT-2 transformer architecture, implementing embeddings, multi-head attention, layer normalization, residual connections, and feedforward networks from scratch in Rust. Part of [[feste]] project training on Shakespeare's complete works.

## Key Themes

### What is a Transformer?

Transformer architecture replaced recurrent neural networks (RNNs) for language modeling:

**RNN problems:**
- Sequential processing (left-to-right or right-to-left)
- Multiple steps for distant token decisions
- Long-range patterns extremely hard to learn
- Sequential nature limits parallel hardware utilization

**Transformer solution:**
- All tokens process in parallel
- [[attention-mechanism]] lets each token look at any other directly
- Position 7 references position 2 without intermediate steps
- Orders of magnitude faster training
- [[gpt-2]] handles 1,024 tokens; [[gpt-4]] handles 128,000+

**Architecture:** Attention layers (token communication) + Feedforward layers (processing) stacked together. GPT-2 uses 12 blocks.

### Embeddings: From IDs to Vectors

Token IDs are integers. Neural networks need richer representations.

**Implementation:**

- Maintain matrix [vocab_size, 768] (GPT-2 uses 768-dimensional embeddings)
- Token 54's embedding = row 54 from matrix
- Lookup = indexing operation (copy 768 floats)

**Training behavior:**

- Values start random (untrained models produce garbage)
- Adjusted during training based on prediction success
- Tokens in similar contexts end up close in 768-dimensional space
- Example: "King" and "queen" cluster together (both follow "the", precede "ruled")

**Cost:** 50,000 tokens × 768 dimensions = 38M parameters (just for embeddings)

### Position Embeddings

Transformers process tokens in parallel → no order information.

**Solution:** Second embedding table for positions:

- One row per position (0 through block_size-1)
- GPT-2 block_size = 1,024 → 1,024 position embeddings
- Each position embedding is 768 numbers (same size as token embeddings)
- Add position embedding to token embedding element-wise

**Effect:** Token "To" at position 0 = token embedding + position 0 embedding → captures meaning + location

**Training:** Model learns position patterns automatically. Position 0 → sentence start patterns. Position 2 → post-verb patterns.

**Context window:** block_size limit = hard limit on history model can see at once. 200K token window = block_size = 200K.

### Layer Normalization

Deep networks unstable → values explode or shrink. Layer normalization fixes this.

**Formula:** For each token's 768-dimensional vector:

1. Compute mean and variance
2. Subtract mean, divide by standard deviation
3. Multiply by gamma (learned), add beta (learned)
4. eps term prevents division by zero (tiny constant, 0.00001)

**Learned parameters:** gamma and beta give model flexibility. Sometimes keep near 1 and 0, sometimes adjust.

**Usage:** Appears twice per transformer layer (before attention, before feedforward).

### Attention Mechanism

Breakthrough that makes transformers work. Each position looks at every other position.

**Components:**

- **Query (Q):** What information this token is looking for
- **Key (K):** What this token can offer
- **Value (V):** Actual content this token contributes

**Process:**

1. Compute Q, K, V by multiplying embeddings through learned weight matrices
2. Compare each Q with all Ks (dot product → similarity)
3. Scale by sqrt(d) to prevent overconfident softmax
4. Apply softmax → probabilities that sum to 1
5. Weighted average of all Values using probabilities

**Learning:** Weight matrices adjusted so related tokens' Q and K vectors align. "Foolish" Q → contrast patterns aligns with "fool" K → wordplay patterns → high score.

### Multi-Head Attention

Run attention multiple times with different learned transformations simultaneously.

**Why:**

- One head → local patterns (nearby tokens)
- Another → long-range dependencies ("fool" → "foolish")
- Third → syntactic relationships (adjective-noun)

**GPT-2:** 12 attention heads. 768 dimensions split → 64 dimensions per head. All heads compute attention in parallel.

**Implementation:**

```rust
pub fn forward(&self, x: &Tensor) -> Tensor {
    // 1. Project to Q, K, V (one big matrix multiply, then split)
    let qkv = self.c_attn.forward(x);
    let (q, k, v) = qkv.split_into_thirds();

    // 2. Split into heads
    let q = self.split_heads(&q);
    let k = self.split_heads(&k);
    let v = self.split_heads(&v);

    // 3. Compute attention scores
    let scores = q.matmul(&k.transpose(2, 3));
    let scores = scores.mul_scalar(1.0 / (self.head_dim as f32).sqrt());

    // 4. Apply causal mask
    let mask = self.create_causal_mask(seq_len);
    let scores = scores.masked_fill(&mask, f32::NEG_INFINITY);

    // 5. Softmax and apply to values
    let attn = scores.softmax(-1);
    let out = attn.matmul(&v);

    // 6. Merge heads and project
    let out = self.merge_heads(&out);
    self.c_proj.forward(&out)
}
```

### Causal Masking

Language modeling constraint: predict next token based on past only. Can't peek at future.

**Implementation:** Triangular mask before softmax:

```
[0 1 1 1]  Position 0 sees only itself
[0 0 1 1]  Position 1 sees 0-1
[0 0 0 1]  Position 2 sees 0-2
[0 0 0 0]  Position 3 sees all past
```

**Effect:** Mask = 1 → replace with negative infinity → exp(-inf) = 0 → contributes nothing.

### MLP Layer

After attention decides focus, MLP processes information.

**Structure:**

1. Expand 768 dimensions → 3,072 dimensions (4x expansion)
2. Apply [[gelu]] activation function
3. Project back → 768 dimensions

**Why GELU:** Smooth activation (not sharp cutoff like ReLU). Positive numbers mostly unchanged, negative smoothly reduced toward zero. Better for transformers.

**Why 4x expansion:** Empirically works well. Creates space for complex transformations before squashing back.

**GELU formula:**

```rust
pub fn gelu(x: &Tensor) -> Tensor {
    let sqrt_2_over_pi = (2.0_f32 / std::f32::consts::PI).sqrt();
    let coeff = 0.044715_f32;

    let result: Vec<f32> = x.data.iter().map(|&val| {
        let x_cubed = val * val * val;
        let inner = sqrt_2_over_pi * (val + coeff * x_cubed);
        0.5 * val * (1.0 + inner.tanh())
    }).collect();

    Tensor::new(result, x.shape.clone())
}
```

### Transformer Block

Combines attention + MLP with residual connections.

**Residual connection:** Original input bypasses transformation, gets added back to output.

**Pattern:**

```rust
pub fn forward(&self, x: &Tensor) -> Tensor {
    // Step 1: Attention with residual
    let x = x.add(&self.attn.forward(&self.ln_1.forward(x)));

    // Step 2: MLP with residual
    x.add(&self.mlp.forward(&self.ln_2.forward(&x)))
}
```

**Why residuals:** Information can always flow directly through bypass. Prevents bottlenecks, enables gradient flow during training.

**GPT-2:** 12 identical blocks. Early → surface patterns, middle → syntax, later → abstract semantics.

### Complete Forward Pass

```rust
pub fn forward(&self, token_ids: &[Vec<usize>]) -> Tensor {
    let seq_len = token_ids[0].len();

    // Token and position embeddings
    let mut x = self.token_embedding.forward(token_ids);
    let pos_emb = self.position_embedding.forward_range(0, seq_len);
    x = x.add_broadcast(&pos_emb);

    // Through all 12 transformer layers
    for block in &self.blocks {
        x = block.forward(&x);
    }

    // Final normalization and vocabulary projection
    x = self.ln_f.forward(&x);
    self.lm_head.forward(&x)
}
```

**Output:** [batch, seq_len, vocab_size] → score for every token at every position.

### Model Configurations

**GPT-2 Small:** 768 dimensions, 12 heads, 12 layers, 1024 context window → 87M parameters.

**Feste variants:**

- **tiny:** 64 dimensions, 2 layers, 1 head → debugging
- **small:** 128 dimensions, 3 layers, 1 head → speed/capability balance
- **medium:** 256 dimensions, 4 layers, 4 heads → embedding/head splitting demo

**Parameter growth:**

- Embeddings linear in vocab_size
- Attention/MLP matrices quadratic in embedding dimension (768 × 768 ≈ 590K per matrix)
- Adding layers → linear multiplier
- Increasing dimensions → quadratic growth

### Performance

**M-series Mac timings:**

- tiny (8 tokens): <5ms
- small: ~10ms
- medium: ~28ms

## References

- Part 1: Tokenization → Part 2: Tensor Operations → **Part 3: Model Architecture** → Part 4: Training Infrastructure → Part 5: Training at Scale
- Architecture: GPT-2 (OpenAI 2019)
- Training data: Shakespeare complete works