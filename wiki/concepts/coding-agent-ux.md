---
created: 2026-05-09
updated: 2026-05-09
tags: [coding-agents]
sources: 1
---

# Coding Agent UX

## Definition

Coding agent UX refers to the end-to-end user experience of interacting with AI coding agents — from model selection and configuration through inference, tool calling, and result presentation. A critical distinction exists between a model being "runnable" (it runs) and "finished" (the experience is polished).

## The Polish Gap (Local Models)

Armin Ronacher identifies a fundamental UX gap between hosted and local model experiences:

- **Hosted**: Put in an API key → select provider → done. Boring, easy.
- **Local**: Choose engine → model → quantization → template → context size → JSON configs → discover something silently broke. Frustrating, fragmented.

### Key UX Requirements

1. **Tool parameter streaming**: See tool calls being constructed in real-time
2. **Dead connection detection**: Distinguish slow inference from broken connections
3. **Single-config polish**: Pick one model + hardware combo and make it work perfectly (treat every bug as a product bug)
4. **Zero configuration**: Auto-detect hardware, select quantization, manage server lifecycle
5. **Interruption capability**: Allow users to cancel harmful tool calls mid-stream

## The Fragmentation Problem

Too many engines (llama.cpp, Ollama, LM Studio, MLX, vLLM) × too many models × too many quantizations = users get neither fair model evaluation nor polished product experience. The recommendation is to pick one winner and polish it, rather than supporting every combination superficially.

## Related Concepts

- [[local-ai|Local AI]] — local model UX is the core challenge
- [[tool-parameter-streaming|Tool Parameter Streaming]] — critical missing UX feature
- [[coding-agent|Coding Agent]] — the harness that determines agent UX

## Sources

- [[pushing-local-models-with-focus-and-polish]]
