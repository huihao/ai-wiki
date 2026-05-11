---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 3
---

# Coding Agent

## Definition
A coding agent is an autonomous software system built on a language model that uses tools (file read/write, shell execution, search) in a continuous loop to write, modify, debug, and test code with minimal human intervention—what Geoffrey Huntley describes as "300 lines of code running in a loop with LLM tokens."

## Key Aspects
- **Five primitives**: Every coding agent needs exactly five tools: read_file, list_files, bash, edit_file, and code_search; the entire agent is fundamentally simple—a loop plus tools plus LLM tokens.
- **Agentic model selection**: Not all LLMs are suitable for agent work; agentic models (like Claude Sonnet) bias toward action and tool calling, while oracle models excel at reasoning/verification—some systems wire non-agentic LLMs as checking tools within an agentic loop.
- **Context window as limited memory**: The context window behaves like a Commodore 64—limited, and performance degrades with more allocation; only one activity should use the context at a time, with clearing between tasks.
- **Harness engineering**: The thick layer around the LLM that handles tool routing, context management, error recovery, and safety constraints is what makes agents reliable in production—far more code than the model call itself.
- **Planner-worker scaling**: For large tasks, a planner agent delegates atomic subtasks to hundreds of worker agents, each operating in isolated context; this pattern scaled to building a 1M+ line web browser in a week.
- **Model does the heavy lifting**: Cursor, Windsurf, Claude Code, and Amp all fundamentally use the same pattern—the model decides what to do, the harness provides tools and manages execution.

## Related Concepts
- [[agent-loop]]
- [[agentsmd]]
- [[auto-memory]]
- [[agentic-systems]]

## Sources
- [[agentic-models]]
- [[how-to-build-coding-agent-workshop]]
- [[oracle-pattern]]
