---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Plugin Architecture

## Definition

Plugin architecture is a software design pattern that enables extending an application's functionality through independently developed, self-contained modules (plugins) that hook into a core system via well-defined interfaces, without modifying the core codebase.

## Key Aspects

- **Fastify's Implementation**: Fastify provides a canonical plugin architecture for Node.js web frameworks where plugins encapsulate routes, schemas, and decorators with encapsulated scope, preventing cross-plugin interference
- **Hooks Lifecycle**: Plugins integrate with request/response processing through lifecycle hooks (onRequest, preHandler, onSend, etc.), enabling cross-cutting concerns to be implemented as composable plugins
- **Encapsulation**: Fastify's plugin system scopes decorators, hooks, and routes to the plugin tree, preventing global namespace pollution and enabling independent development and testing
- **Extensibility via Decorators**: Plugins can add properties and methods to the Fastify instance using decorators, extending the framework's capabilities without inheritance or monkey-patching
- **Agent Skills as Plugins**: AI agent systems adopt plugin-like patterns where skills (SKILL.md + supporting files) extend agent capabilities through standardized interfaces, analogous to software plugin architecture
- **MCP Tool Ecosystem**: Model Context Protocol servers function as plugins for AI agents, providing tools through a standardized interface that agents discover and invoke dynamically

## Related Concepts

- [[fastify]] -- Web framework with a canonical plugin architecture implementation
- [[event-loop]] -- Node.js concurrency model underlying plugin lifecycle management
- [[openapi]] -- Specification standard that can describe plugin interfaces
- [[open-source-agents]] -- Agent systems whose extensibility relies on plugin-like patterns

## Sources

- [[fastify]]
