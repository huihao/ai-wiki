---
url: https://magazine.sebastianraschka.com/p/coding-the-kv-cache-in-llms
author: Sebastian Raschka; PhD
date: 2025-06-17
---

# Understanding and Coding the KV Cache in LLMs from Scratch

Technical tutorial implementing KV cache from scratch for efficient LLM inference. KV cache stores intermediate key/value computations for reuse, providing substantial speed-up during text generation.

## Core Content

### What is a KV Cache?

**Problem without cache**:
- LLM generates one token at a time
- Prompt "Time" → generates "flies"
- Next step: reprocess full "Time flies" to generate "fast"
- Redundant: recomputing k(1)/v(1) and k(2)/v(2) every step

**Solution**:
- Store previously computed key and value vectors
- For new token, compute only its k/v, reuse cached ones
- Avoids unnecessary recomputation

### How LLMs Generate Text

**Without KV Cache**:

| Step | Input | Generated | Keys/Values Computed |
|------|-------|-----------|---------------------|
| 1 | "Time" | "flies" | k(1), v(1) |
| 2 | "Time flies" | "fast" | k(1), v(1), k(2), v(2) |
| 3 | "Time flies fast" | "like" | k(1), v(1), k(2), v(2), k(3), v(3) |

Redundancy: "Time" computed 3 times, "flies" computed 2 times.

**With KV Cache**:

| Step | Input | Generated | Keys/Values Computed | Cache State |
|------|-------|-----------|---------------------|-------------|
| 1 | "Time" | "flies" | k(1), v(1) | cache: [k(1), v(1)] |
| 2 | "flies" | "fast" | k(2), v(2) | cache: [k(1), v(1), k(2), v(2)] |
| 3 | "fast" | "like" | k(3), v(3) | cache: [k(1), v(1), k(2), v(2), k(3), v(3)] |

Efficiency: each token's k/v computed once, reused forever.

### Implementation from Scratch

**Core changes to MultiHeadAttention class**:

1. **Register cache buffers**:
```python
self.cache_k = None
self.cache_v = None
```

2. **Store new k/v on first run**:
```python
if self.cache_k is None:
    self.cache_k = keys
    self.cache_v = values
else:
    self.cache_k = torch.cat([self.cache_k, keys], dim=2)
    self.cache_v = torch.cat([self.cache_v, values], dim=2)
```

3. **Retrieve cached values**:
```python
keys, values = self.cache_k, self.cache_v
```

4. **Clear cache between calls**:
```python
def reset_kv_cache(self):
    self.cache_k = None
    self.cache_v = None
```

**Position tracking in GPTModel**:
```python
def forward(self, in_idx, use_cache=False):
    if use_cache:
        pos_ids = torch.arange(
            self.current_pos, self.current_pos + seq_len,
            device=in_idx.device, dtype=torch.long
        )
        self.current_pos += seq_len
    else:
        pos_ids = torch.arange(0, seq_len, device=in_idx.device)
    ...
```

- New queries must line up after cached keys/values
- Counter prevents treating new tokens as overlapping earlier ones

**Generation function**:
```python
def generate_text_simple_cached(model, idx, max_new_tokens, use_cache=True):
    model.eval()
    ctx_len = model.pos_emb.num_embeddings

    if use_cache:
        model.reset_kv_cache()
        with torch.no_grad():
            logits = model(idx[:, -ctx_len:], use_cache=True)

        for _ in range(max_new_tokens):
            next_idx = logits[:, -1].argmax(dim=-1, keepdim=True)
            idx = torch.cat([idx, next_idx], dim=1)
            with torch.no_grad():
                logits = model(next_idx, use_cache=True)  # only new token!
    else:
        for _ in range(max_new_tokens):
            with torch.no_grad():
                logits = model(idx[:, -ctx_len:], use_cache=False)  # full sequence
            next_idx = logits[:, -1].argmax(dim=-1, keepdim=True)
            idx = torch.cat([idx, next_idx], dim=1)

    return idx
```

Key difference: cached version feeds only new token; uncached version feeds full sequence.

### Performance Results

**Mac Mini M4 (CPU), 124M parameter model, 200 tokens**:

| Implementation | Time |
|---------------|------|
| Without KV cache | ~42 seconds |
| With KV cache (torch.cat) | ~8 seconds |
| With KV cache + sliding window | ~8 seconds |
| Speedup | ~5x |

**Note**: Implementation optimized for readability, not CUDA/MPS speed. Production would pre-allocate tensors.

### Advantages vs. Disadvantages

**Advantages**:
- Computational efficiency: O(n²) → O(n) cumulative work per step
- Each key/value computed once, reused
- Longer sequences = more reuse = bigger speedup

**Disadvantages**:
- Memory grows linearly with sequence length
- Large LLMs + long sequences can exhaust GPU memory
- Adds code complexity
- Cannot use during training

### Optimization Tips

**Tip 1: Pre-allocate Memory** (avoid repeated concatenation):
```python
max_seq_len = 1024
cache_k = torch.zeros(
    (batch_size, num_heads, max_seq_len, head_dim), device=device
)
cache_v = torch.zeros(
    (batch_size, num_heads, max_seq_len, head_dim), device=device
)
```

Write into slices during inference instead of concatenating.

**Tip 2: Sliding Window Truncation**:
```python
window_size = 1024
if cache_k.shape[2] > window_size:
    cache_k = cache_k[:, :, -window_size:, :]
    cache_v = cache_v[:, :, -window_size:, :]
```

Maintain only last `window_size` tokens to bound memory.

### Qwen3 and Llama 3 Results

**KV cache with torch.compile**:

| Model | Device | Without KV | With KV | With KV + compile |
|-------|--------|-----------|---------|-------------------|
| Qwen3 0.6B | CPU | slow | faster | fastest |
| Llama 3 1B | CPU | slow | faster | fastest |
| Qwen3 0.6B | GPU | fast | similar | fastest (regular compiled) |
| Llama 3 1B | GPU | fast | similar | fastest (regular compiled) |

CPU: KV cache biggest win. GPU: compilation wins (small models, torch.cat approach).

## Key Insight

KV cache trades memory for computation. Each token's attention computation becomes O(1) instead of O(n), but memory grows O(n). For production inference, this trade-off is almost always worth it.

## Practical Considerations

- Large context models (Llama 3: 131k, Qwen3: 41k): pre-allocation expensive (~8GB)
- torch.cat approach more memory-efficient for small models
- torch.compile incompatible with cache buffers inside model
- Real deployment: pre-allocation + sliding window + careful memory management

## Related

- [[KV Caching]]
- [[Self-Attention]]
- [[Transformer Architecture]]
- [[Inference Optimization]]

## Sources

- Original article: https://magazine.sebastianraschka.com/p/coding-the-kv-cache-in-llms
- Code examples: GitHub gpt_ch04.py (without cache), gpt_with_kv_cache.py (with cache)
- Motivated by reader requests (topic not in "Build a Large Language Model From Scratch" book)