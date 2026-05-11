---
created: 2026-04-28
updated: 2026-04-28
tags: [source, context-engineering, agents, debugging]
sources: 1
---

# AI Agents Fail on Bad Context, Not Bad Models

## Metadata

- **Author**: Shubham Saboo (Unwind AI)
- **Date**: 2025-10-26
- **URL**: https://www.theunwindai.com/p/ai-agents-fail-on-bad-context-not-bad-models
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/AI Agents Fail on Bad Context, Not Bad Models.md`

## Summary

A practical essay arguing that agent failures are more often caused by poor context management than model inadequacy. Uses concrete examples and token breakdowns to show how context quality degrades over long conversations, and provides actionable cleanup strategies.

## Key Takeaways

- **Signal drowning**: Important instructions get buried under stale logs and irrelevant tool results. By turn 45, an agent's context can be 160K tokens with ~60% noise.
- **Conflicting information**: Old and updated policies coexist in context; the model picks one unpredictably. Removing outdated instructions is critical.
- **Pattern pollution**: Few-shot examples from different problem types mislead the agent. An agent trained on small PR examples will mishandle large refactors.
- **Context quality degrades over time**: early turns = clean context, good decisions; later turns = polluted context, degraded performance.
- **The model upgrade trap**: upgrading from Claude Sonnet 4 to Opus 4 gives ~15% reasoning improvement at significant cost. Cleaning context (removing 70K irrelevant tokens) gives ~40% task success rate improvement at zero cost.
- **Rules for good context**:
  - Only keep tool results relevant to current subtask
  - One clear source of truth for instructions
  - Summarize past turns; keep only recent active history
  - Similarity ≠ relevance (vector search returns similar docs, not always useful ones)
  - Few-shot examples should match the current problem type
- **Before upgrading a model, audit**: relevance percentage, conflicting instructions, stale tool results, example-problem match, conversation history cleanup.

## Entities Mentioned

- Shubham Saboo — author

## Concepts Mentioned

- [[context-engineering]] — curating what the model sees
- Signal Drowning — important info buried in noise
- Pattern Pollution — wrong examples teaching wrong behavior
- Phantom Errors — bugs imagined due to lost/missing context
- [[context-engineering|Context Degradation]] — quality decline over long conversations

## Raw Notes

- Example token breakdown at turn 50: system prompt 2K + tool results 85K + conversation 40K + retrieved docs 25K + few-shot 8K = 160K total.
- Before cleanup: 160K tokens, 30% signal, 41% success. After: 45K tokens, 90% signal, 73% success — same model.

## Questions / Follow-ups

- What automated context compression/summarization techniques work best in practice?
- How do different models handle conflicting instructions — is there a consistent "recency bias"?
