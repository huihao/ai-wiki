---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, ai-design, ux]
sources: 1
---

# Proactive AI

## Definition

Proactive AI is an interface paradigm where AI anticipates user needs and offers contextual assistance without requiring explicit prompts. Unlike reactive AI (chatbots waiting for user commands), proactive AI monitors user context in real-time and provides suggestions, actions, or questions at moments when they're most valuable. The goal is to reduce friction and capture opportunities that reactive interfaces miss.

## Core Principles

1. **Supplement agency, don't replace it**: AI suggests but user has final decision
2. **Never force recommendations**: Present as optional choices (Apply/Revert options)
3. **Integrate within workflow**: Not separate conversational interface
4. **Context-aware timing**: Suggest at the right moment within user's natural work
5. **Maintain full context**: Track user state to make relevant recommendations

## Modes of Proactive Assistance (from Tegon case study)

1. **Suggestion mode**: Monitor content as user writes, provide contextual suggestions (missing acceptance criteria, similar issues, improvements). Key innovation: timing — suggestions appear within workflow, not after the fact.
2. **Action mode**: Break down complex tasks into manageable sub-tasks with logical groupings, dependencies, and effort estimates.
3. **Question + Action mode**: Combine suggestions with active questioning for resource allocation, timeline planning ("Based on similar tasks, this takes 2-3 sprints").

## Historical Context

- **Clippy (1997)**: Microsoft Office Assistant had the vision of proactive help but flawed implementation (annoying, poor timing, limited AI capabilities)
- **Regression**: Modern AI assistants (2015-2024) became purely reactive, waiting for explicit commands
- **Modern realization**: 2020+ AI capabilities can properly implement Clippy's original vision

## Related Concepts

- [[reactive-ai]] — chatbot model waiting for prompts (contrast)
- [[ai-interface-design]] — UX patterns for AI integration
- [[contextual-suggestions]] — in-workflow assistance
- [[workflow-integration]] — embedding AI in existing tools
- [[user-agency]] — preserving user control

## Applications

- **Issue trackers**: Tegon — proactive issue creation assistance
- **Code editors**: Proactive pitfall detection, framework-specific suggestions
- **Design tools**: UI improvement suggestions, accessibility checks, iterative refinement guidance
- **Documentation**: Missing sections, relevant examples, consistency checks
- **Communication**: Real-time context during calls, document retrieval
- **Project management**: Bottleneck prediction, optimal team configuration

## Sources

- [[dont-just-slap-on-a-chatbot]] — detailed case study and principles for proactive AI
- [[answer-ai-source]] — Answer.AI's practical R&D approach