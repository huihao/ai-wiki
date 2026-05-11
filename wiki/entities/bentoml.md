---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, company, platform, inference]
sources: 1
---

# BentoML

## Summary

A unified, Python-based open-source inference platform for deploying and scaling AI systems. BentoML provides model serving, GPU inference, autoscaling, and a managed cloud option (BentoCloud).

## Key Attributes

- **Type**: Open-source framework + managed cloud (BentoCloud)
- **Language**: Python 3.9+
- **Supported workloads**: LLM inference (vLLM), RAG pipelines, image generation (Stable Diffusion), ComfyUI workflows, voice agents
- **Features**: Online API services, fast autoscaling, GPU inference, code-space development
- **Deployment**: One-command deployment to BentoCloud

## Related Entities

- [[inside-vllm|vLLM]] — LLM inference backend
- ComfyUI — workflow automation integration
- Twilio — voice agent integration
- [[triton-inference-server]] — comparable production inference platform

## Related Concepts

- [[how-to-scale-your-model|Model serving]] — deploying ML models as APIs
- [[triton-inference-server|Inference platform]] — unified system for model deployment
- Autoscaling — dynamic concurrency scaling
- [[pico-gpu|GPU inference]] — running models on GPU hardware

## Sources

- [[bentoml-documentation]]

## Contradictions / Open Questions

- How does BentoML compare to Triton Inference Server or Ray Serve for production workloads?
