---
tags: [concept]
sources: [[best-practices-claude-code]]
related_concepts: [[session-management]], [[context-engineering]]
---

# Checkpointing (Claude Code)

A Claude Code feature that automatically saves conversation and code state before each change, enabling restoration to any previous point.

## Overview

Every time Claude modifies a file or performs a significant action, a checkpoint is created that captures both the conversation state and the state of affected files. This creates a granular history of the session that can be rewound at any point, making experimentation safe -- you can always revert if a change does not work out.

## How to Rewind

- **Double-tap Escape**: Opens the rewind menu showing a chronological list of checkpoints.
- **`/rewind` command**: Alternative way to open the rewind menu from within the conversation.
- **Rewind menu options**:
  - Restore conversation only -- rewinds the chat history but keeps current file contents.
  - Restore code only -- reverts files to a previous state but keeps the full conversation history.
  - Restore both -- rewinds conversation and files together, returning to the exact prior state.

## Key Characteristics

- **Automatic**: Checkpoints are created without user intervention before each change.
- **Persistent across sessions**: Checkpoint data survives CLI restarts.
- **Claude-scoped**: Only changes made by Claude are tracked. External processes, manual edits by the user, or changes from other tools are not captured in checkpoints.
- **Encourages experimentation**: Knowing you can rewind removes the cost of trying risky approaches.

## Checkpointing vs Git

| Aspect | Checkpointing | Git |
|---|---|---|
| Scope | Claude's changes only | All file changes |
| Granularity | Per-action within a session | Per-commit |
| Speed | Instant rewind | Requires checkout / revert |
| History | Conversation + code state | Code state only |
| Durability | Session-scoped (persistent within CLI lifecycle) | Permanent |

## Best Practices

- Use checkpointing liberally to try different approaches without fear.
- Combine with [[session-management]] for long-running workstreams.
- Do not rely on checkpoints as a substitute for git commits -- commit your final results to preserve them permanently.
- For partial context preservation, rewind menu offers "Summarize from here" which triggers partial compaction (see [[auto-compaction]]).
