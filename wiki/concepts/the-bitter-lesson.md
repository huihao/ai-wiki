---
created: 2026-04-28
updated: 2026-04-28
tags: [ai-strategy, philosophy]
sources: 1
---

# The Bitter Lesson

## Definition

A 2019 essay by Richard Sutton arguing that the greatest progress in AI historically comes from methods that leverage computation and data rather than human knowledge and handcrafted features. The "bitter" aspect is that decades of human domain expertise often become obstacles rather than assets once general learning methods with sufficient scale are applied.

## Key Proponents / Critics

- **Author**: [[richard-sutton]] (DeepMind, co-author of Reinforcement Learning: An Introduction)
- **Supporters**: OpenAI, many scale-first AI researchers
- **Skeptics / Balancers**: Harness engineering practitioners who argue that unconstrained AI in production requires explicit rules and constraints for safety

## Related Concepts

- [[ai-first]] — organizational strategy aligned with the bitter lesson
- [[harness-engineering-overview|Harness Engineering]] — may appear contradictory; resolves as "design the learning environment, not the answers"
- [[supervised-fine-tuning|Fine-tuning LLMs]] — human-guided adaptation that may conflict with scale-first philosophy
- [[retrieval-augmented-generation|RAG]] — hand-curated knowledge that the bitter lesson suggests may be transient
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-Driven Development]] — explicit human constraints that some view as limiting model potential

## Sources

- [[bitter-lesson-big-tech-ai]] — application to big-tech AI product strategy
- Original essay: http://www.incompleteideas.net/IncIdeas/BitterLesson.html

## Evolution

- **2019**: Essay published; influential in RL and game-playing AI communities.
- **2022–2024**: LLM era validates the lesson — emergent capabilities from scale surprise experts who predicted they wouldn't appear.
- **2025–2026**: Tension emerges. Production AI systems need harnesses, specs, and constraints (human engineering) to be safe and reliable, creating a dialectic with the "let the model learn" philosophy. Current synthesis: human engineers design the feedback environment and data pipelines; models learn within that structure.
