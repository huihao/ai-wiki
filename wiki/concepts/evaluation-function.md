---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, coding]
sources: 1
---

# Evaluation Function

## Definition

An evaluation function is a closed-loop mechanism that measures the quality or correctness of an AI agent's output, enabling the agent (or its operator) to determine whether the result meets specified criteria and to iterate if it does not. In the context of AI-assisted coding, evaluation functions are the critical differentiator between productive and unproductive agent use: tasks where a loop can be closed with an objective evaluation are well-suited for agents, while tasks without clear evaluation criteria require human judgment.

## Key Aspects

- The AI coding loop (define goals → write rules → provide examples → identify edge cases → generate code → run tests → iterate) centers on failing tests as the evaluation function
- "If you can't verify it, you don't own it" — the evaluation function is what makes agent-generated code trustworthy enough to ship
- Good agent tasks share a key property: the loop can be closed with an evaluation function (tests pass/fail, output matches expected format, metrics meet thresholds)
- Without an evaluation function, agent output requires manual human verification, which defeats the purpose of automation and creates "a big pile of code you didn't write"
- In reinforcement learning, the evaluation function (reward signal) drives the learning dynamics; in coding agents, test suites serve the same role
- Evaluation functions should be incremental: test one small piece at a time rather than evaluating the entire system after full generation
- When tests fail, the diagnostic question is: "Which rule was unclear, missing, or contradictory?" — failures illuminate gaps in the specification, not just bugs in the code

## Related Concepts

- [[ai-coding-loop]]
- [[failing-tests]]
- [[incremental-development]]

## Sources

- [[slowness-agent-coding]]
