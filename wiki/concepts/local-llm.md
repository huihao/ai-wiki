---
created: 2026-04-28
updated: 2026-04-28
tags: [deployment]
---

# Local LLM

Large Language Models deployed and run entirely on local hardware without cloud services or internet dependency.

## Benefits

### Privacy & Security

- No data sent to external servers
- Internal IP stays protected
- Sensitive communications remain local
- Compliance with data regulations

### Performance

- No network latency
- Offline capability
- Faster inference for small models
- Predictable resource usage

### Cost

- No API usage fees
- One-time hardware investment
- Lower operational costs

## Requirements

### Hardware

- **CPU**: Modern multi-core processor
- **GPU**: CUDA-capable or Apple Silicon
- **RAM**: 16-32GB for 7B models, 64GB+ for larger
- **Storage**: 4-5GB per 7B model

### Software

- Model serving framework (Ollama, llama.cpp)
- IDE integration (Continue, Cursor)
- Model management tools

## Popular Models

- **Qwen2.5-Coder**: Code-focused, near GPT-4 performance
- **Llama3**: General-purpose
- **Phi-3.5**: Microsoft's reasoning model
- **Gemma**: Google's lightweight model

## Deployment Tools

- [[Ollama]]: macOS/Linux model manager
- [[Continue]]: VSCode integration
- [[llama-cpp|llama.cpp]]: CPU-optimized inference
- [[PocketPal]]: Mobile deployment

## Sources

- [[setting-up-local-llm-macos-ollama-continue-vscode]]

## Related

- [[On-Device AI]]
- [[Ollama]]
- [[Continue]]
- [[Small Language Models]]
- [[Apple Silicon]]
- [[Privacy-First AI]]