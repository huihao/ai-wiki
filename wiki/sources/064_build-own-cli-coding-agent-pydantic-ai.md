---
created: 2026-04-29
updated: 2026-04-29
tags: [source, coding-agent, mcp, pydantic-ai, cli-agent, software-engineering]
sources: 1
url: "https://martinfowler.com/articles/build-own-coding-agent.html"
title: "Building your own CLI Coding Agent with Pydantic-AI"
---

# Building your own CLI Coding Agent with Pydantic-AI

## Summary

A comprehensive guide to building a custom CLI coding agent using the Pydantic-AI framework and Model Context Protocol (MCP). The article walks through the architecture step by step: starting with a basic CLI, adding test execution, custom instructions, then layering MCP servers for sandboxed Python execution, up-to-date library documentation, AWS integration, internet search, and structured problem solving.

## Key Takeaways
- CLI coding agents are fundamentally different from chatbots: they can read code, run tests, and modify codebases
- Building your own agent gives insight into how these systems work and allows customization for your specific project
- MCP (Model Context Protocol) acts as a standardized interface for connecting AI models to tools, like USB-C for AI
- Key capabilities: running unit tests, sandboxed Python execution (via Deno), up-to-date library docs (Context7), internet search (DuckDuckGo), and structured code reasoning
- Custom instructions prevent bad behaviors (e.g., agent modifying tests instead of implementation)
- Pydantic-AI provides the agent framework; AWS Bedrock hosts the Claude model

## Entities Mentioned
- [[anthropic]]
- [[pydantic-ai]]
- [[context7]]
- [[hugging-face]]

## Concepts Mentioned
- [[model-context-protocol]]
- [[mcp-server]]
- [[pydantic-models]]
- [[fine-tuning]]
- [[agent-engineering]]
