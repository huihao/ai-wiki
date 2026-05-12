---
tags: [concept]
sources: [[best-practices-claude-code]]
related_concepts: [[checkpointing]], [[auto-compaction]], [[context-engineering]]
---

# Session Management

The practice of organizing Claude Code conversations into named, persistent sessions that function like branches.

## Overview

Each Claude Code conversation lives in a session that preserves history, tool outputs, and accumulated context. Sessions persist across CLI invocations, allowing you to resume work exactly where you left off without re-explaining background or re-running exploration. Treating sessions like branches -- one per distinct workstream -- keeps context clean and focused.

## Resuming Sessions

| Command | Behavior |
|---|---|
| `claude --continue` | Resumes the most recent session automatically. |
| `claude --resume` | Presents a selectable list of recent sessions to choose from. |

## Naming Sessions

Use `/rename` inside a session to give it a descriptive name. Named sessions appear in the `--resume` list and make it easy to identify which workstream a session belongs to (e.g., "auth-refactor", "ci-pipeline-setup").

## Best Practices

- **One workstream per session**: Avoid mixing unrelated tasks in a single session. Context accumulated for one task can confuse or distract the model when you switch to another.
- **Name sessions early**: Assign a name as soon as you know the session's purpose.
- **Use `--continue` for continuity**: When picking up the same task the next day, `--continue` is the fastest path back to context.
- **Use `--resume` for multi-task days**: When juggling several tasks, `--resume` lets you switch between them cleanly.
- **Compact when context grows stale**: If a session has been active for a long time and the context window is filling up, use [[auto-compaction]] to summarize and free space.

## Relationship to Checkpointing

Sessions work alongside [[checkpointing]]. Checkpoints capture code and conversation state within a session for point-in-time rollback, while sessions organize work across days or weeks. Think of sessions as long-lived branches and checkpoints as local undo points within a branch.

## Relationship to Context Engineering

Effective [[context-engineering]] depends on well-scoped sessions. A focused session with a clear purpose gives Claude better context quality, which leads to more accurate and relevant outputs.
