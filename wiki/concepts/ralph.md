---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Ralph Technique

## Definition

Ralph is a technique for running AI coding agents in autonomous loops. The agent repeatedly executes the same prompt, picking tasks from a PRD, implementing them one at a time, and committing after each feature, while tracking progress in a persistent file.

## Key Proponents / Critics

- **Matt Pocock** — Creator and advocate of Ralph technique (ralph.md credits Pocock; ralph-loop.md credits Geoffrey Huntley)
- [[geoffrey-huntley]] — Ralph Wiggum Technique (attributed as creator in some sources)
- [[ai-hero|AI Hero]] — Platform promoting Ralph
- **Adopters**: [[anthropic]] — official Claude Code plugin
- **Adopters**: [[openai|OpenAI Codex team]] — referenced in Harness Engineering article

## Core Mechanism

The Ralph loop operates through:

1. **PRD as Task Source**: Product Requirements Document defines all tasks
2. **Progress Tracking**: progress.txt file records completed work
3. **Single Task Execution**: Agent does one task per iteration
4. **Autonomous Task Selection**: Agent chooses highest-priority incomplete task
5. **Commit After Task**: Each completion triggers a commit
6. **Iteration Limit**: Cap prevents runaway costs
7. **Completion Detection**: Agent outputs sigil when done

## Script Structure

### ralph-once.sh (Human-in-Loop)

Single iteration for observation:
- `--permission-mode acceptEdits` for automatic file editing
- `@PRD.md @progress.txt` for context loading
- `ONLY DO ONE TASK` instruction

### afk-ralph.sh (Autonomous)

Looped execution for AFK operation:
- Iteration count parameter
- Print mode (`-p`) for non-interactive output
- Completion sigil detection (`<promise>COMPLETE</promise>`)
- Docker sandbox for isolation

## Customization Patterns

| Customization | What It Does |
|---------------|-------------|
| Task source | GitHub Issues, Linear, beads instead of local PRD |
| Output mode | Branch + PR instead of commit to main |
| Loop type | Test coverage, linting, duplication removal |

## Related Concepts

- [[autonomous-agents|Autonomous Agents]] — Core mechanism
- [[prd|Product Requirements Document]] — Task source
- [[progress-tracking|Progress Tracking]] — State persistence
- [[iteration-limit|Iteration Limit]] — Safety mechanism
- [[completion-sigil|Completion Sigil]] — Termination marker

## Sources

- [[getting-started-with-ralph|Getting Started With Ralph]]
- [[agentic-engineering-engineering-revolution]] — production usage with 10-step workflow
- [[what-is-ralph-loop-bash-coding-pattern]] — comprehensive explanation of the pattern, components, and best practices

## Evolution

Ralph emerged from need to run agents autonomously while maintaining control. Key insight from Matt Pocock: "Ralph is just a loop. That simplicity makes it infinitely customizable."

The technique gained popularity for handling backlog triaging, coverage improvement, and repetitive automation tasks. Common use: run overnight, review commits in morning.

## Advantages

- Simple to implement (bash scripts)
- Works with any coding agent
- Fully customizable
- Observable through git history
- Scales task processing

## Limitations

- Requires well-structured PRD
- No inter-task dependency handling
- Can fail on ambiguous tasks
- Needs iteration cap for safety
- Requires human review of outputs
