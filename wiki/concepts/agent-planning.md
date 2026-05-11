---
title: "Agent Planning"
created: "2026-04-28"
tags: [agent, multi-step, planning]
---

# Agent Planning

## Definition

Agent capability to decompose multi-step tasks into executable plans and dynamically adjust plans based on outcomes.

## Why Planning Matters

Agents must handle:
- Complex, multi-step tasks
- Long-running operations
- Open-ended problems
- Real-world complexity

Single predictions insufficient - need structured planning.

## Planning Components

### Task Decomposition

Break complex tasks into steps:
- Identify major phases
- Define intermediate goals
- Sequence operations
- Allocate resources

### Dynamic Adjustment

Modify plans based on:
- Execution results
- Error feedback
- Changed conditions
- New information

### Plan Representation

**Editable Plans** (SOTA approach):
- Plans as modifiable objects
- Devin/Manus style
- Can revise during execution
- Human-readable format

**Fixed Plans**:
- Predefined steps
- No modification
- Rigid execution
- Less flexible

## Quote

"An AI system component that performs non-trivial, multi-step operations that previously would have required a human." - Daniel Miessler

"An AI system that's capable of carrying out and completing long running, open ended tasks in the real world." - Dan Jeffries

## Implementation Approaches

### Hierarchical Planning

High-level → Medium-level → Low-level:
1. Abstract task breakdown
2. Concrete step sequences
3. Specific actions

Example:
```
High: "Build web app"
Med: "Setup backend, frontend, database"
Low: "Create files, write code, test"
```

### Goal-Based Planning

Work backward from goal:
1. Define end state
2. Identify prerequisites
3. Plan backward steps
4. Execute forward

### Opportunistic Planning

Adjust dynamically:
1. Start with rough plan
2. Execute some steps
3. Observe results
4. Revise plan
5. Continue

## Planning Models

### o1 (OpenAI)

Reasoning models enable:
- Multi-step thinking
- Error reflection
- Plan revision
- Self-correction

### Claude 3.5

Excellent planning for:
- Coding tasks
- Multi-file edits
- Test sequences
- Git operations

### Devin

Planning architecture:
- Editable plan objects
- Dynamic revision
- Human feedback integration
- Multi-agent coordination

## Planning Failures

Without planning:
- Single-step only
- No task decomposition
- Can't handle complexity
- Immediate action only
- No reflection

## Agent Examples

### Devin

**Task**: "Fix bug in authentication"

**Plan**:
1. Locate auth code
2. Identify bug location
3. Analyze bug cause
4. Implement fix
5. Test fix
6. Commit changes

**Adjustment**: If tests fail, revise fix.

### Windsurf

**Task**: "Add feature to app"

**Plan**:
1. Understand current code
2. Design feature integration
3. Write implementation
4. Update dependencies
5. Verify functionality

**Adjustment**: Dynamic based on code context.

## Planning vs Memory

**Planning**: Future actions, task structure
**Memory**: Past context, history

Both needed:
- Memory informs planning
- Planning uses memory
- Planning updates memory

## Planning Challenges

### Uncertainty

Unknown outcomes:
- Step may fail
- Conditions change
- Need fallback plans

### Complexity

Too many steps:
- Plan explosion
- Computation limits
- Need abstraction

### Dependencies

Interdependent steps:
- Ordering constraints
- Parallel opportunities
- Resource conflicts

## Best Practices

### 1. Start Simple

Begin with clear, small plans:
- Limited steps
- Clear goals
- Easy verification

### 2. Make Editable

Plans should be modifiable:
- Not hardcoded
- Can revise mid-execution
- Human-readable

### 3. Check Progress

Monitor execution:
- Compare actual vs planned
- Detect deviations
- Adjust early

### 4. Allow Failure

Plans may fail:
- Fallback strategies
- Alternative paths
- Recovery mechanisms

## Related Concepts

- [[impact-framework|IMPACT Framework]] (P = Planning)
- [[agent-memory|Agent Memory]]
- [[agent-trust|Agent Trust]]
- [[multi-step-planning|Multi-Step Planning]]
- [[editable-plans|Editable Plans]]
- [[task-decomposition|Task Decomposition]]

## Models with Planning

- OpenAI o1 (reasoning, self-reflection)
- Claude 3.5 (coding planning)
- Devin (editable plan architecture)
- Manus (plan revision)

## Sources

- [[agent-engineering|Agent Engineering]]