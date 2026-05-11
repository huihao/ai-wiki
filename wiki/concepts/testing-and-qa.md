---
created: 2026-04-29
updated: 2026-05-09
tags: [agentic, testing]
sources: 1
---

# Testing and QA

## Definition

Testing and QA (Quality Assurance) in the context of AI coding agents refers to the systematic practices and patterns for verifying that code generated or modified by AI agents meets quality standards, behaves correctly, and does not introduce regressions. As AI agents take on more development tasks, robust testing and QA practices become the primary mechanism for maintaining code quality and catching agent-introduced errors.

## Key Aspects

- **Agent verification loop**: The core pattern — agents generate code, run tests, analyze results, and iterate until tests pass. This creates an autonomous quality loop where tests serve as the objective arbiter of correctness.
- **Human-in-the-loop QA**: Despite agent autonomy, critical code changes benefit from human review. Effective patterns include having agents summarize what they changed and why, then having humans review before merging.
- **Test generation by agents**: Coding agents can generate test cases alongside implementation code, using their understanding of the requirements to create meaningful test scenarios. This both validates the implementation and creates regression safety nets.
- **Regression detection**: When agents modify existing code, automated tests catch unintended side effects. Without tests, agent modifications risk silently breaking functionality that the agent was not aware of.
- **Code review patterns**: Agents can assist in code review by analyzing diffs, identifying potential issues, suggesting improvements, and verifying that changes match stated intentions — augmenting human reviewers rather than replacing them.
- **QA in agentic engineering**: As patterns for working with coding agents mature, testing and QA emerge as essential practices rather than optional extras — the quality of agent output is directly proportional to the rigor of the verification environment.

## Related Concepts

- [[testing]]
- [[coding-agent]]
- [[code-review]]
- [[ci-cd]]

## Sources

- [[simon-willison-weblog-agentic-patterns]]
