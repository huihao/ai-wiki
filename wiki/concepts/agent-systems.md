---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, infrastructure]
sources: 3
---

# Agent Systems

## Definition
Agent systems are AI architectures that combine large language models with tool use, filesystem access, and context engineering to accomplish complex multi-step tasks autonomously, as exemplified by platforms like Manus.

## Key Aspects
- **Context engineering over fine-tuning**: Manus chose in-context learning over end-to-end agent training because it enables hours-long iteration cycles versus weeks-long training cycles, keeping the product orthogonal to model improvements.
- **KV cache optimization**: Agents have highly skewed prefill-to-decode ratios (~100:1); KV cache reduces costs up to 10x (e.g., Claude Sonnet cached at $0.30/M tokens vs. uncached at $3/M).
- **Filesystem as external memory**: 128K context is often insufficient for real agents; the filesystem serves as unbounded, persistent, directly manipulable memory with reversible compression.
- **Action space masking**: Rather than dynamically adding/removing tools (which breaks KV cache and confuses models), agents mask available actions via logit constraints while keeping all tool definitions in context.
- **Attention manipulation**: Updating a `todo.md` file throughout a task pushes global goals into the model's recent attention window, avoiding "lost in the middle" without architecture changes.
- **Error retention**: Keeping error traces in context provides valuable correction signals; removing them loses learning signal.

## Related Concepts
- [[agent-loop]]
- [[agentic-systems]]
- [[agent-workflows]]
- [[context-bloat]]

## Sources
- [[context-engineering-ai-agents-manus-lessons]]
- [[kv-cache]]
- [[manus]]
