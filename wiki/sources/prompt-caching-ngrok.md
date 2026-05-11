---
url: "https://ngrok.com/blog/prompt-caching"
author: "Sam Rose"
date: "2025-12-16"
fetched_at: "2026-04-27"
---

# Prompt Caching: 10x Cheaper LLM Tokens

Detailed technical explanation of how prompt caching works in LLM APIs, covering tokenization, embeddings, attention mechanisms, and KV cache storage. Cached input tokens cost 10x less than regular tokens and reduce latency by up to 85% for long prompts.

## Key Insights

**The KV Cache**: Providers cache the K (key) and V (value) matrices from the attention mechanism, which represent processed prompt context. These matrices are computed during inference and reused when identical prompt prefixes appear in subsequent requests, avoiding redundant calculations.

**Attention Mechanism**: The article explains how attention works through matrix multiplications - embeddings are projected into Q, K, V spaces using learned weight matrices (WQ, WK, WV), then combined to generate attention weights. These weights determine how much each token "attends to" others in the context.

**Cache Mechanics**: During inference, each new token only requires calculating its own Q, K, V contributions and combining them with cached K, V matrices from previous tokens. This incremental approach avoids recalculating the entire prompt's attention on each iteration.

## Provider Differences

- **OpenAI**: Automatic caching with ~50% hit rate in tests
- **Anthropic**: Explicit control with 100% hit rate when requested, more predictable latency

## Technical Concepts Covered

- Tokenization (text → integer IDs)
- Embeddings (tokens → n-dimensional semantic space, typically 1000s of dimensions)
- Positional encoding
- Attention mechanism (Q, K, V projections, masking, softmax)
- Matrix multiplication operations
- KV cache storage and reuse
- Inference loop mechanics

## Author

Sam Rose - ngrok blog technical writer

## Related Concepts

- [[KV Caching|KV cache]]
- [[Attention Mechanism]]
- [[Transformer Architecture]]
- [[Tokenization]]
- [[Embedding]]
- [[Inference Optimization]]

## Related Entities

- [[OpenAI]]
- [[Anthropic]]
- [[ngrok]]