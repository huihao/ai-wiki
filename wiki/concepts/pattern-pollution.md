---
type: "concept"
tags: [agent-failure, context-engineering, few-shot-learning]
---

# Pattern Pollution

A context engineering failure mode where few-shot examples teach agents inappropriate patterns that don't generalize to the current task type, leading to incorrect behaviors.

## Mechanism

### The Problem

1. Agent trained with few-shot examples for specific scenario
2. New task has different structure/scale
3. Agent mimics pattern from examples, not reasoning
4. Applies wrong approach to new problem

### Example Case

Code review agent:
- **Examples**: Small PRs → fetch file, analyze carefully, give feedback
- **Real task**: 87-file massive refactor
- **Agent behavior**: Analyzes each file individually
- **Failure**: By file 67, context fills, early files truncated
- **Result**: Phantom errors (bugs imagined due to missing context)

For massive refactors, correct approach is scope-first: check size, understand intent, sample key files, give high-level feedback.

## Why It Happens

LLMs are excellent mimics. They follow the **pattern** shown in examples, not the underlying reasoning principle. Examples that work for one scenario teach wrong behavior for another.

## Prevention Strategies

1. **Match examples to problem type**
   - Small fixes → small fix examples
   - Massive refactors → scope-first examples
   
2. **Include reasoning in examples**
   - Show why approach chosen
   - Demonstrate problem-type recognition
   
3. **Use diverse example set**
   - Cover different scales and structures
   - Show when to change strategy

4. **Meta-examples**
   - Include examples of recognizing task type
   - Teach strategy selection, not just execution

## Detection Signs

- Agent doing same procedure despite vastly different task scale
- Context filling prematurely with repetitive actions
- Agent not checking scope before diving into detailed work
- Phantom errors from lost early context

## Related Concepts

- [[context-engineering]]
- [[few-shot-learning]]
- [[signal-drowning]]
- [[ai-agents-fail-bad-context]]

## Key Insight

Few-shot examples are powerful teaching tools, but they teach **behavior patterns**, not abstract principles. When examples mismatch the problem type, agents copy wrong approaches.

**"While good examples guide the model, wrong examples mislead it."**