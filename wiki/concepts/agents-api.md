---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, api, infrastructure]
---

# Agents API

## Definition

A high-level API surface for deploying and managing autonomous AI agents in stateful sessions with persistent event history. Unlike direct model access APIs (Messages API), the Agents API provides fully managed infrastructure where the agent system handles conversation state, tool loops, and autonomous decision-making.

## Characteristics

- **Stateful sessions**: Persistent state across multiple agent actions
- **Event history**: Complete log of agent decisions and actions
- **Managed infrastructure**: Platform handles execution, state management, tool orchestration
- **Autonomous behavior**: Agent makes decisions about tool use and action sequencing
- **Session-based**: Actions occur within bounded session contexts

## Comparison with Messages API

| Aspect | Messages API | Agents API |
|--------|--------------|------------|
| Control | Developer constructs every turn | Agent autonomously decides turns |
| State | Developer manages conversation state | Platform manages stateful sessions |
| Tool loops | Developer writes tool loop logic | Agent executes tool loops autonomously |
| Abstraction | Low-level, explicit control | High-level, managed infrastructure |
| Use case | Custom control flows | Autonomous agent deployment |

## Use Cases

- Autonomous task execution
- Multi-step workflows without human intervention
- Persistent agent behaviors across sessions
- Complex tool orchestration
- Agent-based systems requiring state management

## Provider Example

Anthropic provides both Messages API (direct model access) and Agents API (managed agent infrastructure), reflecting dual approaches to LLM integration.

## Benefits

- Reduced development complexity (managed infrastructure)
- Built-in state management and persistence
- Autonomous execution of complex workflows
- Event history for debugging and auditing
- Production-ready agent deployment

## Related Concepts

- [[messages-api]]
- [[agents]]
- [[agent-infrastructure]]
- [[stateful-sessions]]
- [[anthropic-api]]

## Sources

- [[anthropic-api-documentation]]