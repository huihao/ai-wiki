---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 2
---

# Attention Manipulation

## Definition
Attention manipulation is the practice of strategically structuring an agent's context to guide the model's attention toward relevant information and away from noise. Techniques include stable prompt prefixes, append-only context, deliberate rephrasing of goals, and file-system-based memory, all designed to optimize KV cache usage and improve agent reasoning quality.

## Key Aspects
- Manus team rebuilt their agent framework four times through "Stochastic Graduate Student Descent," arriving at KV-cache-centric design
- Input:output token ratio for agents is approximately 100:1, making prefill cost the dominant expense
- Cache costs differ 10x between cached ($0.30/M tokens) and uncached ($3/M tokens) with Claude Sonnet
- Key technique: mask actions rather than removing them to preserve KV cache validity
- Rephrasing goals through todo.md updates shifts attention toward recent context (recency bias exploitation)
- File system serves as unlimited, persistent, directly manipulable external memory for agents
- Avoid few-shot learning traps by introducing controlled randomness in context

## Related Concepts
- [[attention-sink]]
- [[cache-economics]]

## Sources
- [[context-engineering-ai-agents-manus-lessons]]
- [[manus]]
