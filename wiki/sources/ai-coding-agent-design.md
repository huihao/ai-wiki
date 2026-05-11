---
created: 2026-04-28
updated: 2026-04-28
tags: [source, coding-agents, gemini-cli, architecture]
sources: 1
---

# AI Coding Agent Design (Gemini-CLI Source Analysis)

## Metadata

- **Author**: Unnamed (Chinese technical blog analyzing Gemini-CLI)
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/8Dtj7ZSJAWSCoDnlCUKX3Q
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/AI coding 智能体设计.md`

## Summary

A deep technical analysis of Gemini-CLI's source code, explaining how AI coding agents are designed. Covers user prompt preprocessing, tool registration and invocation, MCP integration, ReAct loop implementation, subagent architecture, and spec-driven development. Compares with Claude Code's design patterns.

## Key Takeaways

- **User prompt preprocessing**: Commands prefixed with `/` trigger specific actions or preset prompts. `@path` syntax reads files/directories as context before sending to the model, reducing conversation turns.
- **Three command sources**: built-in commands, MCP server-provided commands, extension-provided commands. Custom commands via `*.toml` files at user/project/extension levels.
- **Tool registration hierarchy**: core tools → subagents (wrapped as tools) → user custom tools → MCP-discovered tools. All serialized into function declarations for the model.
- **MCP integration**: Supports stdio, SSE, and streamable HTTP transports. Tools discovered via `mcpToTool()` and registered in `ToolRegistry`. Executed via `DiscoveredMCPToolInvocation.execute()`.
- **Token explosion problem**: MCP servers can broadcast hundreds of tools, consuming excessive context. Claude Code's Skills and encoded MCP calls are responses to this.
- **Intent recognition and routing**: Implemented via prompt engineering, not hardcoded rules. System prompt guides the model to classify tasks and choose between direct tools vs. `CodebaseInvestigatorAgent` subagent.
- **ReAct framework**: Main loop in `nonInteractiveCli.ts` — Reasoning (model call), Acting (tool execution), Observing (collect results), Updating (set current messages). Simple tasks use this directly.
- **Subagent design**: `CodebaseInvestigatorAgent` runs in isolated context (read-only tools), preventing pollution of main agent context. High cohesion, low coupling principle.
- **Spec-driven development**: Referenced as best practice for AI coding; uses OpenSpec project as example.

## Entities Mentioned

- [[gemini-cli-cheatsheet|Gemini-CLI]] — Google's AI coding agent (open source)
- [[claude-code-source-leak-harness|Claude Code]] — Anthropic's AI coding agent (closed source, referenced for comparison)
- [[qwen|Qwen Code]] — mentioned for OpenAI API compatibility layer
- [[model-context-protocol|MCP]] — Model Context Protocol

## Concepts Mentioned

- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|AI Coding Agents]] — agents specialized for software development
- [[dspy-framework|ReAct Framework]] — reasoning-acting loop for agents
- [[subagents]] — isolated context workers for complex tasks
- [[model-context-protocol|MCP]] — Model Context Protocol for tool discovery
- Intent Recognition — classifying user requests via prompts
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-Driven Development]] — using specifications to guide AI coding
- [[context-engineering|Context Isolation]] — keeping subagent context separate from main agent
- Tool Registry — centralized tool management and discovery

## Raw Notes

- Gemini-CLI supports OpenAI-compatible APIs via conversion layer.
- Tool call formats differ: Gemini API uses `functionCall`/`functionResponse`; OpenAI uses `tool_calls`/`role: tool`.
- System prompt workflow: Understand → Plan → Implement → Verify → Finalize.
- Claude Code extensible to: SRE agents, security auditors, on-call assistants, code review agents, legal assistants, financial advisors, customer support, marketing content.

## Questions / Follow-ups

- How has Gemini-CLI evolved since this 2024 analysis?
- What are the specific trade-offs between Skills (Claude Code) vs. encoded MCP calls vs. traditional tool broadcasting?
