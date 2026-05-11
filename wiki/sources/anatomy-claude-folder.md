---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Anatomy of the .claude/ Folder

## Metadata

- **Author**: Avi Chawla
- **Date**: 2026-03-23
- **URL**: https://blog.dailydoseofds.com/p/anatomy-of-the-claude-folder?ref=dailydev
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/Anatomy of the .claude_ Folder.md

## Summary

Complete guide to Claude Code's configuration system including CLAUDE.md, custom commands, skills, agents, and permissions, explaining how to set them up properly.

## Key Takeaways

### Two Folders Structure

**Project-level** `.claude/`:
- Team configuration
- Committed to git
- Shared with everyone

**Global** `~/.claude/`:
- Personal preferences
- Machine-local state
- Session history and auto-memory

### CLAUDE.md: Instruction Manual

**What belongs**:
- Build, test, lint commands
- Key architectural decisions
- Non-obvious gotchas
- Import conventions, naming patterns
- File and folder structure

**What doesn't belong**:
- Linter/formatter config content
- Full documentation you can link to
- Long theory paragraphs

**Keep under 200 lines**: Longer files eat context, instruction adherence drops

### CLAUDE.local.md

Personal overrides gitignored:
- Different test runner preference
- Specific file opening patterns
- Personal coding style tweaks

### rules/ Folder: Modular Instructions

Every markdown file in `.claude/rules/` loads automatically:
- Split instructions by concern
- Each file focused and easy to update
- **Path-scoped rules**: Only activate when working with matching files

Example:
```markdown
---
paths:
- "src/api/**/*.ts"
- "src/handlers/**/*.ts"
---
# API Design Rules
- All handlers return { data, error } shape
- Use zod for request body validation
```

### commands/ Folder: Custom Slash Commands

Every markdown file becomes slash command:
- `review.md` → `/project:review`
- `fix-issue.md` → `/project:fix-issue`

**Features**:
- `!` backtick syntax runs shell commands and embeds output
- `$ARGUMENTS` passes text after command name
- `argument-hint` documents expected arguments

### skills/ Folder: Auto-Invoked Workflows

**Trigger Difference**: Skills watch conversation and act when moment matches description. Commands wait for slash.

Each skill has SKILL.md with YAML frontmatter:
- `description`: When to use
- `allowed-tools`: Restrict capabilities
- Can bundle supporting files

### agents/ Folder: Specialized Subagent Personas

Define subagent personas with:
- System prompt
- Tool access restriction
- Model preference

Tools field restricts what agent can do:
- Security auditor: Read, Grep, Glob only
- Code reviewer: Read, Grep, Glob

Model field for cost optimization:
- Use Haiku for read-only exploration
- Save Sonnet/Opus for work needing them

### settings.json: Permissions

Complete structure:
```json
{
  "$schema": "...",
  "permissions": {
    "allow": [
      "Bash(npm run *)",
      "Bash(git status)",
      "Read",
      "Write",
      "Edit"
    ],
    "deny": [
      "Bash(rm -rf *)",
      "Bash(curl *)",
      "Read(./.env)"
    ]
  }
}
```

- Allow: Run without confirmation
- Deny: Blocked entirely
- Unlisted: Ask before proceeding

### Full Directory Structure

```
your-project/
├── CLAUDE.md
├── CLAUDE.local.md
└── .claude/
    ├── settings.json
    ├── settings.local.json
    ├── commands/
    ├── rules/
    ├── skills/
    └── agents/

~/.claude/
├── CLAUDE.md
├── settings.json
├── commands/
├── skills/
├── agents/
└── projects/ (session history + auto-memory)
```

## Entities Mentioned

- [[avi-chawla|Avi Chawla]] — Author
- [[claude-code|Claude Code]] — Tool being documented
- [[anthropic|Anthropic]] — Claude Code creator

## Concepts Mentioned

- [[claude-md|CLAUDE.md]] — Project instruction file
- [[rules|Rules]] — Modular instruction files
- [[commands|Commands]] — Custom slash commands
- [[skills|Skills]] — Auto-invoked workflows
- [[agents-config|Agents Configuration]] — Subagent personas
- [[permissions|Permissions]] — Allow/deny rules
- [[path-scoped-rules|Path-Scoped Rules]] — Context-dependent instructions
- [[auto-memory|Auto Memory]] — Claude's self-generated notes

## Raw Notes

Key insight: "The .claude folder is a protocol for telling Claude who you are, what your project does, and what rules to follow."

## Questions / Follow-ups

- How do teams manage conflicts in CLAUDE.md?
- What are best practices for rules organization?
- How do skills and commands interact?
- What security issues arise from permissions configuration?
