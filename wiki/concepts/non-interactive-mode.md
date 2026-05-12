---
tags: [concept]
sources: [[best-practices-claude-code]]
related_concepts: [[auto-mode]], [[ci-cd]]
---

# Non-Interactive Mode

A Claude Code operating mode invoked with the `-p` flag that runs Claude without an interactive session, suitable for CI pipelines, pre-commit hooks, or automated workflows.

## Overview

Non-interactive mode decouples Claude Code from the terminal REPL, allowing it to be embedded in scripts, pipelines, and automated systems. The model receives a single prompt, executes autonomously, and produces output in a chosen format before exiting. There is no opportunity for the user to intervene mid-run -- the session is fully self-contained.

## Output Formats

| Format | Flag | Description |
|---|---|---|
| Plain text | *(default)* | Human-readable output printed to stdout. |
| JSON | `--output-format json` | Structured JSON containing the full result, suitable for downstream parsing. |
| Streaming JSON | `--output-format stream-json` | NDJSON stream emitted as the model works, enabling real-time monitoring of progress. |

## Example Usage

```bash
# Simple one-shot query
claude -p "Explain what this project does"

# JSON output for scripting
claude -p "List all TODO comments" --output-format json

# Streaming JSON for progress monitoring
claude -p "Refactor the auth module" --output-format stream-json
```

## Integration Patterns

- **Pre-commit hooks**: Run `claude -p` to auto-review staged changes before commit.
- **CI pipelines**: Use non-interactive mode to run automated code reviews, lint fixes, or test generation.
- **Data pipelines**: Pipe streaming JSON into processing scripts for logging, aggregation, or alerting.
- **Scheduled tasks**: Combine with cron or job schedulers for periodic repository maintenance.

## Interaction with Permission Modes

Non-interactive mode pairs naturally with [[auto-mode]] (`--permission-mode auto`) to avoid stalling on permission prompts. Without a permission mode that allows autonomous execution, non-interactive runs may hang waiting for approval.

## Limitations

- No mid-run intervention; all decisions must be encoded in the prompt and configuration.
- Requires careful prompt engineering to handle edge cases that would normally be resolved through conversation.
- Output may be large for complex tasks -- use JSON format for structured extraction.
