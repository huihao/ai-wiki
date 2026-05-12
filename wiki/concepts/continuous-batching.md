---
created: 2026-04-28
updated: 2026-04-28
tags: [inference, optimization]
sources: 0
---

# Continuous Batching

## Definition

Continuous batching (also known as in-flight batching or iteration-level scheduling) is an inference optimization technique for LLM serving that maximizes GPU utilization by dynamically adding and removing requests from the active batch at every generation step. Unlike static batching, where all requests must start and finish together, continuous batching allows new requests to join and completed requests to leave at each token generation iteration, dramatically improving throughput for variable-length requests.

## Key Attributes

- **Also known as**: In-flight batching, iteration-level scheduling
- **Key benefit**: Eliminates GPU idle time from waiting for slow/long requests in a static batch
- **Implementation**: vLLM, TensorRT-LLM, TGI (Text Generation Inference), SGLang
- **Trade-off**: Increased scheduling complexity; memory management becomes critical

## Related Concepts

- [[paged-attention]] — memory management technique that enables efficient continuous batching
- [[inside-vllm|vLLM]] — leading open-source implementation of continuous batching
- [[inference-optimization]] — continuous batching is a core inference optimization
- [[kv-cache]] — continuous batching must manage per-request KV caches dynamically

## Sources

- [[continuous-batching|Continuous batching from first principles]] — builds up from attention mechanisms to continuous batching
- [[inside-vllm|Inside vLLM: Anatomy of a High-Throughput LLM Inference System]] — vLLM's scheduler implementation

## Evolution

- **2020–2022**: Static batching standard; significant GPU underutilization
- **2023**: vLLM and Orca introduce continuous batching; throughput improvements of 10–20x
- **2024**: Chunked prefill + continuous batching combined; prefix caching added
- **2025–2026**: Disaggregated prefill/decode with independent continuous batching on each stage
