---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Stop Calling Tools, Start Writing Code (Mode)

## Metadata

- **Author**: Jeremiah Lowin
- **Date**: 2026-03-03
- **URL**: https://www.jlowin.dev/blog/fastmcp-3-1-code-mode
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/Stop Calling Tools, Start Writing Code (Mode).md

## Summary

Introduction of CodeMode pattern in FastMCP 3.1 that addresses MCP server scaling problems by replacing sequential tool calling with code composition in sandboxed execution environment.

## Key Takeaways

### The Problem with Traditional MCP

**Context Bloat**: Server with 200 tools dumps 200 schemas into context window before LLM reads user request - tens of thousands of tokens, most irrelevant.

**Execution Overhead**: Every tool call is round-trip:
- LLM calls tool → result passes through context → LLM reasons → calls another tool
- Intermediate results burn tokens flowing through model on every turn

### CodeMode Solution

Instead of calling tools one at a time, LLM writes a script that composes them:
1. **Search**: Lightweight tool name and description lookup (brief detail)
2. **Get Schemas**: Request parameter details for specific tools (detailed)
3. **Execute**: Write Python script and execute in sandbox

**Benefits**:
- Intermediate results stay inside sandbox
- Context window stays clean
- Three round-trips instead of dozens
- Example: Amazon Ads MCP reduced from 34K tokens to ~600 tokens per workflow

### Three-Stage Flow

**Default**:
- Search (brief): Natural-language query with BM25 ranking
- Get Schemas (detailed): Parameter names, types, required markers
- Execute: Python script with `call_tool` in sandbox

**Two-Stage Alternative** (Cloudflare pattern):
- Search returns inline schemas (detailed)
- Skip Get Schemas step
- Go straight to Execute

**One-Stage** (Very simple servers):
- No discovery tools
- Bake tool instructions into Execute description

### Discovery Configuration

Four discovery tools with tunable detail levels:

| Level | Output | Token Cost |
|-------|--------|-----------|
| brief | Tool names + one-line descriptions | Cheapest |
| detailed | Compact markdown with parameters | Medium |
| full | Complete JSON Schema | Most expensive |

**Tools**:
- Search (enabled): Natural-language query
- GetSchemas (enabled): Request specific schemas
- ListTools (opt-in): Dump entire catalog
- GetTags (opt-in): Browse by tags

### Sandbox Implementation

- Python execution via Pydantic's Monty project
- Restricted to `call_tool` and standard Python
- No filesystem or network access
- Configurable limits: timeouts, memory caps, recursion depth
- Replaceable sandbox provider (Docker, remote execution, etc.)

### Composition Pattern

CodeMode is a transform that:
- Works with FastMCP pipeline architecture
- Applies to entire server or specific provider
- Chains with other transforms (namespace, filter)
- Can proxy remote servers and add CodeMode

## Entities Mentioned

- [[jeremiah-lowin|Jeremiah Lowin]] — FastMCP creator
- [[fastmcp|FastMCP]] — MCP server framework
- [[pydantic|Pydantic]] — Python validation library (Monty sandbox)
- [[cloudflare|Cloudflare]] — Pioneer of code mode pattern
- [[anthropic|Anthropic]] — Explorer of code mode

## Concepts Mentioned

- [[code-mode|Code Mode]] — Pattern for tool composition via scripts
- [[mcp-scaling|MCP Scaling]] — Challenge of large tool catalogs
- [[context-bloat|Context Bloat]] — Excessive token consumption from tool schemas
- [[sequential-calling|Sequential Calling]] — Traditional one-at-a-time tool invocation
- [[discovery-tools|Discovery Tools]] — Mechanisms to find relevant tools
- [[detail-levels|Detail Levels]] — Tunable information granularity
- [[sandboxed-execution|Sandboxed Execution]] — Isolated Python runtime
- [[progressive-disclosure|Progressive Disclosure]] — Loading information as needed
- [[transforms|Transforms]] — Pipeline modifications in FastMCP

## Code Example

```python
from fastmcp import FastMCP
from fastmcp.experimental.transforms.code_mode import CodeMode

mcp = FastMCP("Server", transforms=[CodeMode()])

@mcp.tool
def add(x: int, y: int) -> int:
    """Add two numbers."""
    return x + y

@mcp.tool
def multiply(x: int, y: int) -> int:
    """Multiply two numbers."""
    return x * y
```

## Raw Notes

Server-side code mode matters: the person who knows the tools best decides how they're discovered and composed. Client-side code mode would require every client to implement discovery logic.

## Questions / Follow-ups

- What's the actual performance improvement in production?
- How do different models handle code composition?
- What security issues arise from sandbox execution?
- How does this compare to function calling in other frameworks?
