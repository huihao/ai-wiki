---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# KV Cache

## Definition

KV cache (Key-Value cache) is an optimization technique for autoregressive language models that stores computed key and value tensors from previous tokens, enabling reuse when processing repeated context prefixes and dramatically reducing inference cost.

## Key Proponents / Critics

- LLM inference system designers (vLLM, Anthropic, OpenAI)
- [[manus|Manus]] team — Emphasizes 10x cost reduction importance

## Related Concepts

- [[context-engineering|Context Engineering]] — Design consideration
- [[prompt-caching|Prompt Caching]] — Commercial implementation
- [[agent-systems|Agent Systems]] — Primary beneficiary (100:1 input/output ratio)

## Sources

- [[context-engineering-ai-agents-manus-lessons|AI代理的上下文工程：构建Manus的经验教训]]
- [[pushing-local-models-with-focus-and-polish]]

## Evolution

KV cache exploits the autoregressive nature of LLMs where repeated prefix processing can reuse previously computed attention states. For agents with highly skewed prefill-to-decode ratios (100:1), cache reuse is critical.

Cost impact (Claude Sonnet example):
- Cached input: $0.30/M tokens
- Uncached input: $3/M tokens
- 10x difference drives architecture decisions

Key design principles:
- Keep prompt prefix stable (avoid timestamps at start)
- Ensure deterministic serialization (JSON key ordering)
- Mark cache breakpoints explicitly when needed
- Avoid dynamic tool modification during iteration

## Practical Applications

Structure context to maximize prefix reuse. Use append-only patterns. Avoid single-token differences that invalidate cache. Consider file-based external memory for unbounded context needs.