---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# API Integration

## Definition
API integration in the context of AI systems refers to the process of connecting applications to language model services through standardized interfaces. Modern LLM providers offer dual API surfaces — direct model access (Messages API) for full control, and managed agent infrastructure (Agents API) for autonomous operation with persistent state.

## Key Aspects
- Anthropic's dual-surface approach: Messages API (construct every turn, manage state manually) vs. Agents API (fully managed, stateful sessions with persistent event history)
- Python SDK provides simple message creation: `client.messages.create(model=..., max_tokens=..., messages=[...])`
- Lifecycle-based documentation guides developers from quickstart through production deployment
- Key integration concerns include prompt caching, response validation, tool use, and context window management
- Tool use enables models to call external functions, bridging LLM reasoning with real-world actions
- Production considerations: error handling, rate limiting, cost monitoring, and observability

## Related Concepts
- [[ai-sdk-architecture]]
- [[agent-architecture]]

## Sources
- [[anthropic-api-documentation]]
- [[messages-api]]
