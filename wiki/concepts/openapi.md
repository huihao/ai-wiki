---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# OpenAPI

## Definition

OpenAPI (formerly Swagger) is a specification standard for describing RESTful APIs in a machine-readable format, enabling automatic tool generation, documentation, and in the AI agent context, conversion of external APIs into MCP-compatible tools that agents can discover and invoke.

## Key Aspects

- **Schema-First API Design**: OpenAPI provides a structured YAML/JSON format defining endpoints, request/response schemas, authentication, and error formats, serving as a contract between API providers and consumers
- **Agent Tool Integration**: The OpenAPIToolset converts external APIs into MCP tools using OperationParser, enabling AI agents to call third-party services without custom integration code for each API
- **Five-Stage Tool Lifecycle**: In agent systems, OpenAPI serves stage 3 of the tool design lifecycle -- after type safety and LLM-friendly interface design, OpenAPI schemas bridge external services to agent-accessible tools
- **Automatic Documentation**: OpenAPI specifications generate interactive API documentation (Swagger UI, Redoc), reducing the effort required to maintain developer-facing docs
- **Enterprise Governance**: In platforms like AgentKit Gateway, OpenAPI schemas enable centralized traffic management, rate limiting, and compliance checking for agent-to-API interactions

## Related Concepts

- [[agent-tools]] -- Tools that connect LLMs to the real world, often described via OpenAPI
- [[model-context-protocol]] -- The protocol standard that OpenAPI tools integrate with
- [[plugin-architecture]] -- Extensibility patterns that OpenAPI specifications support
- [[permissions]] -- Access control mechanisms applied to OpenAPI-derived tool invocations

## Sources

- [[understanding-agent-tools]]
