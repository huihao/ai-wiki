---
url: https://arxiv.org/abs/2309.02427
title: COALA Paper Memory Framework
---

# Procedural Memory

One of three memory types defined in COALA paper framework for AI agents.

## Definition

The set of rules that can be applied to working memory to determine the agent's behavior.

## Purpose

Drives core agent directives and operational patterns. Defines how agent should behave across different scenarios.

## Implementation

In [[langsmith-agent-builder|LangSmith Agent Builder]]:

- [[agents-md|AGENTS.md]]: Core instruction set
- tools.json: MCP tool subset configuration
- Subagent configurations

## Example

Meeting summarizer procedural memory:

- Use bullet points, not paragraphs
- Extract action items in separate section at end
- Use past tense for decisions
- Include timestamp at top
- Engineering meetings: highlight technical decisions
- Planning meetings: emphasize priorities and timelines

## Evolution

Built iteratively through natural language corrections:

- User corrects agent behavior
- Agent edits AGENTS.md to encode procedural rule
- Rule applies automatically in future sessions
- Memory compacts and generalizes over time

## Related Concepts

- [[agent-memory]]
- [[semantic-memory]]
- [[episodic-memory]]
- [[agents-md]]
- [[langsmith-agent-builder]]

## Sources

- https://arxiv.org/abs/2309.02427 (COALA paper)
- [[how-we-built-agent-builder-memory-system]]