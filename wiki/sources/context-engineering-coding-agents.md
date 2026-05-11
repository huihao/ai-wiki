---
url: "https://martinfowler.com/articles/exploring-gen-ai/context-engineering-coding-agents.html"
author: "Birgikka Böckeler"
date: "2026-02-05"
source: "Martin Fowler blog, Exploring Gen AI series"
---

# Context Engineering for Coding Agents

> Source: Thoughtworks exploration of context configuration features for AI coding assistants, with Claude Code as primary example.

## Definition

"Context engineering is curating what the model sees so that you get a better result." — Bharani Subramaniam (Thoughtworks)

## Context Categories

### Reusable Prompts

**Instructions**: Prompts telling agent to do something (e.g., "Write an E2E test in the following way...")

**Guidance** (aka rules, guardrails): General conventions agent should follow (e.g., "Always write tests that are independent")

### Context Interfaces

Descriptions for the LLM of how it can get more context:

- **Tools**: Built-in capabilities (bash commands, file searching)
- **MCP Servers**: Custom programs/scripts for data sources and actions
- **Skills**: Additional resources, instructions, documentation loaded on demand

**Files in workspace**: Most basic context interface. Codebase should serve as context through AI-friendly codebase design.

## Decision Points

**Who decides to load context?**

- **LLM**: Skills (allows unsupervised operation, but introduces uncertainty)
- **Human**: Slash commands (control, reduces automation)
- **Agent software**: Hooks (deterministic lifecycle events)

## Context Size Management

Balance amount of context - not too little, not too much. Large context windows don't mean indiscriminate dumping is good.

**Recommendations**: Build context rules files gradually, don't pump too much upfront. Models are more powerful now, may need less context than 6 months ago.

**Tool features**: Transparency about context size and composition crucial (e.g., Claude Code's `/context` command).

## Claude Code Features (January 2026)

### CLAUDE.md / AGENTS.md

**What**: Guidance

**Who decides**: Claude Code (always loaded at session start)

**Use cases**: Frequently repeated general conventions for whole project

**Examples**: "we use yarn, not npm", "activate virtual environment before running", "refactor without backwards compatibility"

**Standardization**: Attempts to standardize as `AGENTS.md` across coding assistants

### Rules

**What**: Guidance, path-scoped (e.g., `**/*.sh` for bash scripts)

**Who decides**: Claude Code (when configured paths loaded)

**Use cases**: Modularize guidance, limit CLAUDE.md size

**Other assistants**: GH Copilot, Cursor support path-based rules

### Skills

**What**: Guidance, instructions, documentation, scripts

**Who decides**: LLM (based on description) or Human

**Use cases**: Lazy-load guidance only when relevant. Can include additional resources/scripts

**Examples**: JIRA access, React component conventions, API integration docs

**Other assistants**: Cursor switching to Claude Code-style Skills

### Subagents

**What**: Instructions + model/tools configuration, own context window, parallelizable

**Who decides**: LLM or Human

**Use cases**: 
- Larger tasks worth separate context (efficiency, cost reduction)
- Different model for specific tasks
- Specific tools/MCP servers not always available
- Orchestratable workflows

**Examples**: E2E test creation, code review with different model, swarm experiments (claude-flow, Gas Town)

**Other assistants**: Roo Code (modes), Cursor, GH Copilot (human-triggered only)

### MCP Servers

**What**: Program running locally/server exposing APIs via [[Model Context Protocol|MCP]]

**Who decides**: LLM

**Use cases**: Access to APIs, local tools. Structured exposure of options.

**Examples**: JIRA API, Playwright browser navigation, local knowledge base

**Trend**: Some MCP functionality superseded by skills describing CLI/script usage

**Other assistants**: All common coding assistants support MCP

### Hooks

**What**: Scripts

**Who decides**: Claude Code lifecycle events (deterministic)

**Use cases**: Automate action on every file edit, command execution, MCP call

**Examples**: Custom notifications, auto-prettier for JS files, observability logging

**Other assistants**: Rare feature. Cursor just started supporting.

### Plugins

**What**: Distribution mechanism for commands, skills, hooks

**Use cases**: Distribute common setups to teams in organization

## Sharing Challenges

- Sharer and receiver context must be similar (works better in team than internet)
- Tendency to overengineer with copied instructions upfront (best to build iteratively)
- Different experience levels need different rules
- Low awareness of copied context leads to contradictions or blaming agent for following user instructions

## Illusion of Control

Context engineering can make agents more effective, but phrases like "ensure it does X" or "prevent hallucinations" overstate certainty. LLMs introduce non-determinism. Must "think in probabilities" and choose appropriate human oversight level.

## Author

Birgikka Böckeler (Thoughtworks), part of "Exploring Gen AI" series

## Related

- [[Claude Code]]
- [[Thoughtworks]]
- [[Model Context Protocol|MCP]]
- [[Subagents]]
- [[Coding Agents]]
- [[Agent Skills]]
- [[AI-Friendly Codebase Design]]