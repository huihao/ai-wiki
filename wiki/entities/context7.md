# Context7

**Type**: MCP Server
**Category**: Documentation Access, Developer Tools
**Organization**: Upstash

## Description

MCP server providing up-to-date library documentation and code examples directly in LLM prompts. Ensures accurate and current programming assistance by overcoming training data cutoff limitations.

## Key Features

- **Current Documentation**: Access to latest library docs
- **LLM-Consumable Format**: Optimized for AI understanding
- **Code Examples**: Practical usage demonstrations
- **Library Coverage**: Multiple popular libraries
- **Easy Integration**: Simple MCP setup

## Problem Solved

LLMs have training data cutoffs:
- Libraries change and improve
- New versions released
- API modifications occur
- Best practices evolve

Context7 provides real-time access to current information.

## Implementation

### MCP Integration
```python
context7 = MCPServerStdio(
    command="npx",
    args=["-y", "@upstash/context7-mcp"],
    tool_prefix="context"
)
```

### Usage in Agents
- Agent queries library documentation
- Gets current API information
- Uses accurate code patterns
- Avoids outdated suggestions

## Benefits

- **Accuracy**: Current, not historical info
- **Reliability**: Real-world applicability
- **Efficiency**: Direct access, no web search
- **Relevance**: Library-specific results

## Use Cases

- Library API questions
- Version-specific syntax
- New feature usage
- Best practice guidance
- Migration assistance
- Debugging with current docs

## Workflow Integration

1. Developer asks about library
2. Agent queries Context7
3. Gets current documentation
4. Provides accurate answer
5. Uses correct patterns

## Supported Libraries

Popular programming libraries with current documentation. Library coverage expands regularly.

## Tool Prefix

Often used with "context" prefix for organization in multi-server agents.

## Related Agents

- [[cline]] - Marketplace integration
- Pydantic-AI agents - Context7 MCP
- Custom coding agents

## Related Sources

- [[building-cli-coding-agent-pydantic-ai]] - Implementation example
- [[cline-mcp-marketplace]] - Server listing

## Related Concepts

- [[documentation-access]]
- [[mcp-servers]]
- [[developer-tools]]

## Links

- Provider: Upstash
- MCP Package: @upstash/context7-mcp