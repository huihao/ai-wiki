---
tags: [concept]
sources: [[best-practices-claude-code]]
related_concepts: [[context-engineering]], [[session-management]]
---

# Auto Compaction

Claude Code's automatic mechanism for managing the context window. When the context fills up, Claude summarizes the conversation to preserve important information while freeing space for new work.

## Overview

As a conversation grows, it approaches the model's context window limit. Rather than truncating history or failing outright, Claude Code triggers auto compaction: a summarization pass that distills the conversation into its essential elements -- code patterns established, files currently relevant, key decisions made, and remaining task objectives. The summarized context replaces the full history, freeing tokens for continued work.

## Manual Compaction

You do not have to wait for automatic triggering. Compaction can be initiated manually:

```bash
# Compact with a focus directive
/compact Focus on the API changes

# General compact
/compact
```

The instruction parameter tells the summarizer what to prioritize preserving, giving you control over what information survives compaction.

## Partial Compaction

From the rewind menu (double-tap Escape), you can select "Summarize from here" to compact only the portion of the conversation after a chosen checkpoint, rather than the entire history. This is useful when early context remains relevant but later exchanges have become stale.

## Customizing Compaction Behavior

CLAUDE.md can include instructions that influence what the summarizer preserves. For example:

```markdown
When compacting, always preserve the full list of modified files.
When compacting, preserve all database schema decisions.
```

These directives act as hints to the compaction model about what information is critical for your workflow.

## Best Practices

- **Proactive compaction**: Run `/compact` with a focus directive before switching to a new subtask within a session.
- **Monitor context usage**: If Claude's responses become less coherent or forget earlier context, compaction may have dropped important details -- consider manually compacting with explicit instructions.
- **Use CLAUDE.md hints**: If compaction consistently loses information your workflow depends on, add preservation directives to [[claude-md]].
- **Combine with session management**: For fundamentally different workstreams, prefer creating a new session (see [[session-management]]) over trying to compact and redirect a single session.

## Limitations

- Summarization is lossy by nature -- some nuance will be lost regardless of directives.
- Very long conversations may require multiple compactions, each further compressing prior summaries.
- Compacted context cannot be fully recovered; use [[checkpointing]] to preserve specific states before compacting.
