---
created: 2026-04-27
updated: 2026-04-27
tags: [source, book, scaling, training, inference, tpu, gpu]
sources: 1
---

# How to Scale Your Model

## Metadata

- **Author**: JAX-ML team (James Bradbury, Blake Hechtman et al.)
- **Date**: 2026-01-01 (draft)
- **URL**: https://jax-ml.github.io/scaling-book/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/How to Scale Your Model.md`

## Summary

A free online book demystifying the science of scaling language models on TPUs and GPUs. Covers roofline analysis, hardware architecture, Transformer math, training and inference parallelism strategies, and practical JAX implementation. Aimed at researchers and engineers who need to understand how LLMs run efficiently at massive scale.

## Key Takeaways

- **Core goal**: Achieve *strong scaling* — increasing chip count yields proportional, linear throughput increase. Communication between chips is the primary obstacle.
- **Three limiting factors**: Compute, communication, and memory. Roofline analysis helps identify which is the bottleneck.
- **Four primary parallelism techniques**:
  1. **Data parallelism** — split batch across chips
  2. **Tensor parallelism** — split layer computations (Megatron-style)
  3. **Pipeline parallelism** — split layers across chips
  4. **Expert parallelism** — split MoE experts across chips
- **Memory reduction techniques**:
  - Rematerialisation (recompute instead of store)
  - Optimizer/model sharding (ZeRO)
  - Host offload
  - Gradient accumulation
- **Transformer math**: Detailed FLOP counting for forward/backward passes, parameter counts, KV cache sizing.
- **Training vs. inference differences**: Inference adds latency constraints and changes the memory landscape (KV caches dominate).
- **Practical tutorials**: Training and serving LLaMA 3 on TPUs; JAX profiling and debugging.
- **GPU section**: New chapter comparing GPU and TPU rooflines, networking, and parallelism trade-offs.
- **Key insight**: "A 20% win on benchmarks is irrelevant if it comes at a 20% cost to roofline efficiency." Promising architectures often fail because they can't run efficiently at scale.

## Entities Mentioned

- [[james-bradbury]] — author
- [[blake-hechtman]] — author
- Google / JAX-ML — authors
- NVIDIA — GPUs discussed in Section 12
- Meta — LLaMA 3 used as practical case study
- [[jay-alammar]] — referenced for Transformer architecture background

## Concepts Mentioned

- [[strong-scaling]] — ideal scaling regime
- [[model-scaling]] — core subject
- [[llm-context-scaling-512-to-2m|Strong Scaling]] — ideal scaling regime
- [[llm-leaderboard-artificial-analysis|Roofline Analysis]] — performance modeling
- [[ai-data-engineer-return-to-basics|Data Parallelism]] — parallelism strategy
- [[tensor-parallelism]] — parallelism strategy
- [[pipeline-parallelism]] — parallelism strategy
- Expert Parallelism — MoE parallelism
- ZeRO — memory optimization
- [[kv-cache|KV Cache]] — inference memory concern
- [[tpu]] — Google accelerator
- [[pico-gpu|GPU]] — NVIDIA accelerator
- [[jax]] — implementation framework
- [[transformer-architecture]] — target model
- [[mixture-of-experts]] — architecture with expert parallelism

## Raw Notes

- The book fills a critical gap: most ML education covers model architecture and training algorithms but not the systems-level knowledge needed to train at scale.
- The emphasis on "roofline efficiency" as a first-class constraint is important — it explains why Transformer architecture dominance is partly a hardware efficiency story.
- LLaMA 3 as a running example makes the abstract concepts concrete.
- The draft status means content may evolve; worth tracking for updates.

## Questions / Follow-ups

- How do the scaling principles apply to non-Transformer architectures (Mamba, RWKV, etc.)?
- What are the cost implications of the different parallelism strategies for cloud training?
- How does the JAX/XLA stack compare to PyTorch/FSDP for large-scale training in practice?
