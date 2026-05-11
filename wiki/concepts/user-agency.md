---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# User Agency

## Definition

User agency in AI design is the principle that AI systems should augment and support human decision-making rather than replace it, ensuring the user retains final control over actions, can review and revert AI suggestions, and the system operates as an assistant rather than an autonomous decision-maker.

## Key Aspects

- The core principle is "supplement user agency, don't replace it": AI should present options and recommendations but never force them on the user.
- Proactive AI systems (like the Tegon issue tracker example) demonstrate agency-preserving design through Apply/Revert buttons that let users accept or reject AI suggestions after reviewing them.
- The Clippy parallel illustrates the historical lesson: early proactive assistants failed because they were intrusive and unable to respect user context; modern AI must be equally proactive but less insistent.
- Agency-preserving design requires that suggestions appear within the natural workflow (inline, contextual) rather than as separate conversational interruptions that break the user's flow of work.
- In coding agents, user agency manifests as human-in-the-loop review: agents propose changes, but developers review diffs before applying them, maintaining ownership of the codebase.
- The principle extends to transparency: users should be able to understand why an AI made a suggestion, what data it used, and what alternatives it considered.
- When AI systems operate without agency preservation (fully autonomous code deployment, unsupervised actions), the risk of catastrophic errors increases because no human checks the output.

## Related Concepts

- [[proactive-ai]] -- AI that anticipates needs while respecting user control
- [[workflow-integration]] -- embedding AI within existing user workflows
- [[ai-safety]] -- the broader discipline of preventing unintended AI behaviors

## Sources

- [[dont-just-slap-on-a-chatbot]]
