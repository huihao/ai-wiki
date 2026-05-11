---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Inside vLLM

## Metadata

- **Author**: Aleksa Gordić
- **Date**: 2025-08-09
- **URL**: https://www.aleksagordic.com/blog/vllm
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Inside vLLM_ Anatomy of a High-Throughput LLM Inference System - Aleksa Gordić.md`

## Summary

A comprehensive technical deep-dive into vLLM's architecture, from basic engine core (scheduling, paged attention, continuous batching) through advanced features (chunked prefill, prefix caching, speculative decoding, disaggregated P/D) to distributed multi-GPU serving and benchmarking. Based on V1 engine analysis (commit 42172ad, August 2025), structured as the first post in a series following an inverse-pyramid approach.

## Key Takeaways

### Part 1: LLM Engine & Engine Core
- **Basic components**: Processor, Engine Core Client, Output Processor, Model Executor, Scheduler, KV Cache Manager
- **Scheduler**: Handles prefill (compute-bound) and decode (memory-bandwidth-bound) requests; FCFS or priority policy
- **KV Cache Manager**: Maintains `free_block_queue` (pool of available blocks); block tables map requests to KV blocks
- **Continuous batching**: Mix prefill and decode in same step (V1 improvement over V0)
- **Forward pass**: Flattened sequences with position indices and attention masks; CUDA graphs for kernel launch optimization
- **Paged attention**: Block-based KV cache (16 tokens/block by default); eliminates fragmentation

### Part 2: Advanced Features
- **Chunked prefill**: Split long prompts into chunks (≤ `long_prefill_token_threshold`); prevents monopolizing engine steps
- **Prefix caching**: Hash-based reuse of KV blocks for shared prefixes; enabled by default
  - `BlockHash` stores hash + token IDs; `cached_block_hash_to_block` tracks cache hits
  - Reference counting for shared blocks; freed blocks retain hash until reused
- **Guided decoding (FSM)**: Grammar-constrained sampling via `xgrammar` backend
  - `_grammar_bitmask` encodes allowed tokens; expands 32x to mask logits to -∞
  - FSM state advances after each sampled token
- **Speculative decoding**: Draft-then-verify acceleration
  - V1 uses n-gram, EAGLE (MLP surgery), or Medusa (auxiliary heads), not separate draft LM
  - Rejection sampler guarantees output distribution matches target model
- **Disaggregated P/D**: Separate prefill and decode instances
  - Prefill workers write KV to external cache; decode workers read from it
  - Isolates compute-bound prefill from latency-sensitive decode
  - Uses `KVTransferConfig` with connectors like `SharedStorageConnector` or production `LMCache`

### Part 3: Multi-GPU Scaling
- **Tensor parallelism (TP)**: Shard model across GPUs on same node (intranode bandwidth > internode)
- **Pipeline parallelism (PP)**: Distribute across nodes when TP insufficient
- **MultiProcExecutor**: Spawns worker processes; coordination via `rpc_broadcast_mq` and `worker_response_mq`
  - Each worker: init device, load model, initialize KV cache (same as UniProcExecutor)
  - Busy loop: dequeue work, execute, enqueue results

### Part 4: Distributed Serving
- **Data parallelism (DP)**: Replicate model across nodes; load balance based on queue sizes
- **API server + DP coordinator + headless backend**:
  - `AsyncLLM` wraps engine with asyncio
  - `DPLBAsyncMPClient` manages DP load balancing
  - `DPCoordinator` mediates frontend-backend communication
  - ZMQ sockets for request routing and result streaming
  - Wave counter for quiesce coordination
  - Dummy steps for lockstep synchronization

### Part 5: Benchmarks & Auto-tuning
- **Latency vs throughput tradeoff**: Lower batch → lower ITL; higher batch → higher throughput (until compute-bound)
- **Roofline model**: Below `B_sat`, HBM bandwidth dominates (flat latency); above, compute-bound (linear growth)
- **Metrics**: TTFT (time to first token), ITL (inter-token latency), TPOT, E2E latency, throughput, goodput
- **vLLM benchmarks**: `vllm bench {latency, throughput, serve}`
  - Latency: short input (32 tokens), 128 output, batch 8
  - Throughput: 1000 ShareGPT prompts, QPS=Inf
  - Serve: Poisson/Gamma arrival times, max concurrency semaphore, SLO enforcement

## Entities Mentioned

- [[aleksa-gordic]] — author; engineer specializing in LLM inference systems
- [[vllm]] — the inference engine analyzed
- [[nvidia]] — hardware platform for vLLM optimizations

## Concepts Mentioned

- [[paged-attention]] — core innovation
- [[continuous-batching]] — scheduling strategy
- [[prefix-caching]] — KV reuse optimization
- [[speculative-decoding]] — draft-verify acceleration
- [[guided-decoding]] — grammar-constrained sampling
- [[disaggregated-prefill-decode]] — architecture separation
- [[tensor-parallelism]] — model sharding across GPUs
- [[pipeline-parallelism]] — multi-node distribution
- [[kv-caching]] — memory optimization
- [[cuda-unified-memory]] — similar paging principles
- [[flash-attention]] — kernel optimization
- [[roofline-model]] — performance analysis framework

## Raw Notes

The post is structured as an inverse pyramid:
1. Broad overview (engine core basics)
2. Layer in detail (advanced features)
3. Zoom into subsystems (later posts in series)

Code examples adapted from vLLM repo, with V1 engine focus. V0 deprecated but useful for understanding evolution.

Key implementation details:
- Block size: 16 tokens by default
- Hash function: built-in hash or SHA-256 (slower but fewer collisions)
- CUDA graphs: pre-captured during warmup, replay during execution
- Rejection sampling: Triton kernels for performance
- FSM: 32x expansion ratio for bitmask → vocab masking
- NVLink/NIXL: backend for LMCache connector (production, fastest)

## Questions / Follow-ups

- How does prefix caching interact with chunked prefill?
- Trade-offs between n-gram, EAGLE, and Medusa for speculative decoding?
- Performance comparison: disaggregated P/D vs unified engine?
