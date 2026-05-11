---
url: "https://www.latent.space/p/agent"
title: "Agent Engineering"
author: "Latent Space"
date: "2025-03-24"
description: "Defining Agents, Why now, and why Agents are the biggest opportunity for AIEs"
---

# Agent Engineering

> Original link: [https://www.latent.space/p/agent](https://www.latent.space/p/agent)

---

## Summary

Framework for defining and building AI agents using the IMPACT model: Intent, Memory, Planning, Authority, Control flow, and Trust. Addresses why agents are the biggest opportunity for AI Engineers and provides practical guidance.

## Key Framework: IMPACT

Six elements of agent engineering (ranked by importance):

### 1. Intent (Encoded Intent)

Goal-oriented behavior with:
- Multimodal I/O (voice, text, etc.)
- Goals encoded in prompts
- Evals for verification
- Environments for execution

"An agent is a system that can pursue a goal-oriented behavior, adapt along the way to achieve its goals." - Chisom Rutherford

### 2. Memory

Agent state and context preservation:
- Short-term: Current context
- Long-term: Past experiences, learned knowledge
- Episode memory: Discrete interaction histories

Missing from OpenAI's TRIM framework but essential for real agents.

### 3. Planning

Multi-step planning capability:
- Editable plans (Devin/Manus approach)
- Dynamic plan adjustment
- Task decomposition

"An AI system that's capable of carrying out and completing long running, open ended tasks in the real world." - Dan Jeffries

### 4. Authority (Delegated Authority)

Trust and autonomy:
- Permission to act on behalf of user
- Trust but verify for read-heavy workflows
- Enterprise needs more sophisticated trust

"An agent is trusted to act on behalf of and in the interest of those being represented. If there's no trust there is no agent." - Roman Pshichenko

### 5. Control Flow (LLM-Driven)

Core distinction from workflows:
- LLMs decide execution path
- Preset workflows vs autonomous agents
- More agentic = more LLM control

"The more agentic an application is, the more an LLM decides the control flow of the application." - Harrison Chase

### 6. Trust

Foundation for agent autonomy:
- Stutter-step agents (ask confirmation each step) get old fast
- Need clever ways to exempt actions from approval
- Windsurf example of meaningful autonomy

## Agent Definitions Landscape

### OpenAI TRIM Framework

Agent = Tools + Runtime + Instructions + Memory

Missing: Planning, Memory emphasis, Authority

### Lilian Weng Definition

Agent = LLM + Memory + Planning Skills + Tool Use

Includes planning and memory but takes runtime for granted.

### Why Definitions Matter

Different starting points lead to:
- Overemphasizing own perspective
- Trivializing others' perspectives
- Impossible debates (bar set low or high)

Need descriptive (spanning all definitions) not prescriptive approach.

## Agents Timeline

### Fall 2024: Strawberry Season

OpenAI reasoning models (o1):
- 100% reliable structured output
- Reasoning in API
- Reignited agent discussion

### June-Nov 2024: Claude 3.5

Doubled Anthropic market share:
- Best coding model
- Powers Bolt, Lindy, Windsurf agents
- Practical agent implementations

### ChatGPT Growth

Reacceleration due to reasoning/agent work, tracked closely to model releases.

## Practical Agent Development

### Focus on One Thing

Deep exploration rather than wide:
- "Saying no to a lot of interesting directions"
- Focus on one track but deep dive

### No Vendor Pitches

Draconian rule (inspired by dbt Coalesce):
- Vendors must bring real customers
- Solicit talks outside CFP
- Real lived experiences (Method/OpenPipe, Pfizer/Neo4j)

### Workflows vs Agents

Rahul (Ramp) frames as Bitter Lesson:
- Workflows: Short-term gains
- Next model: Steamrolls clever workflows
- Better to bet on intelligence gains

### Autonomy Balance

Stutter-step agents problematic:
- Windsurf: Clever exemptions from approval
- Meaningful autonomy needed
- Trust but verify insufficient for enterprise

## Why Agents Now

### Model Progress

Reasoning models (o1) enable:
- Multi-step planning
- Error correction
- Self-reflection

### Infrastructure Ready

- MCP (Model Context Protocol) standardized
- Tool integration mature
- Runtime systems available

### Practical Examples

- Devin: Autonomous coding
- Windsurf: IDE integration
- Bolt: Web development
- Lindy: Task automation

## Agent Opportunities

### Biggest for AI Engineers

Why agents matter most:
- Higher value than single predictions
- Composed intelligence
- Real-world task completion
- Delegation of authority

### Impact Framework

Use IMPACT for agent design:
- Intent: Define goals clearly
- Memory: Preserve context and history
- Planning: Multi-step task decomposition
- Authority: Delegate with trust
- Control Flow: Let LLM decide path
- Trust: Enable meaningful autonomy

## Related Concepts

- [[agent-engineering|Agent Engineering]]
- [[impact-framework|IMPACT Framework]]
- [[agent-memory|Agent Memory]]
- [[agent-planning|Agent Planning]]
- [[agent-trust|Agent Trust]]
- [[delegated-authority|Delegated Authority]]
- [[stutter-step-agents|Stutter-Step Agents]]
- [[workflow-vs-agent|Workflow vs Agent]]

## Key People

- **swyx**: AI Engineer Summit keynote
- **Simon Willison**: Definition collector
- **Lilian Weng**: Agent = LLM + Memory + Planning + Tools
- **Harrison Chase**: LLM control flow distinction
- **Chisom Rutherford**: Goal-oriented behavior
- **Roman Pshichenko**: Trust foundation
- **Dan Jeffries**: Long-running tasks

## Models Mentioned

- OpenAI o1 (reasoning)
- Claude 3.5 (coding, agents)
- GPT-4 (general)

## Key Takeaways

1. Use IMPACT framework for comprehensive agent design
2. Don't overemphasize your starting point
3. Trust enables meaningful autonomy
4. Balance workflows vs pure agents
5. Bet on intelligence gains over clever workflows