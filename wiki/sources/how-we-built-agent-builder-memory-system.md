---
url: https://blog.langchain.com/how-we-built-agent-builders-memory-system/
title: How we built Agent Builder's memory system
author: The LangChain Team
date: 2026-02-22
---

# How we built Agent Builder's memory system

LangSmith Agent Builder is a no-code agent builder targeted at citizen developers. The article covers their rationale for prioritizing memory, technical implementation, learnings, and future work.

## Memory Rationale

Unlike ChatGPT or Claude, LangSmith Agent Builder creates specialized agents for particular tasks that repeat the same workflow over and over. Lessons from one session translate to the next at a much higher rate, making memory essential for good UX.

## Memory Types (COALA Framework)

The COALA paper defines three memory categories:

- **Procedural Memory**: Rules applied to working memory to determine behavior
- **Semantic Memory**: Facts about the world
- **Episodic Memory**: Sequences of past behavior

## Implementation: Memory as Filesystem

Memory is represented as files, leveraging LLMs' filesystem proficiency:

- **[[agents-md|AGENTS.md]]**: Core instruction set (procedural memory)
- **[[agent-skills|Skills]]**: Specialized instructions for specific tasks (semantic memory)
- **Subagents**: Similar format to Claude Code subagents
- **tools.json**: MCP tool subset access
- **Knowledge files**: Arbitrary semantic memory

Files stored in Postgres (virtual filesystem), exposed as filesystem to agents via [[deep-agents|Deep Agents]] harness.

## Concrete Example Evolution

Illustrative example showing memory evolution over 3 months:

- Week 1: Paragraph → bullet points correction
- Week 2: Add action items extraction
- Week 4: Automatic pattern application
- Month 3: Comprehensive AGENTS.md with formatting preferences, meeting types, people, edge cases

Memory built through corrections, not upfront documentation.

## Key Learnings

1. **Prompting is hardest**: Most issues solved by improving prompts (when to remember, when not, file formats)
2. **Validate file types**: Added validation for schemas (tools.json, skills frontmatter)
3. **Agents add but don't compact**: Agents add specifics but don't generalize (e.g., listing vendors vs. "ignore all cold outreach")
4. **Explicit prompting useful**: End-of-session reflection prompts, explicit compact commands
5. **Human-in-the-loop**: All memory edits require approval (security against prompt injection), "yolo mode" available

## What Memory Enables

- **No-code experience**: Familiar markdown/json format, scalable with complexity
- **Better agent building**: Iterative building with natural language feedback instead of manual config updates
- **Portable agents**: Files portable to other harnesses (Deep Agents CLI, Claude Code, OpenCode) using standard conventions

## Future Directions

- **Episodic memory**: Expose previous conversations as files
- **Background memory processes**: Cron jobs for reflection over conversations
- **`/remember` command**: Explicit reflection and memory update
- **Semantic search**: Beyond glob/grep
- **Different memory levels**: User-level, org-level memory via directories

## Related Concepts

- [[agent-memory]]
- [[procedural-memory]]
- [[semantic-memory]]
- [[episodic-memory]]
- [[agents-md]]
- [[agent-skills]]
- [[deep-agents]]
- [[langsmith-agent-builder]]
- [[langchain-team]]
- [[model-context-protocol|Model Context Protocol]]

## Sources

- https://blog.langchain.com/how-we-built-agent-builders-memory-system/