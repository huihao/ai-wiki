---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Permissions

## Definition

Permissions in the context of AI coding assistants are structured allow/deny rules configured in settings.json that control which tools and operations the agent can execute autonomously, which require confirmation, and which are blocked entirely, forming the security boundary between agent capabilities and user trust.

## Key Aspects

- **Three States**: Allow (run without confirmation), Deny (blocked entirely), Unlisted (ask before proceeding) -- creating a graduated trust model for different tool categories
- **Pattern Matching**: Permission rules use glob patterns for command arguments (e.g., `Bash(npm run *)`, `Bash(git status)`) enabling fine-grained control over specific command invocations
- **Layered Configuration**: Project-level `.claude/settings.json` defines team-shared permissions committed to git; global `~/.claude/settings.json` adds personal overrides; `settings.local.json` provides machine-specific exceptions
- **Security Boundaries**: Deny rules protect sensitive operations (e.g., `Bash(rm -rf *)`, `Bash(curl *)`, `Read(./.env)`), while allow rules reduce friction for safe, routine operations
- **Agent Restriction**: Subagents defined in `.claude/agents/` can have restricted tool sets (e.g., security auditors limited to Read, Grep, Glob), implementing least-privilege at the agent persona level
- **Audit Trail**: Permissions interact with the broader traceability goal of harness engineering, ensuring every agent action has an auditable authorization path

## Related Concepts

- [[path-scoped-rules]] -- Context-dependent instructions that complement permission controls
- [[anatomy-claude-folder]] -- The configuration system where permissions are defined
- [[oauth-2]] -- Authorization framework sharing similar allow/deny/ask patterns
- [[open-source-security]] -- Broader security practices that permissions enforce at the tool level

## Sources

- [[anatomy-claude-folder]]
