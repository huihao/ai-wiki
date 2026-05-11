# Curse of Instructions

Performance degradation phenomenon where models struggle to satisfy many requirements simultaneously, causing adherence to drop significantly as instructions pile up.

## Empirical Evidence

Research (OpenReview, Maxpool) confirmed:
- GPT-4 and Claude struggle when asked to satisfy many requirements simultaneously
- Present 10 bullet points → model obeys first few, starts overlooking others
- Too many directives → following none well

## Practical Manifestation

When stuffing entire project into single prompt:
- Risk hitting token limits
- Risk model losing focus
- Quality drops as context balloons
- Complex requirements → sequential simple instructions better

## Solution: Modular Approach

### Divide and Conquer
- Give AI one focused task at a time
- Don't mix authentication + database schema in one prompt
- Keep prompts tightly scoped to current goal
- Sequential, simple instructions better than simultaneous complex ones

### Hierarchical Summarization
- Extended TOC with summaries acting as index
- Each section condensed to key points + reference tag
- "Security: use HTTPS, protect API keys (see §4.2)"
- Agent consults outline, then flips to relevant section on demand

### Subagents/Skills
- Specialized agents for specific domains
- Database Designer agent: only data model section
- API Coder agent: only endpoints section
- Smaller context window per agent
- Focused role → higher accuracy

## Research Reference

"Curse of Instructions" study (Maxpool): demonstrates systematic degradation as instruction count increases.

## Mitigation Strategies

- One task focus per prompt
- Relevant info only (no stale/irrelevant data)
- Start fresh sessions between major features
- Refresh context per major task
- Use TODO comments as mini-specs

## Related Concepts

- [[modular-context-management]] — Strategy avoiding curse
- [[spec-driven-development]] — Structured approach mitigating curse
- [[context-engineering]] — Managing AI attention budget

## Related Sources

- [[how-to-write-a-good-spec-for-ai-agents]] — Detailed mitigation strategies

## Related Entities

- [[addy-osmani]] — Documenting curse and solutions