---
created: 2026-04-28
updated: 2026-04-28
tags: [source, ai-design, ux, proactive-ai]
sources: 1
---

# Don't just slap on a chatbot: building AI that works before you ask

## Metadata

- **Author**: Arthur Objartel, Travis Turner (Evil Martians)
- **Date**: 2024-12-30
- **URL**: https://evilmartians.com/chronicles/dont-just-slap-on-a-chatbot-building-ai-that-works-before-you-ask
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Don't just slap on a chatbot_ building AI that works before you ask—Martian Chronicles, Evil Martian.md`

## Summary

A product-design essay arguing against reactive chatbot interfaces and for proactive AI that anticipates user needs. Uses the Tegon issue tracker as a case study, presenting three modes of proactive assistance and principles for implementation.

## Key Takeaways

- **The Clippy parallel**: Modern AI has regressed from Clippy's vision of proactive assistance to purely reactive chat interfaces. Today's tech can finally realize that vision properly.
- **Three modes of proactive AI** (demonstrated on Tegon issue tracker):
  1. **Suggestion mode**: AI monitors content as user writes and provides contextual suggestions (missing acceptance criteria, unmentioned user-facing impact, similar issues). Key innovation is timing — suggestions appear within workflow, not after the fact.
  2. **Action mode**: AI breaks down complex tasks into manageable sub-tasks with logical groupings, dependencies, and effort estimates.
  3. **Question + Action mode**: Combines suggestions with active questioning for resource allocation and timeline planning ("Based on similar tasks, this takes 2-3 sprints").
- **Core principles for proactive AI**:
  - Supplement user agency, don't replace it
  - Never force recommendations — present as optional
  - Integrate within natural workflow, not as separate conversational interface
  - Users have final say through Apply/Revert options
- **Applications beyond issue tracking**: Code editors (proactive pitfall detection), design tools (UI improvement suggestions, accessibility checks), documentation tools (missing sections, consistency), communication tech (real-time context), project management (bottleneck prediction, optimal team configuration).

## Entities Mentioned

- Evil Martians — consultancy, authors
- Tegon — open-source issue tracker, case study
- [[phi-4-microsoft-collection|Microsoft]] — Clippy reference
- Irina Nazarova — CEO at Evil Martians

## Concepts Mentioned

- [[answer-ai-source|Proactive AI]] — anticipating user needs without explicit prompts
- [[answer-ai-source|Reactive AI]] — waiting for user commands (chatbot model)
- [[ai-coding-agent-design|AI Interface Design]] — UX patterns for AI integration
- Contextual Suggestions — in-workflow assistance
- User Agency — preserving user control over AI recommendations
- [[ai-frontier-workflow|Workflow Integration]] — embedding AI within existing tools

## Raw Notes

- Based on real client work with Tegon.
- Emphasizes that AI interface design is still nascent — no fully-formed playbook exists.
- Chat interfaces "opened the door of possibility" but shouldn't be the endpoint.

## Questions / Follow-ups

- What are the best examples of proactive AI in production products today?
- How do you balance proactivity with avoiding notification fatigue?
