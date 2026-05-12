---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Model Selection

## Definition

Model selection is the process of choosing the appropriate AI model variant for a specific use case based on capability requirements, cost constraints, latency needs, and deployment environment. Anthropic's documentation exemplifies this through their tiered model family (Opus, Sonnet, Haiku), each optimized for different combinations of intelligence, speed, and cost.

## Key Aspects

- **Tiered model families**: Providers offer multiple model variants — flagship (Opus), balanced (Sonnet), and fast/efficient (Haiku) — for different use cases
- **Two API surfaces**: Messages API for direct model access with full control; Agents API for managed agent infrastructure with stateful sessions
- **Capability-cost-latency triangle**: Selecting a model involves balancing these three dimensions — no single model optimizes all three
- **Use case matching**: Simple tasks benefit from fast, cheap models; complex reasoning tasks require more capable (expensive) models
- **Context window requirements**: Different models support different context lengths, affecting suitability for document analysis or long conversations
- **Prompt caching**: Some models support caching for repeated prompts, reducing costs for applications with predictable query patterns
- **Evaluation-driven selection**: Personal benchmarks and standardized evaluations inform which model best fits specific requirements
- **Deployment considerations**: API availability, rate limits, geographic restrictions, and compliance requirements influence model choice

## Related Concepts

- [[llm-benchmarks]]
- [[llm-pricing]]
- [[prompt-engineering]]
- [[api-integration]]

## Sources

- [[anthropic-api-documentation]]
