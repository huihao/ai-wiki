---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# tool-use

## Definition

Tool-use (also called function calling) is the capability of language models to invoke external functions, APIs, and services during text generation, enabling them to interact with the real world beyond producing text. When an LLM identifies that a user's request requires external information or action, it generates a structured tool call with the function name and parameters; the calling application executes the tool and feeds the result back to the model, which incorporates it into its response. Anthropic's Messages API supports tool-use natively, and the Model Context Protocol (MCP) provides a standardized way to expose tools across different applications.

## Key Aspects

- **Messages API Integration**: Anthropic's Messages API provides native tool-use support where developers define tools with JSON schemas, and the model decides when and how to invoke them based on the conversation context
- **MCP Standardization**: Model Context Protocol servers (filesystem, git, memory, web fetching) provide a consistent interface for tool registration and invocation across different client applications
- **Agent API vs. Messages API**: The Messages API gives developers full control over tool loops and conversation state; the Agents API provides managed agent infrastructure where tool use is handled automatically
- **Tool Selection via Function Calling**: Models use reasoning to decide which registered tools to call, based on the natural language description provided during registration
- **Structured Results**: Tool results are returned as structured data (JSON) that the model can reason over and incorporate into subsequent actions or responses
- **Self-Repairing Tools**: Enterprise tool design returns structured errors with `recovery_suggestions` rather than exceptions, enabling agents to automatically retry with adjusted parameters
- **Pi's Minimal Toolset**: The pi agent demonstrates that four tools (Read, Write, Edit, Bash) are sufficient for competitive coding performance, challenging the assumption that more tools equals better performance
- **Security Considerations**: Tool-use requires careful permission design -- human-in-the-loop confirmation for critical actions, scoped access for subagents, and zero-trust verification at every invocation

## Related Concepts

- [[tool-registration]] -- Making tools discoverable and callable via standardized schemas
- [[model-context-protocol]] -- Model Context Protocol for cross-application tool standardization
- [[function-calling]] -- The underlying mechanism for model-invoked tool execution
- [[human-in-the-loop]] -- Safety mechanism requiring user confirmation for critical tool actions
- [[agent-tools]] -- The broader category of tools connecting LLMs to the real world

## Sources

- [[anthropic-api-documentation]] -- Messages API and Agents API with native tool-use support
- [[mcp-servers-official]] -- Official MCP server reference implementations
- [[messages-api]] -- Direct model access API with tool-use capabilities
