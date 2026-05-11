---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 大厂AI命题: 《苦涩的教训》

## Metadata

- **Author**: 土豆他爸爸
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/BbMchXGk4rmY66wIOXqAYA
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/大厂AI命题_ 《苦涩的教训》.md`

## Summary

An essay applying Richard Sutton's 2019 essay "The Bitter Lesson" to current big-tech AI product strategy. It argues that human experience and handcrafted SaaS methodologies are short-term effective but long-term losing bets against data + compute + general algorithms. The author contends that "SaaS + AI" approaches (adding AI to existing systems) are fundamentally flawed compared to "AI-native" architectures where the model learns the domain itself.

## Key Takeaways

- **The Bitter Lesson core**: human experience ultimately loses to data + compute + general algorithms, repeatedly and predictably.
- **Short-term vs. long-term**: "teaching machines" (human-crafted rules) works fastest initially; "machines teaching themselves" (learning from data) wins in the long run.
- **SaaS-era product methodology applied to AI is a trap**: using human experience to constrain model上限 limits what the model can achieve.
- **Two paths teams oscillate between**: (1) human-thinks-for-AI → consistent but capped; (2) AI-learns-domain → chaotic initially but scalable once working.
- **The shift**: industry know-how moves from "defining the system itself" to "designing the data and feedback environment for the model."
- **Future competitive advantage**: not who knows the industry best, but who has more data, stronger models, and more compute.
- **Role transformation**: from business modeler → data and model system designer; from writing rules → designing what the system can learn.

## Entities Mentioned

- [[richard-sutton]] — author of "The Bitter Lesson" (2019)

## Concepts Mentioned

- [[the-bitter-lesson]] — Richard Sutton's essay on AI progress favoring general methods with more compute/data
- [[ai-first]] — implied contrast to SaaS+AI approaches
- [[harness-engineering-overview|Harness Engineering]] — indirectly referenced: the infrastructure that lets AI learn rather than being hand-guided
- [[supervised-fine-tuning|Fine-tuning LLMs]] — one path for domain adaptation
- [[retrieval-augmented-generation|RAG]] — mentioned as a common but potentially limiting approach

## Raw Notes

- The author describes their own journey: tried multiple "hot" directions that collectively exited within 6 months, then the next wave, still迷茫 (confused).
- Core metaphor: business越轻 (lighter business logic), AI才越重 (heavier AI can be). Traditional: PM defines logic → engineering implements → system executes. AI mode: architecture fixed → data continuously feeds in → model continuously evolves.
- Key discipline: don't pre-judge for the model. Let it learn.
- Harsh truth: years of industry experience are rapidly depreciating, being distilled by AI.
- What remains valuable: what the system can learn; non-skillizable personal understanding of business, humanity, life.

## Questions / Follow-ups

- How does this reconcile with Harness Engineering's emphasis on explicit constraints and rules?
- Are there domains (regulated industries) where "let AI learn" is inherently unsafe?
- What concrete examples exist of AI-native products outperforming SaaS+AI hybrids?
