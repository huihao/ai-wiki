---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# MCP Scaling

## Definition

MCP (Model Context Protocol) scaling is the challenge of maintaining LLM performance as the number of available tools grows in MCP-based agent systems. The core problem is context bloat: dumping hundreds of tool schemas into the context window consumes tens of thousands of tokens before the LLM even reads the user request. CodeMode, introduced in FastMCP 3.1, addresses this by replacing sequential tool calling with code composition in a sandboxed execution environment.

## Key Aspects

- **Context Bloat Problem**: A server with 200 tools dumps 200 schemas into context; most are irrelevant to the current request, wasting tokens and reducing effective context length
- **Execution Overhead**: Every tool call is a round-trip (LLM calls tool -> result passes through context -> LLM reasons -> calls another tool); intermediate results burn tokens on every turn
- **CodeMode Solution**: LLM writes a Python script composing multiple tool calls; intermediate results stay inside the sandbox; context window stays clean; three round-trips instead of dozens
- **Three-Stage Discovery**: Search (BM25 ranking, brief descriptions) -> Get Schemas (detailed parameters for relevant tools) -> Execute (Python script in sandbox)
- **Token Reduction**: Amazon Ads MCP example: from 34K tokens per workflow to ~600 tokens -- a 56x reduction
- **Progressive Disclosure**: Four detail levels (brief, detailed, full, tags) allow tunable information granularity; cheapest to most expensive
- **Sandbox Execution**: Python execution via Pydantic's Monty project; restricted to `call_tool` and standard Python; no filesystem or network access; configurable limits
- **Server-Side vs. Client-Side**: CodeMode is applied server-side because the server author knows best how tools should be discovered and composed

## Related Concepts

- [[hallucination]]
- [[llm-pricing]]

## Sources

- [[code-mode]]
- [[stop-calling-tools-code-mode]]
