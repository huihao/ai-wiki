---
created: 2026-04-30
updated: 2026-05-09
tags: []
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
- **Scaling and optimization trade-offs**: Inference optimization involves balancing throughput, latency, memory usage, and model quality; techniques include quantization (e.g., 4-bit weights), speculative decoding, batching strategies, and KV-cache management.

## Related Concepts

- [[decode-optimization]]
- [[function-calling]]
- [[logits-masking]]
- [[attention-mechanisms]]
- [[persistent-kernels]]
- [[structured-outputs]]

## Sources

- [[function-calling-huggingface]] -- Hugging Face guide on LLM function calling and structured tool use
- [[hitting-1000-tokens-rtx-5090]] -- Detailed walkthrough of CUDA megakernel decode optimization achieving 1,000 tok/s on RTX 5090
- [[ai-insights-blog-avichala]] -- Covers 4-bit inference optimization and activation quantization challenges
