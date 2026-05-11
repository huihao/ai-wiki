---
type: "concept"
tags: [agent-failure, context-engineering, llm]
---

# Signal Drowning

A context engineering failure mode where critical instructions or information become buried in a sea of irrelevant tokens, causing agents to miss or ignore important guidance.

## Mechanism

### The Problem

1. Early conversation contains crucial instruction
2. Later turns accumulate massive logs, API responses, debugging output
3. Instruction still present in context but surrounded by noise
4. Agent sees instruction but doesn't act on it

### Example Case

Database migration agent at turn 45:
- Early instruction: "Check deleted_at and skip soft-deleted records"
- Context filled with: schema logs, batch outputs, debugging traces
- Result: Processes 127 soft-deleted records anyway
- Field name "deleted_at" appeared everywhere, diluting meaning

## Token Impact

```
Context: 195,000 tokens
Signal: Buried in 60% irrelevant tool results
Agent: Misses specific instruction despite presence

After cleanup:
Context: 12,000 tokens
Signal: 90% relevant
Agent: Follows instruction correctly
```

## Causes

- Keeping all tool results from completed work
- Logging verbose batch operations
- Preserving debugging output after fixes
- Not summarizing old exploration phases

## Prevention Strategies

1. **Clear completed work**: Remove logs from finished subtasks
2. **Summarize exploration**: Replace schema logs with concise summary
3. **Filter tool outputs**: Keep only latest, relevant results
4. **Progressive disclosure**: Load context as needed, not upfront

## Related Concepts

- [[context-engineering]]
- [[context-window]]
- [[pattern-pollution]]
- [[ai-agents-fail-bad-context]]

## Key Insight

An instruction's presence in context ≠ the agent acting on it. When critical information competes with mountains of stale logs, the model sees it but misses its significance.

**"Clean the desk before hiring a smarter engineer."**