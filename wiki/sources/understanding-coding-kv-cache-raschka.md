---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, inference, kv-cache, optimization, tutorial]
sources: 1
---

# Understanding and Coding the KV Cache in LLMs from Scratch

## Metadata

- **Author:** [[sebastian-raschka]]
- **Date:** 2025-06-17
- **URL:** https://magazine.sebastianraschka.com/p/coding-the-kv-cache-in-llms
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/Understanding and Coding the KV Cache in LLMs from Scratch.md`

## Summary

A hands-on tutorial explaining the KV cache — a critical optimization for efficient LLM inference. Raschka demonstrates how without caching, LLMs recompute key and value vectors for all previous tokens at every generation step. The KV cache stores these intermediate computations, reducing per-step complexity from O(n²) to O(n). Includes a complete from-scratch implementation with performance comparisons.

## Key Takeaways

- Without KV cache, each new token requires recomputing keys/values for all previous tokens — wasteful and slow
- KV cache stores previously computed key and value vectors for reuse during autoregressive generation
- Implementation: add cache_k and cache_v buffers in MultiHeadAttention, concatenate new keys/values each step
- Must reset cache between separate generation calls to avoid stale context
- ~5x speedup observed on a 124M parameter model generating 200 tokens (Mac Mini M4 CPU)
- Trade-off: increases memory usage linearly with sequence length
- Production optimizations: pre-allocate memory (instead of torch.cat), sliding window truncation for long sequences
- On GPUs, benefits may be outweighed by transfer overhead for small models; compilation helps

## Entities Mentioned

- [[sebastian-raschka]] — author
- [[meta]] — Llama 3 mentioned
- [[alibaba]] — Qwen3 mentioned

## Concepts Mentioned

- [[kv-caching|KV cache]] — caching key/value vectors for efficient autoregressive inference
- [[autoregressive-image-generation|autoregressive generation]] — generating one token at a time
- [[attention-mechanism]] — the computation being optimized
- [[vector-embeddings-mallya|key]] and [[vector-embeddings-mallya|value]] — attention components being cached
- [[vector-embeddings-mallya|query]] — the vector that attends to cached keys/values
- [[multi-head-attention-from-scratch|multi-head attention]] — where the cache is implemented
- [[agent-builder-memory-system|memory pre-allocation]] — optimization to avoid repeated allocations
- [[sliding-window-attention|sliding window]] — truncation strategy for managing cache memory
- [[torch-compile]] — mentioned for additional CPU speedup

## Raw Notes

- Two code files provided: gpt_ch04.py (without cache) and gpt_with_kv_cache.py
- Cache initialized as None, then concatenated via torch.cat
- Position tracking (self.current_pos) ensures new queries line up with cached keys/values
- Reset method clears all block caches and resets position counter
- With cache: only new token fed to model; without cache: entire sequence re-fed
- Pre-allocation: create zero tensor of shape (batch, num_heads, max_seq_len, head_dim)
- Sliding window: maintain only last window_size tokens in cache
- Llama 3 (131k context) and Qwen3 (41k context) pre-allocation would consume ~8GB
- On CPUs, KV cache gives substantial speedup; compilation boosts further
- On GPUs, compiled regular model can outperform KV cache for small models without pre-allocation

## Questions / Follow-ups

- How do techniques like KV cache quantization (e.g., KV cache compression) further optimize memory?
- What are the latest developments inPagedAttention (vLLM) and how do they compare?
