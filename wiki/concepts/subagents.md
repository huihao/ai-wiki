---
created: 2026-04-28
updated: 2026-05-09
tags: [agent, architecture, orchestration]
sources: 1
---

# Subagents

## Definition

The subagent pattern is an architectural approach in AI agent systems where a parent (orchestrator) agent spawns one or more child agents to handle specific subtasks, either in parallel or with specialized capabilities. Each subagent operates with its own context, tools, and instructions, and returns results to the parent agent for aggregation or further processing. This pattern enables decomposition of complex tasks, parallelism, separation of concerns, and the use of different model configurations or tools for different parts of a problem.

## Key Proponents / Critics

- [[anthropic]] — implements subagent patterns in Claude Code and documents agent orchestration best practices

## Related Concepts

- [[agent-orchestration]] — the broader pattern of coordinating multiple agents, of which subagents are a key building block
- [[hierarchical-agents]] — agent systems organized in parent-child hierarchies using subagents
- [[multi-agent-systems]] — systems where multiple agents collaborate, often using subagent patterns
- [[agent-loop]] — the parent agent's execution loop that manages subagent spawning and result collection
- [[agent-tools]] — subagents often have access to different tool sets than the parent
- [[task-decomposition]] — the process of breaking complex tasks into subtasks assigned to subagents
- [[delegation-chain]] — the chain of authority from parent to subagent in hierarchical systems
- [[agent-memory]] — subagents may share or isolate memory from the parent agent
- [[agent-collaboration]] — how multiple agents including subagents work together on a task

## Related Entities

- [[claude-code]] — implements the subagent pattern for task delegation and parallel processing

## Sources

- [[ta-061-subagents-in-claude-code]] — analysis of how subagents are implemented and used in Claude Code

## Evolution

- **2023**: Multi-agent frameworks like AutoGen and CrewAI introduce subagent patterns for task decomposition
- **2024**: Claude Code and other coding agents adopt subagent patterns for parallel task execution
- **2025**: Subagent orchestration becomes a standard design pattern in agentic systems, with A2A protocol and MCP providing interoperability standards
