---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, local-llm, model-management, software]
sources: 1
---

# Model Management

## Summary
Model management encompasses the practices and tools involved in downloading, storing, versioning, configuring, and switching between large language models on local or remote infrastructure. In local LLM setups, model management is handled by tools like Ollama, which provides a command-line interface for pulling model weights (e.g., `ollama pull qwen2.5-coder:7b`), running models as background services, and managing multiple model variants (e.g., `-chat` vs. `-instruct` versions). Effective model management is critical for privacy-first AI workflows where models must run entirely on-device.

## Key Attributes
- **Type**: tool / practice
- **Notable for**: Enables local deployment of multiple LLM variants with minimal configuration
- **Key tools**: Ollama (model pulling and serving), LM Studio, llama.cpp
- **Model variants**: `-chat` (conversational), `-instruct` (task-focused), quantized versions (reduced memory)

## Related Entities
- [[ollama]] — local model serving and management tool
- [[llama]] — Meta's open-source LLM family
- [[qwen]] — Alibaba's code-focused LLM family
- [[continue]] — VSCode extension integrating with local model management

## Related Concepts
- [[local-llm]] — running language models entirely on local hardware
- [[on-device-ai]] — AI inference performed on user devices
- [[privacy-first-ai]] — AI workflows prioritizing data privacy through local execution

## Sources
- [[setting-up-local-llm-macos-ollama-continue-vscode]] — practical guide to model management on macOS

## Contradictions / Open Questions
- How to handle model updates and version migration in production local-LLM setups.
- Trade-offs between quantized models (smaller, faster) and full-precision models (more capable).
