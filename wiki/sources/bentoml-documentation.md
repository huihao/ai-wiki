---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# BentoML Documentation

## Metadata

- **Author**: BentoML Team
- **Date**: 2026-01-01
- **URL**: https://docs.bentoml.com/en/latest/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/package/BentoML Documentation.md`

## Summary

Documentation for BentoML, a unified inference platform for deploying and scaling AI systems. Covers model serving, GPU inference, autoscaling, and deployment to BentoCloud.

## Key Takeaways

- BentoML is a Python-based open-source model serving framework with a managed cloud option (BentoCloud).
- Supports LLM inference with vLLM, RAG pipelines, image generation (Stable Diffusion), ComfyUI workflows, and voice agents.
- Features include online API services, fast autoscaling, GPU inference, and code-space development.
- BentoCloud offers one-command deployment.

## Entities Mentioned

- [[bentoml-documentation|BentoML]] — The platform.
- [[inside-vllm|vLLM]] — LLM inference backend supported by BentoML.
- ComfyUI — Workflow automation integration.
- Twilio — Voice agent integration.
- [[google]] — ShieldGemma safety model example.

## Concepts Mentioned

- [[how-to-scale-your-model|Model serving]] — Deploying ML models as APIs.
- [[triton-inference-server|Inference platform]] — Unified system for model deployment.
- Autoscaling — Dynamic concurrency scaling.
- [[pico-gpu|GPU inference]] — Running models on GPU hardware.
- [[retrieval-augmented-generation|RAG]] — Document ingestion and search examples.

## Raw Notes

- Installation: `pip install bentoml` (Python 3.9+).
- Examples include vLLM, RAG, SDXL Turbo, ComfyUI, and ShieldGemma.

## Questions / Follow-ups

- How does BentoML compare to Triton Inference Server or Ray Serve for production workloads?
