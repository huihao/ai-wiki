---
created: 2026-05-09
updated: 2026-05-09
tags: [entity, tool]
sources: 1
---

# ds4.c

## Summary

ds4.c is a deliberately narrow, model-specific inference engine by Salvatore Sanfilippo (antirez) for running DeepSeek V4 Flash on Macs with 128GB+ RAM. Unlike generic GGUF runners, it is purpose-built for one model on one hardware configuration, with Metal acceleration, SSD KV cache offloading, and zero external dependencies.

## Key Attributes

- Created by Salvatore Sanfilippo (antirez, creator of Redis)
- Model-specific native engine for DeepSeek V4 Flash only
- Targets Macs with 128GB+ RAM, Metal GPU acceleration
- Supports SSD-based KV cache offloading (critical for long coding agent sessions)
- No dependency on MLX, Ollama, or other frameworks — self-contained
- Model-specific prompt rendering, KV handling, and server API

## Related Entities

- [[armin-ronacher]] — integrated ds4.c into Pi via pi-ds4 extension
- [[pi]] — coding agent that uses ds4.c via pi-ds4
- [[deepseek]] — DeepSeek V4 Flash is the target model

## Related Concepts

- [[local-ai|Local AI]] — ds4.c as a focused local inference approach
- [[kv-cache|KV Cache]] — ds4.c supports SSD-based KV cache offloading
- [[coding-agent-ux|Coding Agent UX]] — ds4.c aims to close the polish gap

## Sources

- [[pushing-local-models-with-focus-and-polish]]
