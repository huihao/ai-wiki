---
title: "Workflow vs Agent"
created: "2026-04-28"
tags: [agent, design, workflows]
---

# Workflow vs Agent

## Definition

Distinction between preset execution paths (workflows) and LLM-driven dynamic execution (agents).

## Key Quote

"The more agentic an application is, the more an LLM decides the control flow of the application." - Harrison Chase

## Workflows

### Definition

Preset, predetermined execution paths.

**Characteristics**:
- Fixed sequence
- Hardcoded logic
- Programmed branches
- Human-defined flow

**Example**:
```
Step 1: Get user input
Step 2: Process with LLM
Step 3: Format output
Step 4: Send response
```

### Control Flow

**Decision Maker**: Human developer.

**Flow Control**: Code logic, hardcoded.

**Flexibility**: Low (preset only).

### Advantages

- Predictable behavior
- Easy to debug
- Clear execution path
- Reliable for simple tasks
- Fast execution

### Disadvantages

- Can't handle novel situations
- Limited adaptability
- Rigid responses
- Requires human foresight
- Breaks on edge cases

## Agents

### Definition

LLM-driven, dynamic execution paths.

**Characteristics**:
- Flexible sequence
- LLM logic
- Dynamic branches
- Model-defined flow

**Example**:
```
LLM decides:
  - What steps needed
  - Order of operations
  - When to loop back
  - How to handle errors
```

### Control Flow

**Decision Maker**: LLM.

**Flow Control**: Model decisions.

**Flexibility**: High (adaptive).

### Advantages

- Handles novel situations
- Adapts to context
- Creative solutions
- Self-correcting
- Flexible execution

### Disadvantages

- Less predictable
- Harder to debug
- Potential for loops
- Slower decisions
- Can fail unexpectedly

## Spectrum

Not binary - exists on spectrum:

**Pure Workflow**: 100% preset, 0% LLM decisions.

**Hybrid**: Mix of preset and LLM decisions.

**Pure Agent**: 0% preset, 100% LLM decisions.

Most applications are hybrid.

## Examples

### Workflow Example

**Customer Support Script**:
1. Receive ticket
2. Classify (preset categories)
3. Route to team (preset rules)
4. Send template response

No LLM decisions on flow.

### Agent Example

**Devin Coding Agent**:
LLM decides:
- Which files to read
- What code to write
- Which tests to run
- How to fix errors
- When to commit

Full LLM control flow.

### Hybrid Example

**Windsurf IDE**:
- Preset: Monitor file changes (workflow)
- Agent: Decide edits (LLM)
- Preset: Format code (workflow)
- Agent: Choose features (LLM)

Mix of both.

## Bitter Lesson Perspective

**Rahul (Ramp)**: Workflows get you far short-term but often get steamrolled by next intelligence gain.

**Insight**: Betting on clever workflows loses when:
- Next model is 10x smarter
- Workflow complexity becomes obsolete
- Intelligence solves what workflows hard-coded

**Strategy**: Bet on intelligence gains, not workflow cleverness.

## When to Use Workflows

- Simple, predictable tasks
- High reliability required
- Low complexity operations
- Known edge cases handled
- Performance critical

## When to Use Agents

- Complex, novel tasks
- High adaptability needed
- Unknown edge cases
- Creative problem-solving
- Multi-step operations

## Trade-offs

| Aspect | Workflow | Agent |
|--------|----------|-------|
| Predictability | High | Low |
| Flexibility | Low | High |
| Debugging | Easy | Hard |
| Novelty handling | Poor | Good |
| Performance | Fast | Slower |
| Complexity | Low | High |

## Hybrid Design

### Preset Wrappers, Agent Core

**Pattern**:
- Preset: Setup, cleanup, safety checks
- Agent: Core decision-making
- Preset: Output validation, formatting

**Benefits**:
- Safety and reliability (preset)
- Flexibility and intelligence (agent)
- Best of both worlds

### Example Architecture

```
1. Preset: Input validation (workflow)
2. Agent: Task execution (LLM decisions)
3. Preset: Error handling (workflow)
4. Agent: Recovery strategy (LLM)
5. Preset: Output formatting (workflow)
```

## Stutter-Step Agents

**Definition**: Agents asking confirmation for every action.

**Problem**:
- Disrupts flow
- Frustrating UX
- Not truly autonomous
- Fails practically

**Quote**: "Stutter-step agents get old fast."

**Solution**: Clever exemptions from approval (Windsurf approach).

## Control Flow in IMPACT

**C = Control Flow** in IMPACT framework:
- Distinguishes agents from workflows
- LLM-driven vs preset
- Dynamic vs static
- Adaptive vs rigid

## Related Concepts

- [[impact-framework|IMPACT Framework]] (C = Control Flow)
- [[stutter-step-agents|Stutter-Step Agents]]
- [[agent-planning|Agent Planning]]
- [[delegated-authority|Delegated Authority]]

## Sources

- [[agent-engineering|Agent Engineering]]