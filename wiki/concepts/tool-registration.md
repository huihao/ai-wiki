---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# tool-registration

## Definition

Tool registration is the process of making external capabilities (APIs, functions, services) discoverable and callable by an AI agent through a standardized schema that describes what the tool does, what parameters it accepts, and what it returns. In the Model Context Protocol (MCP) ecosystem, tool registration happens when MCP servers advertise their tools to client applications (like Claude Desktop), which then present those tools to the language model for function calling. Proper tool registration balances completeness (giving the model enough information to use the tool correctly) against context efficiency (not overwhelming the context window with unnecessary schema definitions).

## Key Aspects

- **Schema-Driven Discovery**: Tools are registered with JSON Schema descriptions that tell the LLM what the tool does, its parameters, types, and return values; MCP provides a standardized format for this
- **MCP Server Architecture**: MCP servers (maintained by Anthropic) register tools through the Model Context Protocol; reference implementations exist for filesystem, git, memory, and web fetching
- **Context Efficiency Tradeoff**: Dumping entire tool schemas into context consumes tokens; pi (minimal agent) avoids MCP entirely in favor of on-demand README reading to achieve progressive disclosure
- **Subagent Tool Restriction**: When registering tools for subagents, the principle of least privilege restricts each subagent's access (e.g., code reviewer gets only Read, Grep, Glob)
- **Enterprise Governance**: AgentKit Gateway (Volcano Engine) provides centralized tool registration with MCP routing, rate limiting, and full lifecycle management from development to deployment
- **OpenAPI Conversion**: External APIs can be automatically converted to MCP tools using OpenAPI's OperationParser, enabling rapid registration of existing services
- **Two Registration Levels**: Project-level (`.claude/` directory, version-controlled) and global-level (`~/.claude/`, personal), allowing different tool availability per context

## Related Concepts

- [[model-context-protocol]] -- Model Context Protocol, the standard for tool registration and invocation
- [[tool-use]] -- The runtime invocation of registered tools by language models
- [[subagents]] -- Specialized agents with restricted tool permissions
- [[openapi]] -- API specification format that can be converted to MCP tool schemas
- [[human-in-the-loop]] -- Safety mechanism for confirming critical tool invocations

## Sources

- [[model-context-protocol]] -- Model Context Protocol standard for tool registration
- [[react-framework]] -- ReAct pattern where reasoning drives tool selection
- [[subagents]] -- Subagent patterns with restricted tool access
