---
created: 2026-04-28
updated: 2026-04-28
tags: [source, agent-memory, langchain, filesystem, no-code]
sources: 1
---

# How We Built Agent Builder's Memory System

## Metadata

- **Author**: The LangChain Team
- **Date**: 2026-02-22
- **URL**: https://blog.langchain.com/how-we-built-agent-builders-memory-system/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How we built Agent Builder's memory system.md`

## Summary

LangChain's technical deep dive into the memory system powering LangSmith Agent Builder. Memory is represented as files (AGENTS.md, skills, tools.json) stored in Postgres but exposed as a virtual filesystem. Built on the COALA memory taxonomy (procedural, semantic, episodic), with human-in-the-loop editing to prevent prompt injection.

## Key Takeaways

- **Memory as files**: AGENTS.md (procedural), skills files (semantic), tools.json (MCP tools). Filesystem abstraction because LLMs are good at using filesystems.
- **Virtual filesystem**: Stored in Postgres, exposed to agent as files. Pluggable backend (S3, MySQL, etc.) via Deep Agents.
- **Iterative calibration**: Memory builds itself through user corrections over time. Example: "Use bullet points" → agent edits AGENTS.md → future sessions apply automatically.
- **Prompting is the hardest part**: One full-time person on prompting for memory. Issues: remembering when/what to remember, writing to wrong files, not compacting learnings.
- **Human-in-the-loop**: All memory edits require human approval (with optional "yolo mode").
- **Future**: Episodic memory (conversation history as files), background memory processes (cron-based reflection), `/remember` command, semantic search, user/org-level memory directories.

## Entities Mentioned

- [[comprehensive-rag-ollama-langchain|LangChain]] — LangSmith Agent Builder, Deep Agents
- [[neurips|COALA paper]] — memory taxonomy for agents
- [[anthropic]] — Claude Code subagent format reference
- [[model-context-protocol|MCP]] — Model Context Protocol for tools

## Concepts Mentioned

- [[agent-builder-memory-system|Agent memory]] — persistent learning across sessions
- [[agent-builder-memory-system|Procedural memory]] — rules and instructions (AGENTS.md)
- [[agent-builder-memory-system|Semantic memory]] — facts and knowledge (skills)
- [[agent-builder-memory-system|Episodic memory]] — past behavior sequences (planned)
- Virtual filesystem — database-backed file abstraction
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Human-in-the-loop]] — approval gates for memory edits
- [[prompt-engineering|Prompt injection]] — security concern mitigated by approval

## Raw Notes

See raw file for concrete examples of memory evolution and file structures.

## Questions / Follow-ups

- How does this filesystem-based memory compare to vector-database approaches (e.g., MemGPT)?
