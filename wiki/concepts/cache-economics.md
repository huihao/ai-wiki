---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Cache Economics

## Definition
Cache economics refers to the cost-benefit analysis of prompt caching in LLM inference systems, where architectural decisions about what to cache, when to invalidate, and how to structure prompts directly impact API costs. In production agent systems, caching is treated as a hard architectural constraint rather than a soft optimization.

## Key Aspects
- Cached tokens cost $0.30/M tokens vs. $3/M tokens uncached with Claude Sonnet — a 10x cost difference
- In agent systems, input:output token ratio is approximately 100:1, making prefill (and thus caching) the dominant cost driver
- Claude Code implements SYSTEM_PROMPT_DYNAMIC_BOUNDARY in the system prompt as a cache architectural constraint
- Tool result storage decisions are frozen at design time for cache consistency — changing them invalidates the cache
- Fork Agent CacheSafeParams ensure byte-level consistency for cache hits across agent invocations
- Five-layer compression pipeline manages context size to maintain cache efficiency as conversations grow

## Related Concepts
- [[attention-manipulation]]
- [[arithmetic-intensity]]

## Sources
- [[harness-engineering-claude-code]]
- [[index]]
