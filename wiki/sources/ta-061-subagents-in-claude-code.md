---
created: 2026-04-28
updated: 2026-04-28
tags: [source, article, subagents]
sources: 1
---

# TA-061: Subagents in Claude Code: Your Personal AI Dev Team

## Metadata

- **Author**: Prime
- **Date**: 2025-08-04
- **URL**: https://agentairforce.com/articles/TA-061.html
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/TA-061_ Subagents in Claude Code_ Your Personal AI Dev Team _ Agent Airforce.md`

## Summary

Prime from Agent Airforce explains Claude Code's subagents feature - specialized AI assistants that handle specific coding tasks with their own context windows and tool permissions. Like Bob creating specialized versions of himself in the Bobiverse, each subagent maintains their own context while working toward collective goals.

## Key Takeaways

- Subagents are pre-configured AI specialists with specific roles, own context windows, controlled tool access, custom instructions
- Solves the context pollution problem: each subagent maintains separate contexts for debugging, reviewing, testing, etc.
- Two-level system: project level (`.claude/agents/`) and user level (`~/.claude/agents/`)
- Project-level subagents are checked into version control and shared with team
- The `description` field is critical - tells Claude Code when to delegate tasks; use action-oriented triggers like "PROACTIVELY"
- Tool permissions follow principle of least privilege - limit blast radius
- Advanced patterns: chaining subagents, context preservation strategies, meta-subagent (orchestrator)

## Subagent Examples

### Code Reviewer
- Tools: Read, Grep, Glob, Bash (read-only)
- Reviews modified files, provides feedback as 🔴 Critical / 🟡 Warning / 🟢 Suggestion

### Test Runner
- Tools: Read, Edit, Bash, Grep
- Runs relevant tests, fixes failures, maintains >80% coverage

### Performance Optimizer
- Tools: Read, Edit, Bash, Grep
- Profile first, optimize second; measure impact of changes

### Git Assistant
- Tools: Bash, Read
- Atomic commits, interactive rebasing, conflict resolution

## Entities Mentioned

- [[prime|Prime]] — author, Agent Airforce
- Agent Airforce — publication

## Concepts Mentioned

- [[subagents|Subagents]] — core subject
- [[context-engineering-coding-agents|Context engineering]] — solves pollution problem
- [[agents-md|AGENTS.md]] — where subagent configurations live
- [[multi-agent-systems|Multi-agent systems]] — architectural pattern
- [[context-window|Context window]] — management challenge

## Practical Tips

1. Start with `/agents` command, let Claude generate initial version, then customize
2. Version control project subagents in `.claude/agents/`
3. Use descriptive names: `code-reviewer` not `reviewer`
4. Monitor performance - balance specialization with speed
5. Avoid over-specialization and context loss

## Common Pitfalls

- Over-specialization (too many subagents creates coordination overhead)
- Context loss (subagents don't share memory - need explicit handoff)
- Tool permission chaos (be intentional about access)

## Questions / Follow-ups

- How to implement persistent memory anchors across subagents?
- What's the optimal number of subagents before coordination overhead dominates?
- How does this compare to other multi-agent frameworks?