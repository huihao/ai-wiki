---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, product, inference]
sources: 0
---

# vLLM

## Summary

vLLM is an open-source high-throughput inference engine for large language models, developed at UC Berkeley's Sky Computing Lab. Its key innovation is **PagedAttention**, a memory management technique that eliminates KV cache fragmentation by dividing the cache into fixed-size blocks analogous to virtual memory paging. vLLM has become the de facto standard for production LLM serving, supporting continuous batching, speculative decoding, prefix caching, and distributed multi-GPU serving.

## Key Attributes

- **Origin**: UC Berkeley (Sky Computing Lab)
- **Type**: Open-source LLM inference engine
- **Key innovation**: PagedAttention for efficient KV cache management
- **Features**: Continuous batching, chunked prefill, prefix caching, speculative decoding, disaggregated prefill/decode, tensor/pipeline parallelism
- **Adoption**: Widely used in production; integrated with Hugging Face, OpenAI-compatible APIs

## Related Entities

- [[nvidia]] — primary GPU target for vLLM optimizations
- [[huggingface-skills|Hugging Face]] — ecosystem partner; vLLM powers many Hugging Face inference endpoints
- [[moonshot-ai]] — uses vLLM-compatible serving for Kimi models
- [[alibaba]] — uses vLLM derivatives for Qwen serving

## Related Concepts

- [[paged-attention]] — vLLM's core innovation
- [[kv-caching]] — memory optimization that PagedAttention improves
- [[continuous-batching]] — vLLM's scheduling strategy
- [[inference-optimization]] — vLLM is a canonical example
- [[speculative-decoding]] — supported in vLLM for faster inference

## Sources

- [[inside-vllm]] — comprehensive architecture deep-dive by Aleksa Gordić
- [[continuous-batching-first-principles|Continuous batching from first principles]] — explains the scheduling vLLM uses
- [[context-kills-vram|Context Kills VRAM: How to Run LLMs on Consumer GPUs]] — vLLM for local inference

## Contradictions / Open Questions

- How will vLLM compete with NVIDIA's TensorRT-LLM and commercial inference platforms?
- Can vLLM maintain its open-source lead as inference becomes increasingly proprietary?
