---
created: 2026-04-28
updated: 2026-04-28
tags: [mlops, production]
sources: 0
---

# Model Deployment

## Definition

Model deployment is the process of making a trained machine learning model available for inference in a production environment. For LLMs, deployment encompasses model serving infrastructure, API design, scaling strategies, hardware selection, quantization, caching, monitoring, and cost optimization. Deployment decisions directly impact latency, throughput, cost per token, and user experience.

## Key Attributes

- **Serving patterns**: Self-hosted (vLLM, TGI), managed APIs (OpenAI, Bedrock), edge/on-device
- **Key considerations**: Latency (TTFT, TPOT), throughput (tokens/sec), cost, reliability
- **Hardware targets**: NVIDIA GPUs (A100, H100, B200), AMD MI300, Google TPUs, Apple Silicon
- **Optimization stack**: Quantization, speculative decoding, continuous batching, KV cache management

## Related Concepts

- [[inference-optimization]] — techniques for efficient model serving
- [[inside-vllm|vLLM]] — popular open-source LLM serving engine
- [[quantization]] — reduces model size and memory bandwidth for deployment
- [[generative-ai-platform]] — full-stack deployment architecture
- [[bentoml-documentation|BentoML]] — unified inference platform for model serving
- TensorRT — NVIDIA's inference optimization library

## Sources

- [[inside-vllm|Inside vLLM: Anatomy of a High-Throughput LLM Inference System]] — deployment architecture
- [[bentoml-documentation]] — model serving and deployment platform
- [[context-kills-vram|Context Kills VRAM: How to Run LLMs on Consumer GPUs]] — consumer deployment considerations

## Evolution

- **2020–2022**: Simple REST APIs with static batching; high latency
- **2023**: vLLM and continuous batching revolutionize open-source serving
- **2024**: Multi-modal deployment, speculative decoding, and prefix caching mature
- **2025–2026**: Serverless inference platforms, edge quantization, and hardware diversification
