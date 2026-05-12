---
created: 2026-04-30
updated: 2026-05-12
tags: [deployment, machine-learning]
sources: 6
---

# LLM Inference

## Definition

LLM inference is the process of running a trained large language model to generate predictions, text, or structured outputs from input prompts. It encompasses the full pipeline from tokenization of input, through forward passes across transformer layers, to the autoregressive decoding loop that produces output tokens one at a time. Inference is distinct from training: it requires no gradient computation but demands efficient memory access, low latency, and high throughput.

## Key Aspects

- **Memory-bound operation**: Single-token decode is bandwidth-limited; the model reads its entire weight matrix (e.g., 1.19 GB for Qwen3-0.6B) from GPU memory on every step, making memory bandwidth the primary bottleneck rather than compute.
- **Autoregressive decoding**: Tokens are generated one at a time, with each new token conditioned on all prior tokens. This sequential nature makes parallelization challenging compared to training.
- **Decode optimization**: Aggressive kernel-level optimizations (e.g., CUDA megakernels, persistent kernels, L1-bypassing loads, productive spin) can push throughput from baseline levels to 1,000+ tokens/second on consumer GPUs like the RTX 5090.
- **Function calling and structured outputs**: LLMs can go beyond plain text generation by producing structured function calls (JSON schema-defined tool invocations), enabling interaction with external systems, APIs, and databases through tool use patterns.
- **Output control techniques**: Methods like logit masking and grammar-based constrained decoding enforce specific output formats (JSON, code, structured schemas) by restricting which tokens the model may generate at each step.

## Optimization Techniques

- **Quantization**: Reduce precision (e.g., 4-bit weights via Q4_K_M) for speed and memory savings while maintaining quality
- **Speculative decoding**: Use a smaller model to draft tokens, verified by the larger model
- **Batching**: Process multiple inputs together for throughput
- **KV-cache management**: Cache key/value tensors to avoid recomputation across tokens
- **Kernel fusion**: Combine operations to reduce memory round-trips
- **Hybrid GPU+CPU**: Splitting model layers between GPU and CPU extends effective memory but introduces PCIe latency overhead

## Inference Engines

- vLLM: LLM-optimized inference with PagedAttention
- ONNX Runtime: Cross-platform, multi-API
- TensorRT: NVIDIA GPU optimization
- Triton Inference Server: Multi-model serving

## Deployment Platforms

- Cloud: AWS SageMaker, Azure ML, GCP Vertex AI, Baseten
- Edge: Mobile devices, IoT
- Local: Desktop applications

## Related Concepts

- [[decode-optimization]]
- [[function-calling]]
- [[logits-masking]]
- [[attention-mechanisms]]
- [[persistent-kernels]]
- [[structured-outputs]]
- [[gpu-memory-bandwidth]]
- [[activation-quantization]]

## Sources

- [[function-calling-huggingface]] — Hugging Face guide on LLM function calling
- [[hitting-1000-tokens-rtx-5090]] — CUDA megakernel decode optimization
- [[ai-insights-blog-avichala]] — 4-bit inference optimization
- [[baseten-blog]] — GPU inference platform
- [[onnx-runtime-getting-started]] — ONNX Runtime guide
