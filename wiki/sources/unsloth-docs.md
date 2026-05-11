---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, fine-tuning, training, optimization, open-source]
sources: 1
---

# Unsloth Documentation

## Metadata

- **Date:** 2026-04-22
- **URL:** https://unsloth.ai/docs
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/Unsloth Docs _ Unsloth Documentation.md`

## Summary

Unsloth is an open-source framework for running and training AI models locally with significant performance improvements. It claims to train models ~2x faster with ~70% less VRAM while maintaining accuracy. Supports fine-tuning, pre-training, RL (including GRPO), and inference across multiple modalities.

## Key Takeaways

- Open-source framework for local model training and inference
- Claims ~2x faster training, ~70% less VRAM with no accuracy loss
- Supports 500+ models for training
- Supports full fine-tuning, pre-training, 4-bit, 16-bit, and FP8 training
- Inference features: model search/download, self-healing tool calling, auto parameter tuning, export to GGUF/safetensors
- Training features: auto-create datasets from PDF/CSV/DOCX, visual node workflow, live monitoring
- Most efficient library for GRPO reinforcement learning, using 80% less VRAM
- Multi-GPU support available with improved version coming
- Cross-platform: macOS, Linux, Windows, NVIDIA, Intel, CPU

## Entities Mentioned

- [[unsloth-docs|Unsloth]] — the framework/company

## Concepts Mentioned

- [[supervised-fine-tuning|fine-tuning]] — adapting pre-trained models to specific tasks
- [[reinforcement-learning-from-human-feedback|RL]] — training via reward signals
- [[grpo]] — Group Relative Policy Optimization for RL
- [[awesome-llm-post-training|FP8 training]] — 8-bit floating point training
- [[quantization]] — 4-bit and 16-bit training support
- GGUF — model format for inference
- safetensors — secure model serialization format
- [[lora]] — mentioned in context of adapter support
- [[supervised-fine-tuning|PEFT]] — efficient model customization

## Raw Notes

- Docker image available: unsloth/unsloth
- Can auto-create datasets from documents via visual workflow
- Observability: monitor training live, track loss, GPU usage, customize graphs
- Claim: "Fine-tuning can replicate all of RAG's capabilities, but not vice versa"
- Supports text, audio, embedding, vision modalities

## Questions / Follow-ups

- How does Unsloth's optimization approach compare to other frameworks like Axolotl or LLaMA-Factory?
- What is the underlying technical approach (kernel optimizations, memory management)?
