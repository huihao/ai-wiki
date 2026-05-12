---
created: 2026-04-28
updated: 2026-04-28
tags: [llm, performance]
sources: 0
---

# Inference Optimization

## Definition

Inference optimization is the engineering discipline of maximizing the throughput and minimizing the latency and cost of running large language models at serving time. Techniques span the entire stack: kernel-level optimizations (Flash Attention, fused kernels), memory management (KV caching, PagedAttention), scheduling (continuous batching, chunked prefill), and model-level techniques (quantization, speculative decoding, model parallelism).

## Key Proponents / Critics

- **Engineering leaders**: vLLM team (PagedAttention), NVIDIA (TensorRT-LLM), Groq (deterministic scheduling)
- **Key techniques**: Flash Attention, continuous batching, quantization, speculative decoding, disaggregated serving
- **Hardware focus**: NVIDIA GPUs dominate, but TPUs, Apple Silicon, and custom ASICs (Groq, Cerebras) offer alternatives

## Related Concepts

- [[kv-cache]] — eliminates redundant attention computation
- [[paged-attention]] — vLLM's memory management innovation
- [[continuous-batching]] — maximizes GPU utilization during inference
- [[quantization]] — reduces memory bandwidth and enables faster inference
- [[speculative-decoding]] — draft model acceleration
- [[model-scaling]] — inference scaling laws guide optimization strategies
- [[inside-vllm|vLLM]] — leading open-source inference engine

## Sources

- [[inside-vllm|Inside vLLM: Anatomy of a High-Throughput LLM Inference System]] — comprehensive breakdown
- [[continuous-batching|Continuous batching from first principles]] — scheduling theory
- [[context-kills-vram|Context Kills VRAM: How to Run LLMs on Consumer GPUs]] — consumer-grade optimization
- [[hitting-1000-tokens-per-second-rtx-5090|Hitting 1,000 Tokens per Second on a Single RTX 5090]] — aggressive decode optimization
- [[defeating-nondeterminism-llm-inference|Defeating Nondeterminism in LLM Inference]] — benchmarking and variance challenges

## Evolution

- **2020**: Basic batching; no KV caching in early implementations
- **2022**: Flash Attention reduces attention complexity; KV caching becomes standard
- **2023**: Continuous batching and PagedAttention revolutionize serving throughput
- **2024**: Speculative decoding, prefix caching, and disaggregated prefill/decode mature
- **2025–2026**: Multi-modal inference optimization, speculative retrieval, and hardware-specific kernels (Blackwell, MI300)
