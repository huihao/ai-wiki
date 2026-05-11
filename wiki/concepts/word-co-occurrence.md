---
created: 2026-04-29
updated: 2026-05-09
tags: [linguistics, nlp]
sources: 2
---

# Word Co-Occurrence

## Definition

Word co-occurrence is the statistical pattern of words appearing together within a defined context window (sentence, paragraph, or document). It forms the foundational signal that language models use to learn semantic relationships: "you know a word by the company it keeps," meaning a word's meaning is defined by the words that frequently appear alongside it.

## Key Aspects

- LLMs learn word relationships entirely from co-occurrence patterns during pretraining, without explicit definitions or rules
- The distributional hypothesis (Harris, 1954) formalizes this: words occurring in similar contexts tend to have similar meanings
- Word2Vec and GloVe explicitly encode co-occurrence statistics into dense vector representations, making implicit relationships geometrically accessible
- TF-IDF and PMI (Pointwise Mutual Information) are direct statistical measures of co-occurrence significance between word pairs
- Context window size determines the scope of co-occurrence: small windows capture syntactic relationships, large windows capture semantic and topical relationships
- Polysemy (multiple meanings) is disambiguated by co-occurrence context: "bank" near "river" vs. "bank" near "money" activates different learned representations
- Autoregressive language models extend co-occurrence to sequential prediction: each token prediction is conditioned on all preceding co-occurring tokens
- Co-occurrence statistics are the mechanism by which LLMs encode world knowledge, explaining both their remarkable capabilities and their limitations (correlation without causation)

## Related Concepts

- [[distributional-semantics]]
- [[word-embeddings]]
- [[llm-fundamentals]]

## Sources

- [[an-intuitive-guide-to-how-llms-work]]
