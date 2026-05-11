---
created: 2026-04-28
updated: 2026-05-09
tags: [ai-training, alignment, safety]
sources: 2
---

# Constitutional AI

## Definition

Constitutional AI (CAI) is a training methodology developed by Anthropic that aligns AI systems with a set of written principles (a "constitution") by having the model critique and revise its own outputs. Instead of relying solely on human feedback for every training example, CAI uses a two-phase process: first, the model generates responses and then self-critiques based on constitutional principles; second, human feedback is used to train a preference model that further refines the model's behavior. This approach reduces the reliance on large-scale human labeling while improving the consistency and transparency of the alignment process.

## Key Proponents / Critics

- [[anthropic]] — developed Constitutional AI as its core alignment methodology for Claude
- [[geoffrey-hinton]] — researcher whose work on AI safety influenced the need for principled alignment approaches like CAI

## Related Concepts

- [[alignment]] — CAI is a specific technique for achieving the broader goal of value alignment
- [[ai-safety]] — CAI addresses safety concerns by embedding explicit principles into training
- [[reinforcement-learning-from-human-feedback]] — CAI extends RLHF by adding a self-supervision phase guided by principles
- [[reward-model]] — CAI trains a reward model on constitutionally-critiqued data rather than raw human labels
- [[constitutional-ai]] — the self-critique and revision mechanism central to CAI
- [[supervised-fine-tuning]] — the supervised phase where the model learns to revise its outputs per constitutional principles
- [[preference-learning]] — CAI produces preference data through principled self-critique

## Related Entities

- [[anthropic]] — the company that developed and published Constitutional AI
- [[claude]] — Anthropic's model family trained using Constitutional AI methods

## Sources

- [[anthropic-api-documentation]] — documentation covering Claude's alignment methodology
- [[rlhf-book-nathan-lambert]] — context on alignment training methods including CAI

## Evolution

- **2022**: Anthropic publishes the Constitutional AI paper introducing the framework
- **2023**: Constitutional AI is applied to training Claude, Anthropic's first commercial model
- **2024**: CAI principles are expanded and refined across Claude model generations
- **2025**: Constitutional AI remains a core part of Anthropic's alignment strategy; the "constitution" concept inspires similar approaches at other organizations
