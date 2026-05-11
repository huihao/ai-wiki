---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Capacity

## Definition
Capacity in transformer inference refers to the GPU memory budget available for storing model weights, KV cache, and intermediate activations, and the critical tradeoffs in allocating this finite resource. Understanding capacity constraints is essential for determining maximum batch sizes, sequence lengths, and model parallelism strategies in production inference deployments.

## Key Aspects
- **Memory breakdown**: A 52B-parameter model requires ~104GB for weights alone (at fp16), plus KV cache (2MB per token for 52B model), plus intermediate activations for softmax, layernorm, etc.
- **KV cache vs. weights tradeoff**: KV cache grows linearly with sequence length and batch size, eventually competing with model weights for GPU memory; this limits maximum context length or batch size
- **Flops vs. memory boundedness**: The arithmetic intensity ratio (compute-to-memory) determines whether inference is memory-bound (small batch, limited by memory bandwidth) or compute-bound (large batch, limited by FLOPS)
- **A100 example**: At 208:1 flops-to-memory ratio, batch sizes below 208 are memory-bound; above 208 are flops-bound -- this crossover point defines optimal batching strategy
- **Model parallelism for capacity**: Tensor parallelism divides weights across GPUs to fit large models; each GPU holds a fraction of weights, but KV cache and activations still require per-GPU memory
- **Intermediate memory costs**: Softmax, layernorm, and activation storage consume ~5% of latency for large models, but become significant for very long sequences

## Related Concepts
- [[kv-cache]] -- the primary dynamic memory consumer in inference
- [[tensor-parallelism]] -- technique for fitting models that exceed single-GPU capacity
- [[memory-bandwidth]] -- the bottleneck that capacity constraints create for small-batch inference

## Sources
- [[transformer-inference-arithmetic]]
