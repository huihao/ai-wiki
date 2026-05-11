---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, model-behavior]
sources: 1
---

# Agentic Models

## Definition

LLMs specifically trained to bias toward action and tool calling. Unlike "oracle" models that excel at summarization and reasoning, agentic models chase tool calls like a squirrel chases nuts. Claude Sonnet is characterized as a "digital squirrel" — it doesn't overthink, just executes.

## Key Characteristics

- Trained on reward function to call tools
- Bias toward action over deliberation
- Incremental success over pondering per turn
- Suitable for coding agents and autonomous execution

## Model Quadrant

1. **Agentic**: Claude Sonnet, Kimi K2 — action-oriented, tool-calling
2. **Oracle**: Summarization, reasoning, high-level thinking
3. **High-safety**: Anthropic, OpenAI — ethics-aligned
4. **Low-safety**: Grok — suitable for security research

## Complementary Patterns

- Oracle pattern: wire non-agentic LLM (GPT) as tool into agentic LLM (Sonnet) for reasoning/checking
- Amp's Oracle: GPT registered as tool that Sonnet can function-call for guidance

## Related Concepts

- [[coding-agent]] — primary use case for agentic models
- [[oracle-pattern]] — complementing agentic models with reasoning models
- [[context-window-management]] — agentic models need careful context engineering
- [[harness-engineering]] — harness wraps agentic model for reliability

## Sources

- [[how-to-build-coding-agent-workshop]] — Geoffrey Huntley's model taxonomy

## Examples

- Claude Sonnet: "digital squirrel" chasing tool calls
- Kimi K2: another highly agentic model
- Not agentic: GPT (oracle), Grok (low-safety), ethics-aligned models (high-safety)