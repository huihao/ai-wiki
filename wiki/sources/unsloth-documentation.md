---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Unsloth Documentation

## Metadata

- **Author**: Unsloth Team
- **Date**: 2026-04-22
- **URL**: https://unsloth.ai/docs
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/Unsloth Docs _ Unsloth Documentation.md

## Summary

Unsloth is an open-source framework for running and training AI models locally on personal hardware. It provides streamlined tools for inference, training, fine-tuning, and deployment with significant efficiency improvements: ~2x faster training with ~70% less VRAM usage for 500+ models.

## Key Takeaways

- Unsloth enables local AI model training and inference without cloud dependency
- Training optimizations: ~2x faster, ~70% less VRAM, no accuracy loss
- Supports 500+ models including Llama, Mistral, and custom architectures
- Multiple training modes: full fine-tuning, pre-training, 4-bit, 16-bit, FP8
- Inference features: search/download/run models, auto-healing tool calling, OpenAI-compatible APIs
- Multi-modal support: text, audio (TTS), embedding, vision fine-tuning
- Data tools: auto-create datasets from PDF, CSV, DOCX; visual workflow editor
- Observability: live training monitoring, loss tracking, GPU usage graphs
- Most efficient RL library: 80% less VRAM for GRPO, reinforcement learning
- Multi-GPU support (better version in development)
- Cross-platform: MacOS, Linux, Windows, NVIDIA, Intel, CPU

## Entities Mentioned

- [[unsloth|Unsloth]] — Open-source framework for local AI training/inference

## Concepts Mentioned

- [[fine-tuning|Fine-Tuning]] — Customizing pre-trained models for specific tasks
- [[reinforcement-learning|Reinforcement Learning (RL)]] — Agent learns via reward/penalty feedback
- [[llm-training|LLM Training]] — Process of training language models
- [[model-optimization|Model Optimization]] — Techniques to improve efficiency (VRAM, speed)
- [[local-ai|Local AI]] — Running AI models on personal hardware
- [[fp8-training|FP8 Training]] — 8-bit floating point training for efficiency
- [[grpo|GRPO]] — Reinforcement learning technique

## Raw Notes

Unsloth emphasizes fine-tuning can replicate all of RAG's capabilities but not vice versa. Use cases: sentiment analysis (headline impact prediction), customer support (historical interactions), legal analysis (contract/case law). Provides Docker image for easier deployment. Training significantly more efficient than standard approaches.

## Questions / Follow-ups

- How does Unsloth achieve 70% VRAM reduction without accuracy loss?
- Comparison with HuggingFace transformers and other training frameworks?
- What are the limitations of local training vs cloud-based alternatives?