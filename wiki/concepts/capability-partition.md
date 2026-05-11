---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Capability Partition

## Definition
Capability partition is the design principle of dividing an AI coding agent's functionality into distinct, isolated capability modules (Read, Write, Edit, Glob, Grep, Bash, Agent) rather than providing a single monolithic tool. In Claude Code's architecture, the 7 core tools form a carefully partitioned capability set where each tool has a specific purpose, permission boundary, and failure mode, enabling granular control and validation.

## Key Aspects
- **Seven core tools**: Read/Write/Edit (file operations), Glob/Grep (discovery and search), Bash (shell commands), and Agent (subagent scheduling) -- each with distinct permission requirements
- **Granular permission control**: Users can allow or deny specific tools (e.g., allow Read but deny Bash), enabling fine-grained security policies
- **Separation of concerns**: Read is read-only, Write creates files, Edit modifies existing files -- this separation enables the system to reason about safety per-operation rather than per-session
- **Subagent delegation**: The Agent tool enables the main model to spawn subagents with their own tool subsets, creating hierarchical capability partitions
- **Validation boundaries**: Each tool has its own input validation, error handling, and output formatting, making the system more robust than a single general-purpose tool
- **Trust escalation**: The tool taxonomy maps to trust levels -- Read/Glob/Grep are safe (no side effects), Edit is moderate (modifies existing files), Write/Bash are high-risk (creates new files, executes commands)

## Related Concepts
- [[harness-engineering-claude-code]] -- the system where capability partition is implemented
- [[agent-frameworks-runtimes-and-harnesses]] -- the infrastructure layer where tools are defined
- [[sandbox-execution]] -- complementary security mechanism limiting what partitioned capabilities can affect

## Sources
- [[harness-engineering-claude-code]]
