---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Model Benchmarks

## Definition

Model benchmarks are standardized evaluation frameworks that measure and compare AI model capabilities across dimensions such as intelligence, speed, latency, pricing, and context window size. They provide quantitative rankings enabling practitioners to select appropriate models for specific use cases, with platforms like Artificial Analysis tracking hundreds of models across multiple metrics.

## Key Aspects

- **Intelligence Index**: Composite score measuring model capability across various benchmarks and tasks (top: GPT-5.5 at 60, Claude Opus 4.7 at 57)
- **Output speed**: Tokens per second throughput, ranging from Mercury 2 at 677.5 t/s to slower reasoning models
- **Latency (TTFT)**: Time To First Token — how quickly models begin generating responses
- **Pricing benchmarks**: Cost per 1M tokens, spanning $0.02 (Qwen3.5 0.8B) to $10.00+ (Claude Opus 4.7)
- **Context window benchmarks**: Maximum tokens per request, from small models to Llama 4 Scout's 10M tokens
- **Model categories**: Reasoning models (174 tracked), open weights models (207 of 341 total), and standard chat models
- **341+ models tracked**: Comprehensive coverage across intelligence, speed, latency, pricing, and context dimensions
- **Comparison features**: Filtering by model type (reasoning vs non-reasoning), openness (open vs proprietary), and prompt options

## Related Concepts

- [[model-evaluation]]
- [[llm-leaderboards]]
- [[inference-speed]]
- [[model-pricing]]

## Sources

- [[llm-leaderboard-comparison-100-models]]
