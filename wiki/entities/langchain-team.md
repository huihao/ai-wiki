---
url: https://blog.langchain.com/how-we-built-agent-builders-memory-system/
organization: LangChain
date: 2026-02-22
---

# LangChain Team

Team behind [[langsmith-agent-builder|LangSmith Agent Builder]] memory system implementation.

## Memory System Work

- Built agent memory system using filesystem representation
- One person worked full-time on prompting for memory
- Prioritized memory for specialized agents vs. general-purpose agents
- Used industry standards (AGENTS.md, agent skills)

## Key Learnings

- Prompting is hardest part of memory implementation
- Validation needed for file types (tools.json, skills frontmatter)
- Agents add specifics but don't compact/generalize well
- Human-in-the-loop approval essential for security

## Publications

- "How we built Agent Builder's memory system" (2026-02-22)

## Related Concepts

- [[langsmith-agent-builder]]
- [[deep-agents]]
- [[langchain]]

## Sources

- [[how-we-built-agent-builder-memory-system]]