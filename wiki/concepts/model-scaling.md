---
created: 2026-04-27
updated: 2026-04-27
tags: [hardware, inference, systems, training]
sources: 1
---

# Model Scaling

## Definition

The engineering discipline of training and serving large language models efficiently across multiple accelerators (TPUs, GPUs) while maintaining linear throughput growth. Model scaling addresses how to parallelize computation, minimize communication overhead, and optimize memory usage so that adding more hardware yields proportional performance gains.

## Core Concepts

### Strong Scaling
The ideal regime where doubling the number of chips doubles throughput. Achieving strong scaling requires that communication time does not exceed computation time. When communication dominates, the system becomes "communication bound."

### Roofline Analysis
A performance modeling framework that identifies whether an algorithm is limited by:
- **Compute** — arithmetic operations per second
- **Memory bandwidth** — data movement speed
- **Communication** — inter-chip data transfer

### Parallelism Strategies

| Strategy | What it splits | Best for | Trade-off |
|---|---|---|---|
| **Data Parallelism** | Batch across chips | Large batch sizes | Gradient synchronization overhead |
| **Tensor Parallelism** | Layer computations within a layer | Very large models | High communication within layer |
| **Pipeline Parallelism** | Layers across chips | Deep models | Pipeline bubbles (idle time) |
| **Expert Parallelism** | MoE experts across chips | Mixture-of-Experts models | Load balancing complexity |

Modern large-model training typically combines all four strategies ("4D parallelism").

### Memory Optimization
- **Rematerialisation** (activation checkpointing): Recompute activations during backward pass instead of storing them.
- **ZeRO** (Zero Redundancy Optimizer): Shard optimizer states, gradients, and parameters across data-parallel workers.
- **Host offload**: Move data to CPU memory when not immediately needed.
- **Gradient accumulation**: Simulate larger batches without increasing memory.

### Training vs. Inference Scaling
- **Training**: Dominated by compute and gradient synchronization. Goal: maximize throughput (tokens/chip/second).
- **Inference**: Dominated by KV cache memory and latency constraints. Goal: minimize time-to-first-token (TTFT) and time-per-output-token (TPOT) while maximizing throughput.

## Related Concepts

- [[transformers]] — the model being scaled
- [[mixture-of-experts]] — architecture requiring expert parallelism
- [[inference-time-compute-scaling]] — different kind of scaling (compute at inference, not hardware parallelism)
- [[tpu]] — Google's accelerator
- [[pico-gpu|GPU]] — NVIDIA's accelerator
- [[jax]] — framework with strong scaling primitives
- [[pytorch-in-one-hour|PyTorch]] — alternative framework with FSDP

## Sources

- [[how-to-scale-your-model]] — comprehensive free book on LLM scaling

## Evolution

- **Pre-2020**: Single-GPU training was standard. Data parallelism sufficient for most models.
- **2020–2022**: GPT-3 and PaLM required pipeline + tensor parallelism. Megatron-LM and DeepSpeed popularized 3D parallelism.
- **2023–2024**: Mixture-of-Experts (Mixtral, Grok) introduces expert parallelism. Inference optimization (vLLM, TensorRT-LLM) becomes as important as training.
- **2025+**: Strong scaling efficiency becomes a first-class research constraint. New architectures are evaluated not just on quality but on whether they can run efficiently at scale.
