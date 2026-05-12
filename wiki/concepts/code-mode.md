---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Code Mode

## Definition

Code Mode is a pattern for MCP server scaling that replaces sequential tool calling with code composition. Instead of calling tools one at a time through round-trips, the LLM writes a script that composes tools, executes in sandbox, and returns results.

## Key Proponents / Critics

- **Cloudflare** — Pioneer of code mode pattern
- **Jeremiah Lowin** — Implementer via FastMCP 3.1
- **Anthropic** — Explorer of server-side code mode

## Problem Addressed

**Context Bloat**: 200 tool schemas = tens of thousands of tokens dumped into context before reading user request

**Execution Overhead**: Every tool call round-trip:
- Tool call → result through context → LLM reasoning → next call
- Intermediate results burn tokens on every turn

## Solution Architecture

### Three-Stage Flow (Default)

1. **Search** (brief): Find relevant tools via natural language query
2. **Get Schemas** (detailed): Request parameter details for specific tools
3. **Execute**: Write Python script, execute in sandbox

### Two-Stage Flow (Cloudflare Pattern)

1. **Search** (detailed): Returns inline schemas
2. **Execute**: Skip Get Schemas step

### One-Stage Flow (Simple Servers)

- No discovery tools
- Tool instructions baked into Execute description

## Benefits

- **Token Savings**: Amazon Ads MCP: 34K → 600 tokens per workflow
- **Cleaner Context**: Intermediate results stay in sandbox
- **Fewer Round-Trips**: 3 instead of dozens
- **Server-Side Logic**: Tool author decides discovery strategy

## Related Concepts

- [[mcp-scaling|MCP Scaling]] — Problem being solved
- [[context-bloat|Context Bloat]] — Excessive schemas issue
- [[sequential-calling|Sequential Calling]] — Traditional approach
- [[discovery-tools|Discovery Tools]] — Finding relevant tools
- [[sandbox-execution|Sandboxed Execution]] — Isolated runtime
- [[progressive-disclosure|Progressive Disclosure]] — Loading as needed
- [[detail-levels|Detail Levels]] — Tunable information (brief/detailed/full)

## Sources

- [[stop-calling-tools-code-mode|Stop Calling Tools, Start Writing Code (Mode)]]

## Implementation Details

**Discovery Tools**:
- Search (BM25 ranking, tunable detail)
- GetSchemas (parameter names/types)
- ListTools (opt-in catalog dump)
- GetTags (browse by metadata)

**Sandbox**:
- Pydantic's Monty project
- Restricted to `call_tool` + standard Python
- No filesystem/network access
- Configurable limits

**FastMCP Transform**:
- Applies to server or provider
- Chains with other transforms
- Can proxy remote servers

## Evolution

Introduced by Cloudflare for their API (2,500 endpoints in 1,000 tokens). Adopted by Anthropic for code execution. Implemented in FastMCP 3.1 with configurable discovery.

Key insight: "Server-side code mode matters: person who knows tools best decides how they're discovered."

## Trade-offs

**Advantages**:
- Massive token savings for large tool catalogs
- Cleaner context window
- Parallel tool execution in script
- Better for complex tool orchestration

**Disadvantages**:
- Three-stage may feel heavy for simple tasks
- Requires sandbox implementation
- Not all models handle code composition equally
- Additional latency for discovery phase

## Applications

- Large MCP servers (50+ tools)
- API-to-MCP conversion platforms
- Multi-tool orchestration workflows
- Production agent systems
