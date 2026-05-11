---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool]
sources: 2
---

# Anthropic API

## Summary

The Anthropic API provides programmatic access to Claude family models (Opus, Sonnet, Haiku) for text generation, vision, tool use, and agent capabilities. It follows a messages-based interface with support for streaming, system prompts, and structured outputs.

## Key Attributes

- Messages API: `/v1/messages` endpoint for conversational completions
- Supports Claude Opus 4.7, Sonnet 4.6, Haiku 4.5 model families
- Native tool use / function calling support
- Vision capabilities (image understanding)
- Streaming responses via SSE
- Prompt caching for cost optimization
- System prompt support for behavior customization

## Related Entities

- [[anthropic]] — the company behind the API
- [[claude]] — the model family served by the API

## Related Concepts

- [[function-calling|Function Calling]] — tool use via the API
- [[context-engineering|Context Engineering]] — system prompt design

## Sources

- [[agents-api]]
- [[messages-api]]
