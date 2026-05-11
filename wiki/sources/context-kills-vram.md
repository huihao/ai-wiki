---
url: "https://medium.com/@lyx_62906/context-kills-vram-how-to-run-llms-on-consumer-gpus-a785e8035632"
author: "Lyx"
date: "2025-05-09"
---

# Context Kills VRAM: How to Run LLMs on Consumer GPUs

> Source: Technical guide on VRAM management for local LLM inference on 8-16GB consumer GPUs.

## Core Constraint

"You can run **big models** or **long prompts** on a consumer GPU (8–16 GB VRAM) — but rarely both."

## VRAM Breakdown

### Formula

`VRAM(N) [GB] = (P × b_w + 0.55 + 0.08 × P) + N × (2 × L × d/g × b_kv / 1024³)`

**Fixed costs**:
- Model weights: `P × b_w` (parameters × bytes per weight)
- CUDA overhead: ~0.55 GB
- Scratchpad activations: ~0.08 × P GB

**Variable cost**:
- KV cache: grows linearly with context length N

### Example: Qwen 2.5 7B, Q4_K_M

**Fixed**: ~5.50 GB (weights 4.34, CUDA 0.55, scratchpad 0.61)

**Measured**: ~5.33 GB (formula aligns closely)

**KV cost**: ~0.109 MiB/token (measured 0.110 MiB/token)

## Hybrid GPU+CPU Mode

**Trade-off**: Ollama splits layers between GPU and CPU, increasing total available memory.

**Hidden cost**: PCIe latency. Each token's activations cross bus twice.

**Performance curve (RTX 3060, qwen3:14b)**:
- 0% GPU (pure CPU): ~4.6 tokens/sec
- Low GPU usage: drops to ~2.6 tokens/sec (PCIe dominates)
- ~67% GPU: recovers to CPU-only speed (tipping point)
- 100% GPU: 32 tokens/sec (7× gain over CPU)

**Larger models** (qwen3:32b): hybrid helps earlier (~30% GPU), but still U-shaped curve.

**Future**: PCIe 5.0, NVLink, shared HBM will lower tipping point.

## Quantization

**Q4_K_M**: ~0.57 bytes per parameter (1/4 of FP16), excellent perplexity.

**KV cache quantization**: Recent Ollama/llama.cpp support, impact on quality still testing.

**BitNet**: Microsoft exploring 1-bit transformers.

## KV Cache Architecture Impact

### Multi-Head Attention (MHA)

Standard mechanism, separate KV pairs per head. Larger memory, scales with model size and context.

### Grouped Query Attention (GQA)

Multiple query heads share single KV projections. Reduces total KV tensors. Widely adopted in LLaMA-2/3, Mistral, Qwen. Key for long contexts on consumer VRAM.

### Sliding Window Attention (SWA)

Restricts most layers to recent tokens within fixed window. Few layers retain global attention. Bounds memory while preserving long-range reasoning.

Examples: Mistral (~1/6 global layers, 4096 window), Gemma 3 (1 global + 5 local, 1024 window).

### Multi-Latent Attention (MLA)

Used by DeepSeek-R1 (671B). Projects KV tensors into smaller latent space (`k ≪ d`, e.g., k=128 vs d≈16384). Memory usage ~7% of original. Supports large contexts at scale.

## Real-World Tests

### Baseline VRAM (Context=0)

Models tested: 1.7B to 34B. Predicted vs measured within 200-300 MiB. Formula reliable for planning.

### VRAM vs Context Length

Linear growth across model sizes. KV cache dominant variable cost. Per-token memory cost can be extrapolated from slope.

### CPU Spill Performance

4096-token context on RTX 3060 (12GB):

- Up to 14B: fit in GPU, 30-150+ tokens/sec
- 32B+: spills to CPU, drops to 2-5 tokens/sec (5-15× slowdown)

**Warning**: Spill is performance cliff, not gradual slowdown. High VRAM + low GPU utilization = spill sign.

## Practical Planning

### Model Size vs Context (Q4_K_M, 12GB GPU)

- **2-4B**: 64K-100K tokens (long memory, small footprint)
- **7-8B**: ~32K tokens (great fit for 12GB)
- **13-14B**: 4K-8K context (up to ~20K with GQA)
- **30-34B**: won't fit 12GB in Q4_K_M (use CPU/GPU hybrid)

### Recommendations

1. Pick model that fits VRAM
2. Use Q4_K_M quantization
3. Estimate per-token KV cost
4. Keep model + context entirely in VRAM
5. Monitor with `ollama ps` and `nvidia-smi`
6. Keep batch size = 1 for chat
7. Keep GPU utilization high or move fully to CPU

## Key Insight

**Base model size**: fixed, predictable

**KV cache**: scales with context, main hidden VRAM killer

**CPU spill**: massive slowdown from CPU performance + PCIe bandwidth bottlenecks

**Trade-off**: Smaller model, longer memory OR bigger model, shorter leash

## Benchmark Environment

- GPU: NVIDIA RTX 3060 (12 GB)
- CUDA: 12.9
- CPU: Intel Core i5-13400F
- Backend: Ollama v0.6.7 (llama.cpp)
- OS: Windows 11

## Related Concepts

- [[KV caching]]
- [[Quantization]]
- [[GPU Architecture]]
- [[grouped-query-attention|Grouped Query Attention (GQA)]]
- [[Multi-Head Attention]]
- [[Sliding Window Attention]]
- [[Inference Optimization]]
- [[Ollama]]

## Related Entities

- [[NVIDIA]]
- [[Ollama]]
- [[llama-cpp|llama.cpp]]
- [[DeepSeek]]