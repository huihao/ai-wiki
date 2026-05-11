---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, file-system]
sources: 1
---

# File Operations

## Definition

File operations in the context of AI coding agents refer to the core set of primitives — read, write, edit, glob, grep — that enable agents to discover, examine, create, and modify files on the local filesystem. These five operations form the fundamental tool surface of agents like Claude Code, covering the complete lifecycle of code interaction from exploration through modification.

## Key Aspects

- The five core tools in Claude Code's architecture: Read (file content), Write (create/overwrite), Edit (string replacement), Glob (pattern matching), Grep (content search)
- File operations are the primary interface through which agents interact with codebases: reading to understand existing code, writing to create new files, editing to modify existing ones
- Glob and Grep serve as discovery tools: Glob finds files by name pattern (e.g., `**/*.py`), Grep searches file contents by regex, enabling agents to navigate large codebases without loading everything into context
- The Desktop Commander MCP server extends file operations with additional capabilities: terminal execution, code editing with context-aware diff, and process management
- File operations in agents must be sandboxed: the fail-closed default means tools declare `isReadOnly` and `isConcurrencySafe` as false unless explicitly set, preventing unintended side effects
- The "file-over-app" philosophy (advocated by Karpathy) prioritizes working with plain files (Markdown, code) over proprietary application formats, aligning naturally with file-operation-based agent architectures
- Batch concurrent-safe file operations (Read, Grep, Glob) can execute in parallel, while Write and Edit operations are serialized to prevent race conditions

## Related Concepts

- [[file-over-app]]
- [[desktop-commander]]
- [[claude-code-architecture]]

## Sources

- [[harness-engineering-claude-code]]
