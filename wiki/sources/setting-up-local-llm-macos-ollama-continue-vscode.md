---
url: https://gist.github.com/othyn/42e67d7b6116d88d6c9c83e7d84b20c0
title: Setting up a local only LLM on macOS with Ollama, Continue and VSCode
author: Othyn
date: 2026-04-18
---

# Setting up a Local LLM on macOS with Ollama, Continue and VSCode

Othyn's practical guide for setting up fully local LLMs on macOS using Ollama, Continue extension, and VSCode, addressing privacy concerns around internal IP and sensitive data.

## Hardware Context

Reference hardware: 16" MBP with M1 Pro APU (2E/8P @ 2/3.2GHz CPU, 5.2 TFLOP GPU), 32GB shared RAM (LPDDR5 6400MT/s). Achieves ChatGPT 3.5-level performance.

## Recommended Models

- **Llama3**: General broad model
- **Qwen's Code Models**: Code-focused, close to ChatGPT 4o and Claude 3.5 performance
- **Qwen2.5-Coder-7B**: Latest at time of writing, 4-5GB storage
- 7B/8B models: Good balance of performance, memory use, and storage

## Model Variants

- `-chat`: Trained for conversational style
- `-instruct`: Trained for direct instruction/tasks

## Setup Steps

1. Install Ollama: `brew install --cask ollama` (menu bar app for background service)
2. Pull LLM: `ollama run qwen2.5-coder:7b`
3. Install Continue VSCode extension
4. Select Ollama as provider, Autodetect models
5. Configure tabAutocompleteModel in config.json

## Usage Patterns

1. **Code Autocomplete**: Often predicts what you'll write, saves time
2. **Tests & Refactoring**: Contextually aware, writes complementary tests
3. **Documentation Autocomplete**: Excellent docblocks and inline comments
4. **Sidebar Chat**: In-depth querying with attached context

## Key Advice

- Trust yourself more than the LLM
- Double-check outputs
- LLMs are probability engines, not reasoning systems
- Never blindly follow suggestions

## Key Themes

- Local LLM deployment for privacy
- Ollama for model management
- Continue VSCode integration
- Apple Silicon optimization
- Code autocomplete and assistance
- On-device AI advantages
- Data security and IP protection

## Entities Mentioned

- [[Ollama]]
- [[Continue]]
- [[VS Code]]
- [[Qwen]]
- [[Llama]]
- [[Othyn]]

## Related Concepts

- [[Local LLM]]
- [[On-Device AI]]
- [[Code Autocomplete]]
- [[Apple Silicon]]
- [[Model Management]]
- [[Privacy-First AI]]
- [[Shared Memory Architecture]]

## Source

[https://gist.github.com/othyn/42e67d7b6116d88d6c9c83e7d84b20c0](https://gist.github.com/othyn/42e67d7b6116d88d6c9c83e7d84b20c0)