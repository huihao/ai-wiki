---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Paged attention

## Definition

A memory management technique for LLM inference that divides the KV cache into fixed-size blocks (pages), similar to virtual memory paging in operating systems. Introduced in vLLM, it dramatically improves GPU memory utilization and throughput by eliminating memory fragmentation and enabling dynamic block allocation.

## Key Proponents / Critics

- **Proponents**: vLLM team (Kwon et al., 2023), Aleksa Gordić (evangelist via deep-dive blog)
- **Adoption**: Now standard in vLLM, SGLang, and other inference engines

## Related Concepts

- [[kv-caching|KV cache]] — the cached key and value tensors that paged attention manages
- [[continuous-batching]] — often used alongside paged attention for throughput gains
- [[improving-gpu-memory-oversubscription-performance|GPU memory]] — the resource paged attention optimizes
- [[transformers|Transformer]] — the architecture whose inference benefits from paged attention

## Sources

- [[inside-vllm]] — detailed breakdown of block tables, free_block_queue, and implementation
- [[improving-gpu-memory-oversubscription]] — related paging principles in CUDA Unified Memory

## Evolution

- Originated in the vLLM paper (SOSP 2023) as the core innovation enabling high-throughput serving.
- Has since become a standard technique, with implementations in multiple inference frameworks.
- Prefix caching and chunked prefill are later optimizations built on the same block-based abstraction.
