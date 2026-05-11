---
created: 2026-04-28
updated: 2026-04-28
tags: [communication, debugging, methodology]
sources: 1
---

# Rubber Duck Debugging

## Definition

A debugging technique where a programmer explains their code or problem aloud, line by line, to an inanimate object (traditionally a rubber duck). The act of articulating assumptions and logic often reveals the bug without any external help. The duck serves as a silent listener that forces the programmer to externalize their mental model.

## Key Attributes

- **Origin**: story from book "The Pragmatic Programmer"
- **Mechanism**: externalizing thought reveals hidden assumptions
- **Process**: explain code aloud, line by line, including assumptions
- **Effect**: often finds bug during explanation, before finishing
- **Cost**: zero (just need a duck or any object)

## How It Works

- Programmer forces themselves to articulate each step
- Verbalization makes implicit assumptions explicit
- Contradictions become obvious when spoken aloud
- Self-correction happens during explanation
- Works because bugs are often wrong mental models

## Variations

- Explain to colleague (who stays silent)
- Explain to empty room
- Explain to recording device
- Write out explanation in comments

## Related Concepts

- [[debugging-techniques]] — one of several debugging methods
- [[mental-model]] — debugging targets model-reality divergence
- [[self-explanation]] — general learning technique

## Sources

- [[beejs-guide-learning-computer-science]] — Beej lists rubber duck as learning hack

## Contradictions / Open Questions

- Why does verbalization reveal bugs that silent analysis misses?
- Is there a risk of reinforcing wrong explanations?
- How does this interact with AI assistants (who might respond)?