---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# LLM Pricing

## Definition

LLM pricing refers to the cost structures charged by AI providers for accessing large language model APIs, typically measured in dollars per million input and output tokens. The pricing landscape is highly variable, ranging from fractions of a dollar to $75 per million tokens depending on model capability, provider, and tier. Understanding LLM pricing is essential for building cost-effective AI applications and choosing the right model for specific tasks.

## Key Aspects

- **Per-Token Billing**: Providers charge separately for input tokens (prompt) and output tokens (completion), with output tokens typically 3-5x more expensive
- **Price Range**: Across 296 tracked models, pricing varies from $0.25/$1.50 to $15/$75 per million input/output tokens
- **Quality-Cost Trade-off**: Top-tier models (Google, Anthropic, OpenAI) command premium prices; competitive open-source models from Zhipu AI and Alibaba Cloud offer lower costs
- **Model Rankings**: LLM Stats leaderboard tracks 296 models by quality score, speed, and cost-effectiveness; transparency enables informed selection
- **Context Window Impact**: Larger context windows increase potential per-request cost since more input tokens must be processed
- **Proprietary vs. Open Source**: Open-source models (LLaMA, Mistral, Qwen) can be self-hosted, eliminating per-token costs but requiring infrastructure investment
- **Enterprise Negotiation**: Large-volume users negotiate custom pricing; providers offer committed-use discounts
- **Reasoning Model Premium**: Reasoning models (o1, o3, DeepSeek-R1) cost significantly more due to higher token consumption during chain-of-thought generation
- **Blended Pricing Convention**: Industry standard uses 3:1 input-to-output token ratio for blended cost calculation
- **Speed as Hidden Cost**: Faster models (Mercury 2 at 677.5 t/s) reduce per-request latency, impacting real-time application costs

## Related Concepts

- [[llm-capabilities]]
- [[llm-training-scaling]]

## Sources

- [[ai-leaderboard-2026]]
- [[llm-benchmarks]]
- [[llm-leaderboard-comparison-100-models]] — detailed pricing comparison across 100+ models
