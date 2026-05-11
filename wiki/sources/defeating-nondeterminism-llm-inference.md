---
created: 2026-04-28
updated: 2026-04-28
tags: [source, inference, determinism, gpu]
sources: 1
---

# Defeating Nondeterminism in LLM Inference

## Metadata

- **Author**: Horace He, Thinking Machines Lab
- **Date**: 2025-09-10
- **URL**: https://thinkingmachines.ai/blog/defeating-nondeterminism-in-llm-inference/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Defeating Nondeterminism in LLM Inference.md`

## Summary

A deep technical investigation into why LLM inference is nondeterministic even at temperature=0, debunking the common "concurrency + floating point" hypothesis. The true culprit is lack of **batch invariance** in GPU kernels — the same request produces different outputs depending on batch size, which varies with server load.

## Key Takeaways

- The "concurrency + floating point" hypothesis is incomplete: most LLM forward passes contain no atomic adds and are run-to-run deterministic.
- **Batch invariance** is the real issue: matmul kernels (and attention) produce slightly different numerics depending on batch size due to different reduction strategies and tensor-core instruction choices.
- Floating-point non-associativity means $(a+b)+c \neq a+(b+c)$, and different batch sizes cause different accumulation orders.
- The three operations needing batch invariance: **RMSNorm**, **matrix multiplication**, and **attention** (in ascending difficulty).
- For matmuls, split-K and stream-k strategies break batch invariance. The easiest fix is to compile one kernel configuration for all shapes.
- For attention, handling KV cache separately from current KV values breaks batch invariance. Solution: update KV cache and page table before the attention kernel.
- FlashDecode-style split-KV requires a **fixed split-size strategy** (not fixed number of splits) to preserve batch invariance.
- Experiments on Qwen3-235B: without batch-invariant kernels, 1000 temperature-0 runs produced 80 unique completions. With batch-invariant kernels, all 1000 were identical.
- Performance cost: unoptimized deterministic vLLM was 2× slower; improved attention kernel brought it to ~1.6×.
- Deterministic inference enables **true on-policy RL**: eliminates implicit off-policy correction from training-inference numerics mismatch.

## Entities Mentioned

- [[thinking-machines-lab]] — research lab (formerly FAIR/Meta AI researchers)
- [[openai]] — mentioned regarding API nondeterminism discussions
- [[inside-vllm|vLLM]] — inference engine used for experiments
- [[nvidia]] — CUDA, tensor cores, CUTLASS

## Concepts Mentioned

- [[defeating-nondeterminism-llm-inference|LLM Inference]] — core topic
- Batch Invariance — property that kernel output should not depend on batch size
- Floating-Point Non-Associativity — root cause of numerical differences
- [[kv-caching|KV Cache]] — attention cache management
- Split-K Matmul — parallelism strategy that breaks batch invariance
- FlashDecode — fast decoding attention kernel
- [[triton-inference-server|Deterministic Inference]] — reproducible LLM outputs
- [[on-policy-distillation-source|On-Policy RL]] — reinforcement learning requiring training-sampling match

## Raw Notes

- Code released at `thinking-machines-lab/batch_invariant_ops` with vLLM integration example.
- FlashAttention backward in Triton uses 40% more FLOPs than Tri Dao's paper to avoid atomics.
- True on-policy RL experiment: Qwen 2.5-VL 8B on Bigmath with RLVR. Without off-policy correction, reward collapses. With deterministic inference, KL divergence stays at 0.

## Questions / Follow-ups

- Has vLLM upstreamed the FlexAttention changes for fixed split-size attention?
- What is the performance gap between optimized deterministic and default vLLM now?
- How do these techniques apply to training determinism?
