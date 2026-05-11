---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, anti-patterns, team-workflow, best-practices]
sources: 1
---

# How to Use LLMs Without Driving Your Team Mad

## Metadata

- **Author**: Jimmy Thigpen
- **Date**: 2025-11-17
- **URL**: https://thoughtbot.com/blog/how-to-use-llms-without-driving-your-team-mad
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How to use LLMs without driving your team mad.md`

## Summary

Three AI anti-patterns that frustrate development teams, with practical solutions for each. Emphasizes human accountability, planning, and maintaining context in AI-assisted workflows.

## Key Takeaways

- **Magic Bandaid**: Treating LLMs as oracles instead of tools. Pasting error screenshots and accepting convoluted solutions without understanding them creates knowledge gaps and "works but feels wrong" code.
  - *Solution*: Sometimes a 5-minute conversation with a coworker is better. If you can't describe the problem, you're not ready to use AI.
- **Review Time Sink**: AI-generated code has a distinct "smell." Walls of text in PR descriptions and code that reviewers must reverse-engineer.
  - *Solution*: Don't skip planning. Start with your own ideas, then compare with LLM recommendations. Self-review before tagging reviewers. Write concise, proofread PR descriptions.
- **Context Fragmentation**: Auto-generated tests, commit messages, and docs that lack human reasoning. Six months later, you can't explain architecture decisions because you never really made them.
  - *Solution*: Stay in the driver’s seat. Add human context to code, commits, comments, and PRs. Document what you tried that didn't work and why you chose one approach over another.

## Entities Mentioned

- Jimmy Thigpen — author
- thoughtbot — consultancy

## Concepts Mentioned

- [[personal-skills-ai-assisted-nodejs|AI-assisted development]] — integrating LLMs into dev workflows
- [[claude-code-source-leak-harness|Code review]] — human accountability for AI-generated code
- Technical debt — new forms created by AI misuse
- [[context-engineering|Context fragmentation]] — loss of reasoning in AI artifacts

## Raw Notes

See raw file for the full article.

## Questions / Follow-ups

- How do teams successfully institutionalize these practices at scale?
