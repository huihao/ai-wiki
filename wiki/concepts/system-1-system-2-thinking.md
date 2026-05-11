---
created: 2026-04-29
updated: 2026-05-09
tags: [cognition, infrastructure]
sources: 2
---

# System 1 / System 2 Thinking

## Definition

System 1 and System 2 thinking is a cognitive science framework from Daniel Kahneman that distinguishes between fast, automatic, intuitive processing (System 1) and slow, deliberate, effortful reasoning (System 2). In the context of AI and LLMs, this framework maps directly to the distinction between standard fast generation and reasoning models that generate explicit intermediate steps before producing answers.

## Key Aspects

- System 1 corresponds to standard LLM generation: fast, pattern-matching-based, single forward pass per token, analogous to intuitive human thinking
- System 2 corresponds to reasoning models (o1, o3, Claude thinking, DeepSeek R1): slower, generates chain-of-thought traces, performs deliberate multi-step computation before answering
- Reasoning models increase test-time compute by spending more tokens on intermediate reasoning, analogous to humans "thinking harder"
- Hybrid models (IBM Granite 3.2, Claude 3.7 Sonnet) offer toggleable modes, recognizing that not all tasks benefit from System 2 effort
- Overthinking is the failure mode where System 2 reasoning consumes excessive tokens (1,953% more on average) without improving answer quality
- Apple research suggests reasoning models may not develop generalizable problem-solving beyond a complexity threshold, questioning whether they truly achieve System 2 reasoning
- Anthropic found reasoning models do not faithfully explain their rationale, raising concerns that chain-of-thought traces are performance, not genuine reasoning

## Related Concepts

- [[reasoning-llms]]
- [[test-time-compute]]
- [[chain-of-thought]]

## Sources

- [[what-is-a-reasoning-model]]
- [[arena-leaderboard-compare-benchmark-frontier-ai-models]]
