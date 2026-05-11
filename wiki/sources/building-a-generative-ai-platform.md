---
created: 2026-04-27
updated: 2026-04-27
tags: [source, architecture, platform, production]
sources: 1
---

# Building A Generative AI Platform

## Metadata

- **Author**: [[chip-huyen]]
- **Date**: 2024-07-25
- **URL**: https://huyenchip.com/2024/07/25/genai-platform.html
- **Fetched**: 2026-04-24
- **Raw file**: `raw/Building A Generative AI Platform.md`

## Summary

A comprehensive architecture guide for production generative AI platforms. Huyen outlines a progression from simple query→model→response to complex systems with context enhancement, guardrails, model routing, caching, complex logic, write actions, observability, and orchestration. Based on studying how companies actually deploy generative AI applications.

## Key Takeaways

- **Progressive complexity**: Start simple (query → model API → response), then add components as needed: context → guardrails → router/gateway → cache → complex logic/write actions.
- **Context construction** (Step 1):
  - [[retrieval-augmented-generation|RAG]] is the primary pattern: term-based retrieval (BM25, Elasticsearch) + embedding-based retrieval (FAISS, ScaNN, ANNOY, HNSW).
  - **Hybrid search** combines both; common pattern is sequential (cheap retriever → expensive reranker).
  - **Agentic RAG**: models can call web search, SQL execution, and other actions as functions.
  - **Query rewriting**: essential for multi-turn conversations; resolves ambiguity and coreference.
  - **Text-to-SQL**: for structured data; may need table schema selection if schemas don't fit in context.
- **Guardrails** (Step 2):
  - **Input**: PII/sensitive data detection (mask or block), jailbreak prevention (topic filtering, anomaly detection).
  - **Output**: empty response detection, format validation (JSON, regex), toxicity detection, hallucination detection (SelfCheckGPT, SAFE), brand-risk monitoring, AI judges for quality.
  - **Failure management**: retry logic, parallel calls (latency vs. cost trade-off), human handoff.
  - **Trade-off**: reliability vs. latency; streaming makes output guardrails harder.
- **Model router and gateway** (Step 3):
  - **Router**: intent classifier routes queries to specialized solutions or models; next-action predictor decides what to do next.
  - **Gateway**: unified API wrapper for multiple providers; access control; cost management; fallback policies; load balancing; logging. Examples: Portkey, MLflow AI Gateway, Kong, Cloudflare.
- **Cache** (Step 4):
  - **Prompt cache**: reuse overlapping prompt segments (e.g., system prompts). Google Gemini offers this as "context cache" with 75% discount.
  - **Exact cache**: store processed items for identical future queries. Useful for multi-step or time-consuming operations.
  - **Semantic cache**: reuse similar queries via embedding similarity. Huyen is skeptical — prone to failure, tricky thresholds, requires vector search overhead.
- **Complex logic and write actions** (Step 5):
  - **Complex logic**: loops, conditional branching, iterative refinement (e.g., planning a Paris itinerary).
  - **Write actions**: models can invoke actions that change state (send email, update database). Requires strict security.
  - **Prompt injection**: major risk when models have access to data sources. Attackers can trick systems into revealing or corrupting data.
- **Observability**:
  - **Metrics**: system (throughput, latency, cost) + model (accuracy, toxicity, hallucination rate). Key latency metrics: TTFT, TBT, TPS, TPOT.
  - **Logs**: log everything — configs, queries, outputs, intermediates, crashes.
  - **Traces**: execution path visualization (e.g., Langsmith). Pinpoint exact failure steps.
- **Orchestration**:
  - Tools: LangChain, LlamaIndex, Flowise, Langflow, Haystack.
  - **Huyen's advice**: start without an orchestrator. External tools add complexity and can abstract away critical details.
  - Evaluate on: integration/extensibility, complex pipeline support, ease of use/performance/scalability.

## Entities Mentioned

- [[chip-huyen]] — author
- [[eugene-yan]] — cited on caching
- Companies with case studies: LinkedIn, Pinterest, Vimeo, Shortwave, Grab, Uber
- Gateway tools: Portkey, MLflow, Kong, Cloudflare, WealthSimple, TrueFoundry
- Orchestration tools: LangChain, LlamaIndex, Flowise, Langflow, Haystack

## Concepts Mentioned

- [[generative-ai-platform]] — core subject
- [[retrieval-augmented-generation]] — context construction pattern
- [[goedel-code-prover-hierarchical-proof-search|Hybrid Search]] — term-based + embedding-based retrieval
- [[guardrails]] — input/output safety and quality controls
- [[how-to-scale-your-model|Model Gateway]] — unified model access layer
- [[understanding-coding-kv-cache-raschka|Prompt Cache]] — inference optimization
- [[understanding-coding-kv-cache-raschka|Semantic Cache]] — embedding-based query deduplication
- [[prompt-engineering|Prompt Injection]] — security risk
- [[observability]] — logs, traces, metrics
- [[answer-ai-source|AI Pipeline Orchestration]] — chaining components
- [[how-to-think-about-gpus|Text-to-SQL]] — structured data retrieval
- [[agentic-rag]] — tool-using RAG systems

## Raw Notes

- The architecture is deliberately general; specific applications will deviate.
- Huyen emphasizes evaluation at every step but explicitly excludes prompt engineering, finetuning, and chunking strategies from this post (covered in her upcoming book).
- The "start without an orchestrator" advice is notable and somewhat contrarian given the hype around LangChain/LlamaIndex.
- Semantic cache skepticism is a useful counter-narrative to the "cache everything with embeddings" trend.

## Questions / Follow-ups

- How has this architecture evolved since July 2024? What new components have emerged?
- Which companies have published updated case studies on their genAI platform architectures?
- How does Huyen's upcoming book *AI Engineering* expand on these topics?
- What are the best practices for balancing streaming UX with output guardrails?
