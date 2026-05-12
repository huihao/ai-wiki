---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Inference Speed

## Definition

Inference speed is the rate at which a language model generates output tokens, typically measured in tokens per second (t/s). It is a critical performance metric for real-time applications, reflecting the combined effect of model size, hardware capability, memory bandwidth, and software optimization. Faster inference enables lower latency and higher throughput in production deployments.

## Key Aspects

- Measured in tokens per second (output speed) and Time to First Token (TTFT latency)
- Mercury 2 leads output speed at approximately 677.5 t/s; small models like Granite 3.3 8B reach 381.5 t/s
- Memory bandwidth is the primary bottleneck for single-token decode -- the GPU reads the full weight matrix for every token generated
- Larger models trade speed for intelligence: GPT-5.5 (score 60) is slower than smaller specialized models
- Small, efficient models (Ministral 3 3B) optimize for minimal TTFT latency
- Real-time applications (chatbots, code assistants) require balancing speed against model quality and cost

## Related Concepts

- [[llm-leaderboard-comparison-100-models]]
- [[llm-pricing]]
- [[context-window]]

## Sources

- [[llm-leaderboard-comparison-100-models]]
