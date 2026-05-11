---
created: 2026-04-28
updated: 2026-05-09
tags: []
sources: 6
---

# Model Context Protocol (MCP)

## Definition

Model Context Protocol (MCP) is an open standard created by [[anthropic|Anthropic]] that standardizes how AI systems connect to external data sources, tools, and prompts. Uses a client-server architecture where MCP servers expose resources and tools, and MCP clients (e.g., Cursor, Claude Desktop, VS Code) consume them. MCP servers broadcast hundreds of tools to LLM clients through a standardized interface, separating context provision from LLM interaction and enabling composable, secure integration patterns.

## Key Proponents / Critics

- **Creator**: Anthropic
- **Adopters**: Cursor, VS Code, Cline, Cherry Studio, Windsurf, and many others
- **Critics**: Invariant Labs has identified security vulnerabilities (MCP-Scan, tool poisoning attacks)

## Protocol Details

### Transport Mechanisms
- **stdio**: Local process communication via command execution
- **SSE**: Server-sent events for HTTP streaming
- **streamable HTTP**: Modern HTTP streaming protocol

### Server Configuration
- Command, args, env, cwd for stdio transport
- URL for SSE transport
- httpUrl for streamable HTTP transport
- Headers for HTTP authentication
- includeTools/excludeTools for tool filtering

### Capabilities
- Tool registration and discovery
- Prompt registration for command extension
- Roots capability for workspace context
- OAuth authentication handling

### Security Model
- Servers control their own resources and authentication
- No API keys shared with LLM providers

## Challenges

### Token Explosion
- MCP servers broadcast hundreds of tools; tool list provided to LLM as context
- Too many tools consume excessive tokens; inefficient for unused tool scenarios
- **Solutions**: Skills (lazy-loaded context modules), Code Execution (LLM calls MCP via code), Selective Tool Loading

### Security Risks
- Tool poisoning attacks: malicious tool descriptions that manipulate LLM behavior
- Privilege escalation via crafted MCP responses

## Ecosystem

- **SDKs**: Official TypeScript and Python SDKs, plus community SDKs in Java, Kotlin, Go, Rust, C#, Swift, and more
- **Server Frameworks**: FastMCP (zero-config FastAPI to MCP), MCP-Framework, Spring AI MCP Server, Quarkus SDK
- **Client Frameworks**: MCP-Agent for composable agents, Spring AI MCP Client, Runbear for no-code Slack/Teams/Discord integration
- **Discovery**: MCP Registry, Awesome MCP Lists, MCPServers.com, Smithery; over 20,000 servers cataloged by 2025

## Related Concepts

- [[coding-agent|AI Coding Agent]] — Primary integration target
- [[tool-registration|Tool Registration]] — MCP enables tool discovery
- [[prompt-preprocessing|Prompt Preprocessing]] — MCP prompts become commands
- [[token-optimization|Token Optimization]] — Addressing MCP token explosion
- [[agentic-rag]]
- [[tool-use]]
- [[context-engineering]]
- [[function-calling]] — OpenAI's alternative mechanism
- [[harness-engineering-overview|Harness Engineering]] — MCP as standardized sensor/actuator layer in agent harnesses

## Sources

- [[mcp-servers]] — catalog and overview of the MCP ecosystem
- [[cursor|Mastering Cursor IDE]] — practical usage of MCP in Cursor
- [[spec-rag-ai-programmer]] — MCP as "Type-C interface" for enterprise AI coding
- [[full-ai-automation-requirements-to-deployment]] — MCP tools for test env, DDL, automated testing
- [[stop-calling-tools-start-writing-code-mode|Stop Calling Tools, Start Writing Code (Mode)]] — FastMCP CodeMode for scalable MCP tool composition
- [[mcp-servers-official]] — official MCP server implementations
- [[ai-coding-agent-design|AI Coding 智能体设计]] — MCP implementation analysis and challenges

## Evolution

- Launched by Anthropic as an open standard to reduce fragmentation in AI tool integration.
- Rapid community growth: over 20,000 servers cataloged on mcp.so by 2025.
- Security research (Invariant Labs, 2025) revealed tool poisoning and privilege escalation risks.
- The broadcasting approach causes token explosion at scale, driving innovation in lazy loading (Skills) and code execution patterns.
