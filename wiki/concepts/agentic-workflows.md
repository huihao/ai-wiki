---
created: 2026-05-11
updated: 2026-05-11
tags: [agent, workflows, tooling]
sources: 0
---

# Agentic Workflows

## Definition

Systems where language models are used to generate code and commands that are executed by tools, shells, notebooks, build systems, and CI jobs. Agentic workflows go beyond simple text generation — the model produces executable actions that read files, mutate workspaces, open network connections, and chain tools together.

## Key Aspects

- Models generate executable actions, not just text
- Actions are executed against real environments
- Requires reliability in command syntax and semantics
- Security concerns around generated command safety
- Small models can be made useful via constrained decoding

## Related Concepts

- [[coding-agent]] — agent that writes and executes code
- [[constrained-decoding]] — improves reliability of generated commands

## Sources

- [[grammar-constrained-bash-generation]] — improving reliability of agentic Bash generation
