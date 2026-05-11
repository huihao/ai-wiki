---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Word Analogy

## Definition

Word analogy is a classic evaluation task for word embeddings where the model must solve relations of the form "A is to B as C is to ?" (e.g., "king - man + woman = queen"). It tests whether embeddings capture meaningful semantic and syntactic relationships in vector space.

## Key Aspects

- **Vector Arithmetic**: The task exploits the observation that word2vec and similar embeddings place semantically related words in geometric relationships. Linear offsets in vector space correspond to semantic relations (gender, tense, plurality, comparatives).
- **Evaluation Protocol**: Given a triplet (A, B, C), find D such that `vec(D) ≈ vec(B) - vec(A) + vec(C)`. Cosine similarity is used to find the nearest word to the target vector.
- **Semantic Relations**: Tests capture relationships like country-capital (Paris:France :: Tokyo:Japan), adjective-adjective (big:bigger :: small:smaller), and verb tense (walk:walked :: swim:swam).
- **Limitations**: Accuracy depends heavily on embedding quality and training corpus. The task assumes linear relationships, which may not capture polysemy or complex semantic shifts. Performance degrades on rare words.
- **Historical Significance**: Word analogy was a key benchmark demonstrating that word2vec learned meaningful linguistic regularities, though modern evaluation has shifted to intrinsic probing and downstream task performance.

## Related Concepts

- [[vector-embeddings]]
- [[word-co-occurrence]]
- [[word2vec]]
- [[nn-embedding]]
- [[semantic-space]]

## Sources

- [[vector-embeddings]]
