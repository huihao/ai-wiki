---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, tool, cli]
---

# Prime CLI

## Metadata

- **Type**: CLI Tool
- **Platform**: Prime Intellect
- **Purpose**: Interact with RL runs in realtime

## Definition

Prime CLI is the command-line interface for Prime Intellect that provides realtime access to RL training runs, rollouts, metrics, and distributions. It enables agents to autonomously monitor experiments and make decisions without human intervention.

## Key Commands

### Run Management
```bash
prime rl list                 # List all runs
prime rl get <run_id>         # Get run details
prime rl run config.toml      # Start new run
```

### Rollout Access
```bash
prime rl rollouts <run_id> --step <step>
prime rl rollouts <run_id> --step <step> --limit 100 --page 1
```

### Metrics
```bash
prime rl metrics <run_id>
prime rl metrics <run_id> --min-step 10 --max-step 50
```

### Distributions
```bash
prime rl distributions <run_id>
prime rl distributions <run_id> --type rewards --step 50
prime rl distributions <run_id> --type advantages --step 50
```

### Progress
```bash
prime rl progress <run_id>    # Available steps for samples/distributions
```

## Agent Integration

- Codex uses Prime CLI to continuously monitor rollouts.
- Run reward test suites against live rollouts.
- Kill runs early when reward function bugs detected.
- Enables autonomous decision-making during RL training.

## Script Integration

Scripts parse Prime CLI output to JSON for RL Studio:
```bash
python scripts/sync_prime_runs.py --run-id <run_id>
python scripts/sync_prime_runs.py --run-id <id1> --run-id <id2> --steps last3
```

## Related Concepts

- [[vibe-rl]]
- [[rollouts]]
- [[prime-lab]]
- [[verifiers]]

## Related Entities

- [[prime-intellect]]

## Sources

- [[my-first-vibe-rl-experience]]
