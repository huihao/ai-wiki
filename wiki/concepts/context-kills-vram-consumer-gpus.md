---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Context Kills VRAM on Consumer GPUs

## Definition

Context length is the primary VRAM bottleneck for consumer GPUs running large language models locally. As the number of input and output tokens grows, the KV cache — which stores intermediate attention states — expands linearly, quickly exhausting the limited memory available on consumer-grade hardware (typically 8-24 GB). This makes long-context inference on consumer GPUs a practical challenge that requires architectural and software mitigations.

## Key Aspects

- **KV cache scaling**: Each token in the context requires storing key and value vectors across all attention layers, causing memory usage to grow linearly with context length. For large models, this can consume several gigabytes even for moderate prompts.
- **Grouped-Query Attention (GQA)** reduces the number of key-value heads relative to query heads, cutting KV cache memory requirements proportionally without significantly degrading output quality.
- **Ollama and local inference tools** face this constraint directly: users with consumer GPUs (e.g., RTX 3090 with 24 GB VRAM) find that long-context requests for 7B+ parameter models exhaust available memory, requiring model quantization or context truncation.
- **Practical limits**: A 7B-parameter model with 4-bit quantization may have ~4 GB base weight memory, leaving limited room for KV cache growth as context length increases toward typical maximums (4K-128K tokens).
- **Mitigation strategies** include GQA, sliding window attention, KV cache quantization, and offloading KV data to system RAM at the cost of latency.

## Related Concepts

- [[context-window]]
- [[kv-caching]]
- [[grouped-query-attention]]
- [[gpu-throughput]]

## Sources

- [[grouped-query-attention]]
- [[kv-caching]]
- [[ollama]]
