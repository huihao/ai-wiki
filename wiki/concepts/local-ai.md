---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Local AI

## Definition

Local AI refers to running large language models on consumer hardware (laptops, workstations) without cloud APIs, using inference engines like llama.cpp, Ollama, MLX, or specialized engines like ds4.c. The goal is private, offline, subscription-free AI inference — but the UX gap between "runnable" and "finished" remains the core challenge.

## Key Challenges (from Armin Ronacher)

- **UX fragmentation**: Too many engines × models × quantizations = neither fair evaluation nor polished experience
- **Missing features**: Tool parameter streaming absent from most local engines
- **Configuration burden**: Users must choose engine, model, quantization, template, context size, and JSON configs
- **Solution direction**: Pick one model+hardware combo and polish it as a product (treat bugs as product bugs)

## Related Concepts

- [[coding-agent-ux|Coding Agent UX]] — the polish gap in local model experiences
- [[tool-parameter-streaming|Tool Parameter Streaming]] — critical missing local feature
- [[kv-cache|KV Cache]] — including SSD offloading for long sessions

## Sources

- [[unsloth]]
- [[unsloth-documentation]]
- [[pushing-local-models-with-focus-and-polish]]
