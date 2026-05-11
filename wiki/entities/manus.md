---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, platform]
sources: 1
---

# Manus

## Summary

Manus is an AI agent platform built using in-context learning and frontier models, emphasizing context engineering principles for reliable multi-step task execution in virtual machine sandbox environments.

## Key Attributes

- **Type**: AI agent platform
- **Architecture**: Based on in-context learning (not end-to-end training)
- **Environment**: Virtual machine sandbox for tool execution
- **Iteration**: Framework rebuilt four times through experimentation
- **Focus**: Context engineering, KV cache optimization, file-based memory
- **Ratio**: ~100:1 input-to-output token ratio in typical tasks

## Related Entities

- [[yichao-peak-ji|Yichao 'Peak' Ji]] — Developer and author
- [[claude|Claude]] — Frontier model used
- [[model-context-protocol|Model Context Protocol]] — Tool integration protocol

## Related Concepts

- [[context-engineering|Context Engineering]] — Core design principle
- [[kv-cache|KV Cache]] — Cost optimization technique
- [[agent-systems|Agent Systems]] — Platform category
- [[file-system-context|File System as Context]] — Memory management approach
- [[attention-manipulation|Attention Manipulation]] — Behavior control method

## Sources

- [[context-engineering-ai-agents-manus-lessons|AI代理的上下文工程：构建Manus的经验教训]]

## Contradictions / Open Questions

- Scalability to longer task sequences (>50 tool calls)?
- Performance on tasks requiring complex planning?