---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Transforms

## Definition

In the context of AI agent tool systems, transforms refer to the pattern of composing multiple tool operations into a single executable script rather than making sequential individual tool calls, keeping intermediate results inside a sandboxed execution environment to reduce context window consumption.

## Key Aspects

- The traditional MCP pattern requires one round-trip per tool call: LLM calls tool, result passes through context, LLM reasons, calls next tool. This creates exponential context growth with multi-step workflows.
- CodeMode (introduced in FastMCP 3.1) replaces this with a three-stage process: search for relevant tools, retrieve their schemas, then write a Python script that composes the tool calls internally.
- The transformation reduces context overhead dramatically: an Amazon Ads workflow dropped from 34,000 tokens to roughly 600 tokens by moving intermediate results into the sandbox.
- Discovery tools use tunable detail levels (brief, detailed, full) allowing the LLM to progressively explore available tools without loading all schemas upfront.
- The approach is analogous to database query optimization: instead of fetching all rows to the client and filtering, push the computation to where the data lives.
- Two-stage and one-stage variants exist for simpler servers where full schema discovery is unnecessary.
- Transforms represent a shift from "tool calling as API requests" to "tool calling as code generation," aligning with how developers naturally compose operations.

## Related Concepts

- [[token-optimization]] -- the primary motivation for reducing tool call context overhead
- [[tool-integration]] -- the broader challenge of connecting external services to agents
- [[model-context-protocol]] -- the protocol that defines tool schemas and invocation patterns

## Sources

- [[stop-calling-tools-code-mode]]
