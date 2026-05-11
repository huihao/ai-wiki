---
created: 2026-04-28
updated: 2026-04-28
tags: [source, mcp, security, vulnerability, educational]
sources: 1
---

# Damn Vulnerable MCP Server

## Metadata

- **Author**: Harish Santhanalakshmi Ganesan
- **Date**: 2025-04-16
- **URL**: https://github.com/harishsg993010/damn-vulnerable-MCP-server
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/GitHub - harishsg993010_damn-vulnerable-MCP-server_ Damn Vulnerable MCP Server.md`

## Summary

An intentionally vulnerable implementation of the Model Context Protocol (MCP) for educational purposes. Contains 10 challenges of increasing difficulty demonstrating security vulnerabilities and attack vectors in MCP implementations.

## Key Takeaways

- **10 challenges** across easy, medium, and hard difficulty levels.
- **Vulnerability types**: prompt injection, tool poisoning, excessive permissions, rug pull attacks, tool shadowing, indirect prompt injection, token theft, malicious code execution, remote access control, multi-vector attacks.
- Docker-based lab environment for safe experimentation.
- Educational focus for security researchers, developers, and AI safety professionals.

## Entities Mentioned

- Harish Santhanalakshmi Ganesan — author
- [[anthropic]] — creator of MCP
- Cline — VSCode extension for MCP integration

## Concepts Mentioned

- [[model-context-protocol]] — protocol for LLM tool/context integration
- [[prompt-engineering|Prompt injection]] — manipulating LLM behavior via malicious inputs
- Tool poisoning — hiding malicious instructions in tool descriptions
- [[answer-ai-source|AI security]] — securing LLM tool integrations
- Rug pull attacks — exploiting tool definition mutations
- [[prompt-engineering|Indirect prompt injection]] — injecting instructions through data sources

## Raw Notes

See raw file and GitHub repository for challenge descriptions and solutions.

## Questions / Follow-ups

- What are the recommended mitigations for each vulnerability class?
