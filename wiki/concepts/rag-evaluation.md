---
created: 2026-04-28
updated: 2026-05-09
tags: [evaluation, information-retrieval, metrics, rag]
sources: 3
---

# RAG Evaluation

## Definition
RAG evaluation is the practice of systematically measuring the quality, accuracy, and effectiveness of Retrieval-Augmented Generation systems across both their retrieval and generation components. It encompasses metrics for retrieval quality (whether the right documents are retrieved), generation quality (whether the LLM produces accurate and faithful answers given the retrieved context), and end-to-end quality (whether the complete system answers user questions correctly). Unlike traditional LLM evaluation, RAG evaluation must account for the interaction between retrieval and generation, diagnosing whether failures stem from poor retrieval, poor generation, or a mismatch between them.

## Key Proponents / Critics
- [[deepset]] — developed RAGAS (Retrieval Augmented Generation Assessment), a widely-used RAG evaluation framework
- Shahul Es — creator of RAGAS evaluation framework
- Exploding Gradients — core contributor to RAGAS and RAG evaluation research

## Related Concepts
- [[rag-architecture]] — RAG evaluation assesses the full RAG pipeline architecture
- [[retrieval-augmented-generation]] — the system being evaluated
- [[evaluation-metrics]] — the broader category of metrics frameworks that RAG evaluation extends
- [[re-ranking]] — re-ranking quality is one component measured in RAG evaluation
- [[chunking-strategy]] — retrieval quality metrics help evaluate chunking strategy effectiveness
- [[llm-evaluation]] — RAG evaluation extends LLM evaluation with retrieval-specific metrics
- [[llm-as-judge]] — LLM-based evaluation is commonly used for RAG generation quality assessment
- [[mteb-leaderboard]] — benchmarks embedding models, a key component of retrieval quality

## Related Entities
- [[deepset]] — developed the RAGAS evaluation framework
- [[ragflow]] — RAG framework with built-in evaluation capabilities
- [[langfuse]] — observability platform that supports RAG evaluation tracing

## Sources
- [[advanced-techniques-rag]] — discusses evaluation methods for advanced RAG systems
- [[5-python-libraries-build-optimized-rag-system]] — covers evaluation libraries for RAG pipelines
- [[rag-pipelines-from-scratch]] — explains evaluation practices for building RAG from scratch

## Evolution
- **2023**: First RAG-specific evaluation papers emerge alongside early RAG frameworks
- **2023**: RAGAS framework released, introducing faithfulness, answer relevance, and context precision metrics
- **2024**: RAGAS adds comprehensive evaluation for faithfulness, answer relevance, context recall, and context precision
- **2024**: RAGAS integrates with LangSmith and LangFuse for pipeline-level evaluation
- **2024**: ARES (Automated RAG Evaluation System) introduces LLM-based synthetic evaluation data generation
- **2025**: Multi-dimensional RAG evaluation (including latency, cost, and faithfulness) becomes standard practice
