---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, tool, ai]
sources: 3
---

# Ollama

## Summary

Ollama is an open-source tool for running large language models locally on macOS, Linux, and Windows. It provides a Docker-like CLI for downloading, managing, and running models with minimal setup. Supports hybrid GPU+CPU mode to run models exceeding GPU VRAM limits.

## Key Attributes

- **License**: Open source
- **Platforms**: macOS, Linux, Windows
- **Key feature**: Simple CLI for local LLM inference (`ollama run`, `ollama pull`, `ollama ps`)
- **Backend**: llama.cpp
- **Popular models**: Llama, Qwen, Mistral, Phi
- **Memory management**: Hybrid GPU+CPU layer splitting, default 4096 token context limit
- **Quantization**: Supports Q4_K_M and other formats

## Related Entities

- [[meta]] — Llama models
- [[alibaba]] — Qwen models
- [[nvidia]] — GPU acceleration
- [[llama-cpp]] — backend engine

## Related Concepts

- [[llms-practical-guide|Local LLMs]] — on-device inference
- [[quantization|Model quantization]] — running models on consumer hardware
- [[kv-caching]] — memory management for context length
- [[vram-management]] — GPU memory optimization

## Sources

- [[setting-up-local-llm-macos|Setting up a Local Only LLM on macOS with Ollama, Continue, and VSCode]]
- [[small-language-models|Small Language Models (SLM): A Comprehensive Overview]]
- [[context-kills-vram-consumer-gpus]] — VRAM management, hybrid mode, benchmark tests

## Contradictions / Open Questions

- How does Ollama compare to llama.cpp and vLLM for production use?
