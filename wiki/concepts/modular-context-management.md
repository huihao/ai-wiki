---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Modular Context Management

## Definition

Modular context management is the practice of dividing AI agent context into focused, task-relevant slices rather than feeding monolithic prompts. It addresses the "curse of instructions" -- the phenomenon where models degrade in performance when asked to satisfy too many requirements simultaneously.

## Key Aspects

- The curse of instructions: research shows that as the number of simultaneous directives increases, model compliance with any individual directive decreases
- The solution is decomposing complex requirements into sequential, simple instructions -- each task receives only the context it needs
- Addy Osmani's framework recommends dividing specs into phases/components with an extended TOC that summarizes each section
- Hierarchical summarization creates an index where each section is condensed to key points with references to full details
- Subagents can be assigned different context domains (e.g., Database Designer, API Coder) each receiving only their relevant spec section
- For large specs, RAG (retrieval-augmented generation) can dynamically retrieve relevant sections rather than including everything
- The approach is central to spec-driven development workflows like GitHub Spec Kit (Specify, Plan, Tasks, Implement)

## Related Concepts

- [[memory-bank]]
- [[model-driven-development]]

## Sources

- [[how-to-write-a-good-spec-for-ai-agents]]
- [[curse-of-instructions]]
