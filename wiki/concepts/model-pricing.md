---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Model Pricing

## Definition

Model pricing refers to the cost structures for accessing AI models through APIs, typically measured per million tokens (input and output combined). Pricing varies dramatically across model families and tiers, creating a complex landscape where intelligence, speed, and cost trade-offs drive model selection decisions for different applications.

## Key Aspects

- **Wide price range**: From $0.02/1M tokens (Qwen3.5 0.8B) to $10.00/1M tokens (Claude Opus 4.7), spanning three orders of magnitude
- **Intelligence-cost trade-off**: Top intelligence models (GPT-5.5 at score 60) command premium pricing; budget models sacrifice capability for affordability
- **Blended pricing**: Industry standard uses 3:1 input-to-output token ratio for blended cost calculation
- **Tiered model families**: Most providers offer multiple tiers (e.g., Claude Opus/Sonnet/Haiku, GPT-5.5/5.4/mini) balancing capability and cost
- **Open weights advantage**: Open source models (Kimi K2.6, DeepSeek V4) can be self-hosted, potentially reducing costs for high-volume applications
- **Speed as hidden cost**: Faster models (Mercury 2 at 677.5 t/s) reduce per-request latency, impacting real-time application costs
- **Reasoning model premium**: Extended-thinking models cost more due to additional inference compute but may solve problems more efficiently
- **Context window impact**: Larger context windows enable more complex applications but increase token processing costs

## Related Concepts

- [[model-benchmarks]]
- [[inference-cost]]
- [[open-weights-vs-proprietary]]
- [[api-pricing]]

## Sources

- [[llm-leaderboard-comparison-100-models]]
