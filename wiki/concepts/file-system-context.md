---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, context, infrastructure]
sources: 2
---

# File System Context

## Definition
File system context is the practice of using the local file system as an unlimited, persistent, directly manipulable external memory store for AI agents. Instead of relying solely on context windows and in-memory state, agents read from and write to files (todo.md, logs, structured documents) to maintain state across turns, compress context, and manipulate the model's attention.

## Key Aspects
- Manus rebuilt its agent framework four times, converging on file-based context as a core principle
- The file system provides unlimited storage beyond context window constraints
- Files serve as directly manipulable state: agents can update todo.md to rephrase goals and redirect attention
- KV cache optimization is critical: keeping prompt prefixes stable and context append-only reduces costs 10x
- Error observations are retained in files to provide correction signals for future actions
- Context compression must be reversible to avoid permanent information loss
- Tool name prefixes (browser_, shell_) enable efficient logits masking for action selection
- State Space Models may enable new architectures using file-based memory patterns

## Related Concepts
- [[context-window-extension]]
- [[delegation-chain]]

## Sources
- [[context-engineering-ai-agents-manus-lessons]]
- [[manus]]
