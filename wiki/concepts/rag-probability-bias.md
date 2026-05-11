---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# RAG Probability Bias

## Definition
RAG probability bias is the mechanism by which Retrieval-Augmented Generation biases the output probability distribution of an LLM toward specific retrieved information. By injecting relevant documents into the context window, RAG shifts the conditional probability distribution so that the model is more likely to generate tokens consistent with the retrieved content rather than relying solely on its training data.

## Key Aspects
- RAG works by adding retrieved documents to the context, which biases the next-token probability distribution toward content in those documents
- This is a form of probability manipulation: the model's output becomes a blend of its training knowledge and the retrieved context
- Retrieved information can override the model's parametric knowledge, even when that knowledge is correct
- Conversely, irrelevant or incorrect retrieved documents can bias the model toward wrong answers
- The strength of the bias depends on the model's tendency to attend to context vs. parametric memory
- RAG probability bias explains why retrieval quality is critical: bad retrieval does not just fail to help, it actively misleads
- Larger context windows allow more retrieved documents but dilute per-document influence on the probability distribution
- Understanding RAG as probability bias helps explain why prompt engineering, fine-tuning, and RAG are complementary: each shapes the distribution differently

## Related Concepts
- [[prompt-engineering-as-probability]]
- [[retrieval-augmented-generation]]
- [[llm-fundamentals]]
- [[context-window]]

## Sources
- [[an-intuitive-guide-to-how-llms-work]]
