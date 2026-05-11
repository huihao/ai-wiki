---
created: 2026-04-28
updated: 2026-04-28
tags: [debugging, engineering, methodology]
sources: 1
---

# Debugging Techniques

## Definition

Systematic methods for finding and fixing bugs in software. Effective debugging requires building a correct mental model of program behavior, reproducing the bug reliably, and using appropriate tools (print statements, debuggers) strategically. Contrasts with random guessing or trial-and-error fixes.

## Key Attributes

- **Mental model debugging** — most bugs are wrong assumptions about how code works
- **Reproduce the bug** — find minimal case that triggers the issue
- **Print debugging** — strategic logging to trace execution flow
- **Interactive debuggers** — gdb, IDE debuggers for step-through inspection
- **Rubber duck debugging** — explain problem aloud to find contradictions

## Process

### Mental Model Approach
- Bugs occur where mental model diverges from reality
- First step: identify where your assumptions are wrong
- Read code carefully, trace execution in your head
- Compare expected vs actual behavior at each step

### Reproduction
- Find simplest input that triggers bug
- Eliminate variables: what makes bug appear/disappear?
- Isolate failing component

### Print Debugging
- Add strategic print statements, not random scatter
- Print at decision points, loop boundaries, state changes
- Compare output to mental model expectations

### Debugger Tools
- Step through code line by line
- Inspect variables at each point
- Set breakpoints at suspicious locations
- Use conditional breakpoints for specific cases

## Anti-patterns

- Changing code randomly without understanding
- Adding "fix" that addresses symptom, not cause
- Debugging without reproducing reliably
- Skipping mental model phase

## Related Concepts

- [[problem-solving-framework]] — debugging is Phase 3 troubleshooting
- [[rubber-duck-debugging]] — self-explanation technique
- [[mental-model]] — internal representation of system behavior

## Sources

- [[beejs-guide-learning-computer-science]] — Beej outlines debugging strategies

## Contradictions / Open Questions

- When is print debugging better than interactive debugger?
- How to debug nondeterministic or parallel code?
- What's the role of logging systems vs ad-hoc prints?