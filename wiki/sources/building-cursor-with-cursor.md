---
created: 2026-04-28
updated: 2026-04-28
tags: [source, agents, coding, tutorial, pocket-flow]
sources: 1
---

# Building Cursor with Cursor: A Step-by-Step Guide to Creating Your Own AI Coding Agent

## Metadata

- **Author**: Zachary Huang
- **Date**: 2025-03-18
- **URL**: https://dev.to/zachary62/building-cursor-with-cursor-a-step-by-step-guide-to-creating-your-own-ai-coding-agent-17c4
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Building Cursor with Cursor_ A Step-by-Step Guide to Creating Your Own AI Coding Agent.md`

## Summary

A hands-on tutorial for building a customizable AI coding agent using Pocket Flow, a minimalist 100-line LLM framework. The agent can navigate codebases, implement changes from natural language instructions, make intelligent file decisions, and learn from its operation history.

## Key Takeaways

- **Architecture**: Flow-based design using Pocket Flow with Nodes (computation units), Flows (directed graphs), and Shared Store (data dictionary).
- **Core components**:
  - `MainDecisionAgent` — LLM-driven tool selection based on user query and history
  - `ReadFileAction` — line-numbered file reading
  - `GrepSearchAction` — code search
  - `ListDirAction` — directory exploration
  - `EditFileNode` — multi-step edit flow (analyze → plan → apply)
  - `AnalyzeAndPlanNode` — converts edit instructions to line-specific operations
  - `ApplyChangesNode` — executes edits bottom-to-top to preserve line numbers
- **Decision loop**: User query → LLM decides tool → execute tool → update history → return to decision node. Continues until `finish` tool selected.
- **YAML-based LLM responses**: Structured outputs for decisions and edit operations, parsed with `yaml.safe_load`.
- **Extensibility**: New tools added by creating action node classes, updating the decision prompt, and connecting to the flow.
- **Advanced extensions suggested**: Vector DB for memory, language-specific hints, test running, security checks, static analysis.

## Entities Mentioned

- Zachary Huang — author
- [[diffusion-meets-flow-matching|Pocket Flow]] — minimalist LLM framework (100 lines)
- [[cursor]] — AI-powered code editor

## Concepts Mentioned

- [[rtk-your-ai-coding-agent-deserves-less-cli-noise|AI Coding Agent]] — autonomous code modification system
- [[diffusion-meets-flow-matching|Flow-Based Architecture]] — directed graph of computation nodes
- [[claude-code|Tool Use Pattern]] — LLM selecting from available tools
- [[genai-output-control-design-patterns|YAML Structured Output]] — parseable LLM responses
- [[claude-code-source-leak-harness|Code Editing Pipeline]] — analyze → plan → apply changes
- [[agent-builder-memory-system|Shared Memory]] — persistent state across agent steps
- [[vector-embeddings-mallya|Vector Database]] — suggested for long-term context

## Raw Notes

- GitHub repo: https://github.com/The-Pocket/Tutorial-Cursor
- Uses `call_llm()` utility for LLM interaction (provider-agnostic).
- `replace_file()` utility combines `remove_file()` and `insert_file()` for safe edits.
- Line-numbered file output helps LLM reference specific locations.

## Questions / Follow-ups

- How does this compare to more mature frameworks like LangGraph or smolagents for coding agents?
- What are the failure modes of YAML-based LLM responses in practice?
