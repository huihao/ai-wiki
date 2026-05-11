---
created: 2026-04-28
updated: 2026-04-28
tags: [source, mcp, reference-implementations, official]
sources: 1
---

# Model Context Protocol Servers (Official Reference Implementations)

## Metadata

- **Author**: Anthropic (Model Context Protocol Team)
- **Organization**: modelcontextprotocol
- **Date**: 2026-01-27
- **URL**: https://github.com/modelcontextprotocol/servers
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/GitHub - modelcontextprotocol_servers_ Model Context Protocol Servers.md`

## Summary

Official reference implementations of Model Context Protocol (MCP) servers maintained by Anthropic. Contains production-quality examples demonstrating MCP features and SDK usage, plus comprehensive lists of community servers, frameworks, and resources.

## Reference Servers

### Active Servers
- **Everything** — test server with prompts, resources, tools
- **Fetch** — web content fetching and conversion for LLM usage
- **Filesystem** — secure file operations with configurable access controls
- **Git** — read, search, manipulate Git repositories
- **Memory** — knowledge graph-based persistent memory system
- **Sequential Thinking** — dynamic reflective problem-solving via thought sequences
- **Time** — timezone conversion capabilities

### Archived Servers
- AWS KB Retrieval, Brave Search, EverArt, GitHub, GitLab, Google Drive, Google Maps, PostgreSQL, Puppeteer, Redis, Sentry, Slack, SQLite

## MCP SDKs

Official SDKs for building MCP servers:
- **TypeScript** — @modelcontextprotocol/typescript-sdk
- **Python** — modelcontextprotocol/python-sdk
- **Java, Kotlin, Go, Rust, C#, Swift, Ruby, PHP** — community SDKs

## Frameworks & Tools

### Server Frameworks
- **FastMCP** — zero-configuration FastAPI → MCP conversion
- **MCP-Framework** — TypeScript with CLI, elegant server building
- **Foobara MCP Connector** — expose Ruby commands via MCP
- **Foxy Contexts** — Golang MCP server library
- **MCP Plexus** — multi-tenant Python server framework with OAuth 2.1
- **mxcp** — enterprise-grade YAML/SQL/Python servers
- **PayMCP** — payments layer for MCP tools
- **Perl SDK** — MCP servers/clients in Perl
- **Quarkus MCP Server SDK** — Java framework
- **Spring AI MCP Server** — auto-configuration for Spring Boot

### Client Frameworks
- **MCP-Agent** — composable agent framework using MCP
- **Spring AI MCP Client** — Spring Boot auto-configuration
- **PHP MCP Client** — PHP client implementation
- **Runbear** — no-code MCP client for Slack/Teams/Discord

### Tools & Resources
- **MCP Registry** — registry.modelcontextprotocol.io
- **MCP CLI** — inspector tool
- **mcp-get, mcp-dockmaster, MCP Linker** — installation/management tools
- **Awesome MCP Servers** — curated lists (punkpeye, wong2, appcypher)
- **MCPServers.com, MCPHub, MCP Hunt** — discovery platforms
- **Smithery** — registry for MCP tools
- **MCPWatch** — security scanner
- **ToolHive** — deployment via containerization

## Security Considerations

- Servers are **reference implementations** for education, not production-ready
- Developers must implement appropriate safeguards for their threat model
- MCP separates context provision from LLM interaction
- Servers control their own resources and authentication
- No API keys shared with LLM providers

## Usage Examples

### Claude Desktop Configuration

```json
{
  "mcpServers": {
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    },
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/path/to/files"]
    },
    "git": {
      "command": "uvx",
      "args": ["mcp-server-git", "--repository", "path/to/repo"]
    }
  }
}
```

### Running Servers

TypeScript servers: `npx -y @modelcontextprotocol/server-memory`
Python servers: `uvx mcp-server-git` or `pip install mcp-server-git`

## Entities Mentioned

- [[anthropic]] — creator and maintainer of MCP
- [[modelcontextprotocol]] — MCP organization
- [[cursor]] — MCP client
- [[vercel-labs]] — Next.js MCP adapter
- [[google]] — Google Maps, Google Drive archived servers
- [[github]] — GitHub archived server

## Concepts Mentioned

- [[model-context-protocol]] — protocol standardized by Anthropic
- [[mcp-servers]] — server implementations
- [[tool-use]] — exposing functions to LLMs
- [[rag]] — retrieval augmentation via MCP resources
- [[security-compliance]] — security considerations for MCP

## Raw Notes

- Repository contains reference servers + comprehensive ecosystem lists
- Active development: TypeScript and Python SDKs officially maintained
- Community contributions welcome (CONTRIBUTING.md, SECURITY.md)
- Apache 2.0 license for new contributions

## Questions / Follow-ups

- How do these reference implementations compare to community servers in performance?
- What security audits have been performed on MCP servers?