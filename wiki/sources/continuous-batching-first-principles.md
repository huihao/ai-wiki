---
created: 2026-04-28
updated: 2026-04-28
tags: [source, inference, optimization, llm]
sources: 1
---

# Continuous batching from first principles

## Metadata

- **Author**: Rémi Ouazan Reboul, Arthur Zucker, Luc Georges (HuggingFace)
- **Date**: 2025-11-25
- **URL**: https://huggingface.co/blog/continuous_batching
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Continuous batching from first principles.md`

## Summary

A detailed technical blog post that builds up from attention mechanisms and KV caching to derive continuous batching, the key optimization powering modern LLM serving systems. The post explains how to maximize throughput by processing multiple conversations in parallel and swapping them out when done.

## Key Takeaways

- **Attention layers** are the only place where different tokens interact with each other. Understanding attention masks is key to understanding batching.
- **KV cache** stores key and value states during generation, reducing compute cost from O(n²) to O(n) per token while paying a memory cost of O(n).
- **Chunked prefill** splits long initial prompts into chunks to handle variable-length prompts within memory constraints, using the KV cache to process incrementally without losing information.
- **Batched generation** (naive approach) requires padding to rectangular tensors, which is wasteful when prompt lengths vary.
- **Ragged batching** removes the batch dimension and concatenates sequences, using attention masks to control which tokens can interact. This eliminates padding waste.
- **Continuous batching** combines ragged batching with dynamic scheduling: remove finished prompts, replace with new chunked prompts, and keep the GPU fully utilized by mixing prefill and decode phases in the same batch.

## Entities Mentioned

- [[huggingface-skills|HuggingFace]] — publishing platform and AI community

## Concepts Mentioned

- [[continuous-batching]] — technique for maximizing throughput in LLM serving
- [[kv-caching|KV Cache]] — caching mechanism for efficient autoregressive generation
- [[attention-mechanisms]] — core transformer operation for token interaction
- Chunked Prefill — splitting long prompts across multiple forward passes
- [[continuous-batching|Ragged Batching]] — concatenating variable-length sequences without padding
- Dynamic Scheduling — replacing finished prompts with waiting ones

## Raw Notes

- The post uses visual attention mask diagrams extensively to explain concepts.
- Llama-2-7B KV cache size: ~0.5 MB per token in float16 (128 layers/heads/dim combination).
- Padding waste in dynamic scheduling grows quadratically with batch size and prompt length.
- Next article in series will cover paged attention for efficient KV cache management.

## Questions / Follow-ups

- How does vLLM's paged attention build on these concepts?
- What are the memory bandwidth implications of continuous batching at very large batch sizes?
