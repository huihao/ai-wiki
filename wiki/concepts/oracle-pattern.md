---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, reasoning]
sources: 1
---

# Oracle Pattern

## Definition

Wiring a non-agentic "oracle" LLM (GPT, reasoning-focused) as a tool into an agentic LLM (Sonnet, action-focused). The agentic model can function-call the oracle for guidance, work checking, and research/planning.

## Use Cases

- High-level reasoning: oracle thinks through strategy
- Work progress checking: oracle validates incremental squirrel work
- Research/planning: oracle synthesizes information before action
- Counterbalance to agentic impulsiveness

## Architecture

- Agentic LLM (Sonnet): main loop, tool calling, incremental execution
- Oracle LLM (GPT): registered as tool, callable for reasoning
- Function call: Sonnet decides when to consult oracle

## Example

Amp's Oracle:
- GPT wired as tool into Claude Sonnet
- Sonnet can function-call GPT for guidance
- Combines action speed with reasoning depth

## Related Concepts

- [[agentic-models]] — the base layer that calls oracle
- [[coding-agent]] — primary architecture using this pattern
- [[harness-engineering]] — oracle is a tool in the harness

## Sources

- [[how-to-build-coding-agent-workshop]] — Amp's Oracle example

## Benefits

- No need to choose between action and reasoning
- Agentic model remains fast and incremental
- Oracle provides sanity-checks and strategic guidance
- Modular: swap oracle or agentic model independently