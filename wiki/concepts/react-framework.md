---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# ReAct Framework

## Definition

ReAct Framework is an architecture pattern for AI agents combining Reasoning and Acting in an iterative loop. The agent reasons about the task, acts by executing tools, observes results, and updates its understanding, repeating until task completion. Originally proposed as a reasoning and acting paradigm for LLM agents that interleaves chain-of-thought reasoning with tool use actions.

## Key Proponents / Critics

- AI agent architecture researchers
- [[google|Google]] — Implemented in Gemini-CLI
- [[anthropic|Anthropic]] — Implemented in Claude Code

## Loop Structure

### Main Flow (Gemini-CLI)
```
while (true) {
  // Reasoning: Call model to analyze
  response = geminiClient.sendMessageStream()
  
  // Acting: Execute tool calls
  toolResults = executeToolCall(response.functionCalls)
  
  // Observing: Collect results
  toolResponseParts = collect(toolResults)
  
  // Updating: Feed back to model
  currentMessages = [{ role: 'user', parts: toolResponseParts }]
  
  // Termination: Check if no more tool calls
  if (response.functionCalls.length === 0) break
}
```

### SubAgent Flow
```
while (true) {
  // Termination checks: max_turns, timeout, abort signal
  
  // Reasoning: Call model with specialized system prompt
  response = callModel(objective, history, tools)
  
  // Acting: Execute restricted tool set
  results = processFunctionCalls(response, allowedTools)
  
  // Observing: Check for completion
  if (complete_task_called) return structured_report
  
  // Updating: Feed results as next message
  history.append(results)
}
```

## Benefits

- **Iterative Problem Solving**: Handles complex multi-step tasks
- **Error Recovery**: Can observe failures and adjust approach
- **Transparency**: Reasoning visible in agent thoughts
- **Flexibility**: Works with any tool set

## Related Concepts

- [[coding-agent|AI Coding Agent]] — Primary application domain
- [[subagents|SubAgent]] — Uses isolated ReAct loop
- [[harness-engineering|Harness Engineering]] — Execution infrastructure
- [[tool-registration|Tool Registration]] — Enables Acting phase
- [[intent-recognition|Intent Recognition]] — Precedes ReAct loop

## Related Entities

- [[gemini-cli|Gemini-CLI]] — Implementation example
- [[claude-code|Claude Code]] — Implementation example

## Sources

- [[ai-coding-agent-design|AI Coding 智能体设计]] — Detailed implementation analysis

## Evolution

ReAct framework represents convergence of symbolic AI planning with neural network reasoning. By interleaving thought and action, agents handle tasks too complex for single-pass generation. The pattern has become standard in AI coding agents and general-purpose AI assistants, enabling reliable multi-step execution through iterative refinement.
