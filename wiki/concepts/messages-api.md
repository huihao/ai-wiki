---
created: 2026-04-28
updated: 2026-04-28
tags: [api, direct-access, llm]
---

# Messages API

## Definition

A low-level API surface providing direct model access where developers construct every conversation turn, manage state, and implement tool loops explicitly. Offers full control over conversation flow, tool use patterns, and state management.

## Characteristics

- **Direct model access**: Call model API directly for each turn
- **Explicit control**: Developer constructs every message and manages conversation
- **Manual state management**: Developer handles conversation history and context
- **Custom tool loops**: Developer implements tool calling logic and iteration
- **Maximum flexibility**: Full control over conversation patterns and behaviors

## Comparison with Agents API

| Aspect | Messages API | Agents API |
|--------|--------------|------------|
| Control | Developer constructs every turn | Agent autonomously decides turns |
| State | Developer manages conversation state | Platform manages stateful sessions |
| Tool loops | Developer writes tool loop logic | Agent executes tool loops autonomously |
| Abstraction | Low-level, explicit control | High-level, managed infrastructure |
| Use case | Custom control flows | Autonomous agent deployment |

## Use Cases

- Custom conversation flows with precise control
- Implementing specific tool calling patterns
- Research and experimentation with conversation structures
- Building custom agent architectures from scratch
- Applications requiring explicit state management

## Example (Anthropic Python SDK)

```python
import anthropic
client = anthropic.Anthropic()
message = client.messages.create(
    model="claude-opus-4-7",
    max_tokens=1024,
    messages=[{
        "role": "user",
        "content": "Hello, Claude"
    }]
)
```

## Provider Example

Anthropic provides Messages API alongside Agents API, offering both low-level control and high-level abstraction for different development needs.

## Benefits

- Full control over conversation structure
- Explicit state management for debugging
- Custom tool loop implementations
- Research flexibility
- Understanding model behavior directly

## Related Concepts

- [[agents-api]]
- [[api-integration]]
- [[tool-use]]
- [[context-window]]
- [[anthropic-api]]

## Sources

- [[anthropic-api-documentation]]