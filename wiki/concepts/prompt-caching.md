---
fetched_at: "2026-04-27"
---

# Prompt Caching

Optimization technique in LLM inference where providers cache the K and V matrices from attention mechanisms to avoid redundant computations when identical prompt prefixes appear across requests. Cached tokens cost 10x less and reduce latency by up to 85%.

## Technical Mechanics

**What is Cached**: K (key) and V (value) matrices computed during attention mechanism inference, representing processed prompt context

**How it Works**:
1. First request: Full prompt processed through attention mechanism, generating K and V matrices
2. Matrices stored for 5-10 minutes in provider datacenters
3. Subsequent request with same prefix: Cached K and V matrices reused, only new tokens processed
4. Partial matching supported - only the matched portion uses cache

**Benefits**:
- 10x cost reduction for cached input tokens
- Up to 85% latency reduction for long prompts
- Avoids redundant matrix multiplications

**Attention Mechanism Context**: During inference, embeddings are projected into Q, K, V spaces using learned weight matrices (WQ, WK, WV). The Q×K multiplication generates attention weights, which are then multiplied by V to produce output embeddings. Only Q needs recomputation for new tokens; K and V can be cached.

## Provider Implementations

**OpenAI**:
- Automatic caching (opt-out unavailable)
- ~50% cache hit rate in empirical tests
- Potential latency inconsistency due to variable hit rates

**Anthropic**:
- Explicit cache control via API
- 100% cache hit rate when requested
- More predictable latency for long-context applications
- User pays for caching privilege but gets guaranteed performance

## Independence from Sampling Parameters

Cache validity unaffected by:
- `temperature` sampling
- `top_p` sampling
- `top_k` sampling

These parameters affect token selection after attention mechanism completes, so they don't invalidate cached attention results.

## Related Concepts

- [[KV Caching]]
- [[Attention Mechanism]]
- [[Transformer Architecture]]
- [[Inference Optimization]]
- [[Tokenization]]
- [[Embedding]]

## Related Sources

- [[prompt-caching-ngrok|Prompt Caching: 10x Cheaper LLM Tokens]]

## Related Entities

- [[OpenAI]]
- [[Anthropic]]
- [[ngrok]]
- [[Sam Rose]]