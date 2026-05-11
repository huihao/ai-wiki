---
url: https://smith.langchain.com/agents
title: LangSmith Agent Builder
organization: LangChain
---

# LangSmith Agent Builder

No-code agent builder platform targeted at "technically lite" citizen developers. Built on top of [[deep-agents|Deep Agents]] harness.

## Purpose

Create specialized agents for specific workflows (e.g., email assistant, documentation helper) that repeat the same tasks over and over. Unlike general-purpose agents, lessons from one session translate to the next at a much higher rate.

## Key Feature: Memory System

Prioritizes memory as core platform feature:

- [[agents-md|AGENTS.md]]: Core instruction set (procedural memory)
- [[agent-skills|Skills]]: Specialized task instructions (semantic memory)
- Subagents: Hierarchical agent architecture
- tools.json: MCP tool subset configuration
- Knowledge files: Arbitrary semantic memory

Memory represented as filesystem (stored in Postgres, exposed as files to agents).

## Memory Evolution Example

Agents build memory through natural language corrections:

- Week 1: Paragraph → bullet points
- Week 2: Add action items extraction
- Month 3: Comprehensive preferences, meeting types, people, edge cases

Memory file builds itself iteratively without manual AGENTS.md editing.

## Implementation Details

- **Virtual filesystem**: Postgres storage exposed as filesystem
- **Deep Agents harness**: Context engineering abstraction (summarization, tool call offloading, planning)
- **Human-in-the-loop**: Memory edits require approval (security), optional "yolo mode"
- **Portable agents**: Standard conventions for portability to Deep Agents CLI, Claude Code, OpenCode

## Sources

- [[how-we-built-agent-builder-memory-system]] — Memory system architecture and learnings
- https://smith.langchain.com/agents

## Related Concepts

- [[agent-memory]]
- [[deep-agents]]
- [[langchain-team]]
- [[langchain]]