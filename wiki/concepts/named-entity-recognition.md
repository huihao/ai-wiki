---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Named Entity Recognition

## Definition

Named Entity Recognition (NER) is a natural language processing task that identifies and classifies named entities in text into predefined categories such as person names, organizations, locations, dates, and other categories. It is a foundational component of information extraction and knowledge graph construction.

## Key Aspects

- NER is one of the structured prediction tasks used to probe LLMs for linguistic knowledge via structured prompting
- GPT-Neo models can perform NER from few examples using in-context learning, with errors being linguistically reasonable (confusing related entity types)
- Prompting success for NER depends critically on label choices: shuffling labels hurts performance significantly, while using category names instead of abbreviations performs nearly as well
- Data contamination affects NER evaluation: pretraining datasets like the Pile contain many NER examples from GitHub and arXiv, meaning models may have memorized task-specific patterns
- Models combine in-context examples with prior knowledge from pretraining, but prioritize learned knowledge when it conflicts with the prompt
- NER is a key component in multimodal RAG systems, where entity extraction from documents feeds into knowledge graph construction
- Larger models show better in-context learning for NER, suggesting scaling improves task adaptation

## Related Concepts

- [[nn-embedding]]
- [[multimodal-rag]]

## Sources

- [[what-do-llms-know-about-linguistics]]
- [[vector-embeddings]]
