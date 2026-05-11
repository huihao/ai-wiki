---
url: https://blog.langchain.com/how-we-built-agent-builders-memory-system/
title: Agent Memory Systems
---

# Agent Memory

Memory systems for AI agents, enabling persistent learning across sessions. Critical for specialized agents that repeat tasks.

## Memory Types (COALA Framework)

Three categories from COALA paper:

### Procedural Memory

Rules applied to working memory to determine agent behavior.

- Implementation: [[agents-md|AGENTS.md]] files, tools.json configuration
- Purpose: Core instruction set driving agent directives
- Example: Meeting summarizer formatting preferences, meeting type handling rules

### Semantic Memory

Facts about the world.

- Implementation: [[agent-skills|Skills]] files, knowledge files
- Purpose: Domain-specific knowledge, terminology, entities
- Example: Meeting participant names/roles, domain terminology, vendor patterns

### Episodic Memory

Sequences of agent's past behavior.

- Implementation: Previous conversation files (planned feature)
- Purpose: Learning from past interactions
- Status: Future direction for [[langsmith-agent-builder|LangSmith Agent Builder]]

## Memory as Filesystem

[[langsmith-agent-builder|LangSmith Agent Builder]] represents memory as files:

- LLMs proficient at filesystem operations
- No specialized tools needed (standard filesystem access)
- Stored in Postgres (virtual filesystem), exposed as filesystem to agents
- Portable across harnesses using standard conventions

## Memory Evolution Process

Agents build memory iteratively:

1. Start with simple AGENTS.md
2. User provides corrections in natural language
3. Agent edits AGENTS.md during work ("in the hot path")
4. Memory file grows with preferences, edge cases, domain knowledge
5. Patterns apply automatically without reminders

## Key Challenges

- **Prompting complexity**: When to remember/not remember, file formats
- **File validation**: Schema validation for tools.json, skills frontmatter
- **Compaction**: Agents add specifics but don't generalize
- **Security**: Human-in-the-loop approval for memory edits (prompt injection defense)

## Future Directions

- Episodic memory (conversation history files)
- Background reflection processes (cron jobs)
- Explicit `/remember` commands
- Semantic search over memory
- Multi-level memory (user-level, org-level)

## Sources

- [[how-we-built-agent-builder-memory-system]] — LangSmith Agent Builder memory implementation
- https://arxiv.org/abs/2309.02427 (COALA paper)

## Related Concepts

- [[agents-md]]
- [[agent-skills]]
- [[deepagents]]
- [[langsmith-agent-builder]]