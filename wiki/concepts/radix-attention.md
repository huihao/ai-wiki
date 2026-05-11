---
created: 2026-05-11
updated: 2026-05-11
tags: [inference, attention, caching]
sources: 0
---

# Radix Attention

## Definition

A KV cache management strategy from SGLang that organizes multiple inference requests into a radix tree (prefix tree with variable-length sequences). Enables efficient prefix sharing across requests, avoiding redundant prefill computation when multiple threads share a common prompt prefix. Used in adaptive parallel reasoning systems like Multiverse.

## Key Features

- Prefix-tree organization of KV cache entries
- Shared prefix computation across concurrent requests
- Only new KV cache entries are generated for independent thread content
- Enables efficient parallel inference without redundant prefill

## Related Concepts

- [[kv-cache]] — key-value cache for transformer inference
- [[adaptive-parallel-reasoning]] — APR systems use RadixAttention for efficiency
- [[prefix-caching]] — related technique for reusing prompt KV cache

## Sources

- [[adaptive-parallel-reasoning-inference-scaling]] — RadixAttention in Multiverse system
