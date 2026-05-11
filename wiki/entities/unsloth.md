---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, company, framework]
sources: 1
---

# Unsloth

## Summary

Unsloth is an open-source framework for running and training AI models locally on personal hardware. It provides streamlined local training, inference, data processing, and deployment capabilities with significant efficiency improvements over standard approaches.

## Key Attributes

- **Type**: Open-source AI framework
- **Focus**: Local model training and inference
- **Performance**: ~2x faster training, ~70% less VRAM, no accuracy loss
- **Model Support**: 500+ models (Llama, Mistral, custom)
- **Training Modes**: Full fine-tuning, pre-training, 4-bit, 16-bit, FP8
- **Modalities**: Text, audio (TTS), embedding, vision
- **RL Efficiency**: 80% less VRAM for GRPO/reinforcement learning
- **Platforms**: MacOS, Linux, Windows, NVIDIA, Intel, CPU
- **Docker**: Official image available (unsloth/unsloth)

## Products/Features

- Auto-healing tool calling and web search
- OpenAI-compatible API interfaces
- Auto dataset creation from PDF, CSV, DOCX
- Visual workflow editor for data processing
- Live training monitoring and observability
- Model export: GGUF, safetensor formats

## Related Entities

- [[meta|Meta]] — Supports Llama models
- [[mistral-ai|Mistral AI]] — Supports Mistral models

## Related Concepts

- [[fine-tuning|Fine-Tuning]] — Primary use case
- [[reinforcement-learning|Reinforcement Learning]] — Efficient RL training
- [[local-ai|Local AI]] — Core philosophy
- [[model-optimization|Model Optimization]] — VRAM/speed improvements
- [[fp8-training|FP8 Training]] — Supported training mode

## Sources

- [[unsloth-documentation|Unsloth Documentation]]

## Contradictions / Open Questions

- How does Unsloth compare to other local training frameworks like Ollama?
- What are the trade-offs of local training vs cloud services for large models?