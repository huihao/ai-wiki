---
title: "IMPACT Framework"
created: "2026-04-28"
tags: [agent, design, framework]
---

# IMPACT Framework

## Definition

Framework for defining and designing AI agents with six essential elements: Intent, Memory, Planning, Authority, Control flow, and Trust.

## Origin

From swyx's 2025 AI Engineer Summit keynote, providing comprehensive agent definition spanning multiple perspectives.

## The Six Elements

### I - Intent (Encoded Intent)

**Definition**: Goal-oriented behavior encoded in agent instructions.

**Components**:
- Multimodal I/O (voice, text, visual)
- Goals explicitly encoded
- Evals for verification
- Environments for execution

**Quote**: "An agent is a system that can pursue a goal-oriented behavior, adapt along the way to achieve its goals." - Chisom Rutherford

**Importance**: Highest - defines what agent is trying to achieve.

### M - Memory

**Definition**: Preservation of state, context, and past experiences.

**Components**:
- Short-term memory: Current context
- Long-term memory: Learned knowledge
- Episodic memory: Past interaction histories

**Quote**: Missing from OpenAI TRIM but essential for real agent operation.

**Importance**: Critical for multi-step tasks, avoiding repetition, learning from history.

### P - Planning

**Definition**: Multi-step task decomposition and dynamic plan adjustment.

**Components**:
- Editable plans (Devin/Manus approach)
- Task breakdown into steps
- Plan revision based on outcomes

**Quote**: "An AI system that's capable of carrying out and completing long running, open ended tasks in the real world." - Dan Jeffries

**Importance**: Enables complex, multi-step operations beyond single predictions.

### A - Authority (Delegated Authority)

**Definition**: Permission and trust to act on user's behalf.

**Components**:
- User delegation
- Permission scopes
- Action authorization

**Quote**: "An agent is trusted to act on behalf of and in the interest of those being represented. If there's no trust there is no agent." - Roman Pshichenko

**Importance**: Foundation for autonomy - without authority, no meaningful action.

### C - Control Flow (LLM-Driven)

**Definition**: LLMs deciding execution path, distinguishing agents from workflows.

**Components**:
- Dynamic execution paths
- LLM decision points
- Conditional branching

**Quote**: "The more agentic an application is, the more an LLM decides the control flow of the application." - Harrison Chase

**Importance**: Core distinction - workflows are preset, agents decide dynamically.

### T - Trust

**Definition**: Foundation enabling meaningful autonomy without constant confirmation.

**Components**:
- User trust in agent decisions
- Action exemption from approval
- Failure recovery mechanisms

**Importance**: Stutter-step agents (confirm every action) fail practically. Trust enables real autonomy.

## Ranking

Elements ranked by importance (descending):
1. Intent
2. Memory
3. Planning
4. Authority
5. Control Flow
6. Trust

Note: Ranking is approximate, importance varies by use case.

## Contrast with TRIM

### OpenAI TRIM

Agent = **T**ools + **R**untime + **I**nstructions + **M**emory

**Missing from TRIM**:
- Planning (explicit multi-step)
- Memory emphasis (treated as tool-layer)
- Authority (no delegation concept)
- Trust (no autonomy foundation)

**TRIM assumes**:
- Prompts and runtime orchestration
- Memory at tool layer
- No explicit planning

### IMPACT Improvements

More comprehensive:
- Explicit planning
- Memory as core component
- Authority and trust
- Control flow distinction

## Agent Feel

"You can FEEL when an agent forgets one of these 6 things."

Missing elements show:
- No intent: Aimless behavior
- No memory: Repeats mistakes
- No planning: Can't do multi-step
- No authority: Constant confirmation
- No control flow: Rigid workflows
- No trust: Stutter-step behavior

## Application

### Design Checklist

When building agent, ensure:
1. Intent clear and encoded
2. Memory preserved across steps
3. Planning for multi-step tasks
4. Authority delegated appropriately
5. Control flow LLM-driven
6. Trust enabling autonomy

### Evaluation

Test agent against IMPACT:
- Does it have clear goals? (Intent)
- Does it remember context? (Memory)
- Can it plan complex tasks? (Planning)
- Is authority delegated? (Authority)
- Does LLM decide path? (Control)
- Is autonomy meaningful? (Trust)

## Related Frameworks

### Lilian Weng

Agent = LLM + Memory + Planning + Tool Use

**Overlap**:
- Memory ✓
- Planning ✓
- Tools (part of Intent/Authority)

**Missing**:
- Control flow explicit
- Trust foundation

## Practical Examples

### Devin (Coding Agent)

- Intent: Complete coding tasks
- Memory: Codebase context, git history
- Planning: Multi-step implementation
- Authority: Write code, run tests
- Control Flow: LLM decides next steps
- Trust: Autonomous execution

### Windsurf (IDE Agent)

- Intent: Assist coding in IDE
- Memory: Current file, project context
- Planning: Edit sequences
- Authority: Edit files (clever exemptions)
- Control Flow: Dynamic suggestions
- Trust: Exempts actions from approval

## Related Concepts

- [[agent-engineering|Agent Engineering]]
- [[agent-memory|Agent Memory]]
- [[agent-planning|Agent Planning]]
- [[agent-trust|Agent Trust]]
- [[workflow-vs-agent|Workflow vs Agent]]
- [[stutter-step-agents|Stutter-Step Agents]]

## Sources

- [[agent-engineering|Agent Engineering]]