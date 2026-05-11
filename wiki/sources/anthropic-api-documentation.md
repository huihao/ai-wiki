---
created: 2026-04-28
updated: 2026-04-28
tags: [source, documentation, api, llm, anthropic]
sources: 1
---

# Anthropic API Documentation

## Metadata

- **Author**: Anthropic
- **Date**: 2026-01-01 (documentation snapshot)
- **URL**: https://docs.anthropic.com/en/home
- **Fetched**: 2026-04-24
- **Raw file**: `raw/ai/Documentation.md`

## Summary

Anthropic's official API documentation provides comprehensive guides for integrating Claude into applications. The documentation covers the complete lifecycle from first API call to production deployment, including model selection, API surfaces (Messages API and Agents API), and development best practices.

## Key Takeaways

- **Developer surfaces**: Two main approaches:
  - **Messages API**: Direct model access where developers construct every turn, manage conversation state, and write tool loops
  - **Agents API**: Fully managed agent infrastructure for deploying autonomous agents in stateful sessions with persistent event history
- **Model selection**: Guidance on choosing the right model (Claude Opus, Sonnet, Haiku) for different use cases
- **Lifecycle coverage**: From initial API call through production deployment
- **Python SDK**: Official SDK with simple API for message creation
- **Development lifecycle**: Guides covering:
  - Quickstart
  - Model selection
  - Prompt engineering
  - Tool use
  - Vision capabilities
  - Context windows
  - Prompt caching
  - Response validation
  - Production deployment

## Code Example (Python SDK)

```python
import anthropic
client = anthropic.Anthropic()
message = client.messages.create(
    model="claude-opus-4-7",
    max_tokens=1024,
    messages=[{
        "role": "user",
        "content": "Hello, Claude"
    }]
)
print(message.content[0].text)
```

## API Surfaces

1. **Messages API**:
   - Direct model access
   - Full control over conversation construction
   - Manual state management
   - Custom tool loop implementation

2. **Agents API**:
   - Fully managed agent infrastructure
   - Stateful sessions
   - Persistent event history
   - Autonomous agent deployment

## Entities Mentioned

- [[anthropic]] — company providing the API
- [[claude]] — the AI model family
- [[claude-opus]] — flagship model
- [[claude-sonnet]] — balanced model
- [[claude-haiku]] — fast, efficient model

## Concepts Mentioned

- [[api-integration]] — integrating LLMs into applications
- [[llm-sdk]] — Software Development Kit for LLM access
- [[agents-api]] — managed agent infrastructure
- [[messages-api]] — direct model access API
- [[model-selection]] — choosing appropriate model variants
- [[prompt-engineering]] — crafting effective prompts
- [[tool-use]] — enabling models to call functions
- [[context-windows]] — managing conversation context
- [[prompt-caching]] — optimizing repeated prompts
- [[stateful-sessions]] — persistent agent state

## Raw Notes

The documentation reflects Anthropic's dual approach to LLM integration: providing both low-level control (Messages API) for developers who want full control over the conversation flow, and high-level abstraction (Agents API) for those who want managed agent infrastructure. This dual-surface approach mirrors the broader industry trend toward both explicit programming and agent-based abstraction layers.

The lifecycle-based documentation structure guides developers from initial experimentation through production deployment, addressing real-world concerns like prompt caching, response validation, and production practices.