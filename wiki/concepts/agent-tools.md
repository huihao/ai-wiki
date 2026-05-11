---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 4
---

# Agent Tools

## Definition

Agent Tools are the external capabilities and functions that AI agents invoke to interact with the world beyond text generation. They bridge the gap between an LLM's reasoning and real-world actions—executing code, querying databases, calling APIs, or manipulating files.

## Key Aspects

- **Tool Design Lifecycle**: Effective tools follow a 5-stage lifecycle: type safety and schema generation, LLM-friendly interface design with natural language descriptions, OpenAPI integration for automatic API-to-tool conversion, self-repairing capability with structured error responses, and governance through registries like AgentKit Gateway.
- **Single Responsibility**: Each tool should do one thing well. Complex operations are decomposed into small, focused tools that compose together, keeping the LLM's decision surface clear.
- **Structured Error Handling**: Tools return structured errors with `recovery_suggestions` rather than throwing opaque exceptions, enabling agent self-repair and retry loops.
- **Marketplace Ecosystems**: Tools are increasingly discoverable through registries and marketplaces (MCP servers, function stores), allowing agents to dynamically load capabilities at runtime rather than requiring preconfigured toolsets.
- **Type Safety**: Python type hints and Pydantic models define tool schemas automatically, providing validation, documentation, and LLM-parseable parameter descriptions from a single source of truth.

## Related Concepts

- [[understanding-agent-tools]]
- [[tool-discovery]]
- [[tool-invocation]]
- [[sequential-calling]]
- [[side-query]]

## Sources

- [[ai-tools-marketplace]]
- [[index]]
- [[understanding-agent-tools]]
- [[volcano-engine]]
