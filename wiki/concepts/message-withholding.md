---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Message Withholding

## Definition

Message withholding is a harness engineering pattern where intermediate errors and recovery attempts are suppressed from external consumers during error recovery loops, ensuring that only the final successful result (or an exhausted-recovery error) is surfaced to the user.

## Key Aspects

- Claude Code's implementation withholds error messages during output limit recovery and model downgrade attempts
- Without message withholding, desktop clients would terminate on seeing intermediate errors during the recovery process
- The pattern enables multi-step recovery (e.g., silent upgrade from 8K to 64K output, then up to 3 continuation rounds) without alarming the user
- Part of the broader principle: "don't expose errors prematurely" -- one of six core harness engineering principles
- Complements circuit breakers by preventing error cascades from reaching consumers before recovery is exhausted
- The pattern applies to any agent system with automated recovery: hide the struggle, show only the result

## Related Concepts

- [[merchants-of-complexity]]

## Sources

- [[harness-engineering-claude-code]]
- [[index]]
