---
tags: [concept]
sources: [[best-practices-claude-code]]
related_concepts: [[sandbox-execution]], [[guardrails]], [[agent-security]]
---

# Auto Mode

A Claude Code permission mode where a classifier model reviews commands before execution, blocking scope escalation, unknown infrastructure, and hostile-content-driven actions while allowing routine work to proceed without user prompts. Reduces approval interruptions while maintaining safety.

## Overview

Auto Mode sits between the fully restrictive default permission mode and the permissive `dangerously-skip-permissions` flag. A lightweight classifier evaluates each proposed tool call in context and decides whether it falls within the boundaries of the current task. Routine file edits, code searches, and standard shell commands pass through silently. Actions that could escalate scope -- such as writing outside the project root, invoking unfamiliar infrastructure commands, or executing patterns consistent with prompt-injection payloads -- are blocked without ever reaching the user.

## Behavior Details

- **Classifier gating**: Every tool invocation is evaluated by a secondary model that decides allow or block before execution.
- **Scope escalation blocking**: Attempts to write to paths outside the project, modify system files, or access credentials are rejected.
- **Hostile-content detection**: Commands constructed from adversarial user-supplied text (e.g., in a review workflow) are scrutinized and blocked when they match hostile patterns.
- **Non-interactive runs** (`-p` flag): If the classifier repeatedly blocks actions in a non-interactive session, auto mode aborts rather than looping indefinitely.

## Usage

```bash
claude --permission-mode auto -p "fix all lint errors"
```

## When to Use Auto Mode

- Automated CI pipelines where per-command approval is impractical.
- Long-running interactive sessions where constant prompts disrupt flow.
- Shared or unattended environments where full permission skipping is too risky.

## Limitations

- The classifier is heuristic; it may occasionally block legitimate but unusual commands or allow borderline ones.
- It does not replace proper sandboxing for fully untrusted workloads.
- For maximum safety in hostile-input scenarios, combine with [[sandbox-execution]].
