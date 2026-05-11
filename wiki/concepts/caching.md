---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Caching

## Definition
Caching is the technique of storing frequently accessed data in a faster, smaller memory layer closer to the consumer to reduce access latency and avoid repeated expensive computations or I/O. In computing, caching operates at every level of the memory hierarchy -- from CPU registers and L1/L2/L3 caches to buffer pools, application-level caches, and CDN caches -- forming a fundamental performance optimization principle.

## Key Aspects
- **Memory hierarchy principle**: Caching exploits the reality that faster memory is more expensive and smaller; by keeping hot data in fast memory and cold data in slow storage, average access time is minimized
- **CPU cache levels**: L1 (fastest, ~1KB, per core), L2 (~256KB, per core), L3 (~8-64MB, shared across cores); cache lines (typically 64 bytes) are the transfer unit between levels
- **Cache coherence**: Multi-core systems require protocols (MESI, MOESI) to ensure all cores see a consistent view of cached data, adding complexity to hardware design
- **Application-level caching**: Redis, Memcached, and in-process caches store computed results or database query results to avoid redundant work
- **KV cache in LLMs**: Transformer models cache previously computed key-value pairs to avoid recomputing attention for all previous tokens, reducing inference from O(n^2) to O(n) per new token
- **Cache invalidation**: The hardest problem in caching -- knowing when cached data is stale and must be refreshed, balancing consistency with performance

## Related Concepts
- [[kv-cache]] -- transformer-specific caching for attention computation
- [[buffer-pool]] -- database-level caching of disk pages in memory
- [[cache-augmented-generation]] -- pre-loading context into LLM KV cache

## Sources
- [[memory-hierarchy]]
