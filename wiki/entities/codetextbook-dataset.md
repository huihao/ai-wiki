---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 1
---

# CodeTextbook Dataset

## Summary
The CodeTextbook dataset is a high-quality curated collection of code and educational text created by filtering public data through multiple rounds of quality assessment, used to train Microsoft's Phi-3 small language models. It represents an evolution from the earlier TinyStories approach, using sophisticated prompting and seeding to capture a wider scope of programming knowledge with educational value.

## Key Aspects

- **Quality Over Quantity**: Uses filtered, high-quality data rather than massive raw web scrapes to train SLMs
- **Evolution from TinyStories**: Extended the children's story approach to code and technical content
- **Multi-Stage Curation**: Public data filtered, seeded with prompts, repeatedly quality-checked, then fed to LLM for synthesis
- **Educational Focus**: Content selected for instructional value, similar to how textbooks are curated
- **Enables Small Models**: Allowed Phi-3-mini (3.8B) to outperform models twice its size on coding benchmarks
- **Synthetic Data Component**: LLM-generated content refined through filtering loops
- **Open Philosophy**: Demonstrates that carefully curated smaller datasets can rival raw web-scale training

## Related Concepts

- [[tiny-but-mighty-phi-3]]
- [[small-language-models]]
- [[synthetic-data]]
- [[high-quality-training-data]]

## Sources

- [[tiny-but-mighty-phi-3]]
