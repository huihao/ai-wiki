---
created: 2026-04-29
updated: 2026-05-09
tags: [api, nlp]
sources: 1
---

# LLM SDK

## Definition

An LLM SDK (Software Development Kit) is a client library that provides a programmatic interface for interacting with large language model APIs. Anthropic's official Python SDK exemplifies this pattern, offering methods for message creation, conversation management, tool use, and integration with both direct model access (Messages API) and managed agent infrastructure (Agents API).

## Key Aspects

- Two primary developer surfaces: Messages API (direct model access with full conversation control) and Agents API (fully managed agent infrastructure with stateful sessions)
- Messages API requires developers to construct every conversation turn, manage state, and implement tool loops
- Agents API provides persistent event history and autonomous agent deployment with less manual orchestration
- Covers the full lifecycle from quickstart through production deployment, including prompt engineering, tool use, vision, context windows, and prompt caching
- Model selection guidance spans the Claude family: Opus (flagship), Sonnet (balanced), Haiku (fast/efficient)
- Python SDK provides simple API for message creation with minimal boilerplate
- Production concerns include response validation, prompt caching for cost optimization, and deployment best practices

## Related Concepts

- [[llm]]
- [[mcp-server]]
- [[llm-code-generation]]

## Sources

- [[anthropic-api-documentation]]
