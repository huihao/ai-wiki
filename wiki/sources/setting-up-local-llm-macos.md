---
created: 2026-04-28
updated: 2026-04-28
tags: [source, guide]
sources: 1
---

# Setting up a Local Only LLM on macOS with Ollama, Continue, and VSCode

## Metadata

- **Author**: Othyn
- **Date**: 2026-04-18
- **URL**: https://gist.github.com/othyn/42e67d7b6116d88d6c9c83e7d84b20c0
- **Fetched**: 2026-04-27
- **Raw file**: `raw/Setting up a local only LLM (Qwen_Llama3_etc.) on macOS with Ollama, Continue and VSCode.md`

## Summary

A practical guide to running local LLMs on macOS using Ollama for model management, Continue for IDE integration, and VSCode as the editor. Focuses on privacy-sensitive setups where remote APIs are undesirable.

## Key Takeaways

- Ollama provides Docker-like model management for local LLMs.
- Continue integrates local LLMs into VSCode for autocomplete, chat, and documentation.
- Recommended models: Llama3 (general) and Qwen2.5-Coder (code-focused).
- 7B/8B models offer good balance of performance and memory use (~4-5GB).
- Hardware reference: 16" M1 Pro with 32GB RAM achieves ChatGPT 3.5-like performance locally.
- Four key use cases: code autocomplete, test/refactor writing, documentation, sidebar chat.

## Entities Mentioned

- Othyn — author
- Ollama — local LLM runner
- Continue — VSCode extension for AI coding
- Qwen (Alibaba) — code model family
- Meta — Llama developer

## Concepts Mentioned

- [[llms-practical-guide|Local LLMs]] — on-device inference
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|AI-assisted coding]] — IDE integration
- [[quantization|Model quantization]] — running 7B models on consumer hardware
- Privacy — self-hosted AI for sensitive IP

## Questions / Follow-ups

- How does this setup scale to larger models (30B+) on Apple Silicon?
