---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Completion Sigil

## Definition

A completion sigil is a special marker text that an AI agent outputs to signal that it has finished its assigned task. In the Ralph autonomous coding loop, the completion sigil `<promise>COMPLETE</promise>` is used to let the automation script detect when the PRD has been fully implemented, triggering the end of the loop.

## Key Aspects

- **Signal Text**: A unique string (e.g., `<promise>COMPLETE</promise>`) that is unlikely to appear in normal output
- **Loop Termination**: The automation script watches for this text to know when to stop running iterations
- **PRD Completion**: Indicates the agent has implemented all tasks described in the product requirements document
- **Automation Enabler**: Without a reliable completion signal, autonomous loops cannot safely terminate
- **Design Choice**: Must be distinctive enough to avoid false positives during normal agent output
- **Part of Ralph Protocol**: Combined with progress file updates and git commits per iteration

## Related Concepts

- [[ralph]]
- [[compound-loop]]
- [[code-reasoning]]

## Sources

- [[getting-started-with-ralph]]
