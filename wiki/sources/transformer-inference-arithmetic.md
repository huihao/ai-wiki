---
created: 2026-04-28
updated: 2026-04-28
tags: [source, transformer, inference, performance]
sources: 1
---

# Transformer Inference Arithmetic

## Metadata

- **Author**: Kipply
- **Date**: 2022-03-30
- **URL**: https://kipp.ly/transformer-inference-arithmetic/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Transformer Inference Arithmetic.md`

## Summary

Detailed first-principles analysis of transformer inference performance, covering KV cache, memory capacity, model parallelism, latency calculations, batch sizes, flops counting, and intermediate memory costs. Provides equations for latency estimation and compares against Nvidia FasterTransformer benchmarks.

## Key Takeaways

- KV cache avoids recomputing k,v vectors, saving 1/6 of compute but costing storage
- 52B model: 2MB per token in KV cache, 104GB weights, needs 3-4 GPUs
- Flops vs memory boundedness: 208 ratio (A100), batch <208 memory bound, >208 flops bound
- Tensor parallel divides weights across GPUs with communication cost
- Communication: 4·(N-1)dmodel/N bytes per layer, 300GB/s bandwidth, ~8μs latency
- Latency equations: small batch (memory bound) vs large batch (flops bound)
- Small batch: 2·P/(N·Abm) + latency overhead
- Large batch: 2·P·B/(N·Af) (flops) vs 4·nlayers·dmodel/(Ac) (comms)
- Gopher 260B: 22ms/token (batch 1), 53ms/token (batch 512) on 16 GPUs
- Intermediate memory costs (softmax, layernorm, activations) ~5% of latency for large models
- GPU kernel fusion reduces redundant loads/stores
- Real benchmarks: 13B model achieves ~76-87% theoretical performance

## Entities Mentioned

- Nvidia — A100 GPU, FasterTransformer benchmarks
- Anthropic — 52B parameter model reference
- Google — Gopher 260B model
- DeepMind — AlphaCode mass-inferencing example
- Microsoft — Deepspeed inference engine

## Concepts Mentioned

- [[kv-cache]] - caching self-attention vectors to avoid recomputation
- [[memory-bandwidth]] - bottleneck for small batch inference
- [[flops-bound]] - compute bottleneck for large batch inference
- [[tensor-parallelism]] - sharding model weights across GPUs
- [[model-parallelism]] - dividing model across multiple accelerators
- [[pipeline-parallelism]] - naive layer-wise division (inefficient for inference)
- [[communication-bandwidth]] - NVLink throughput between GPUs
- [[batch-size]] - impact on memory vs flops boundedness
- [[kernel-fusion]] - combining GPU operations to reduce memory trips
- [[intermediate-activations]] - memory-bound operations (softmax, layernorm)
- [[capacity]] - GPU storage constraints (KV cache vs weights)

## Questions / Follow-ups

- How do AWS 400Gb/s inter-host connections compare to intra-host NVLink?
- What optimizations reduce intermediate activation memory costs below 5%?