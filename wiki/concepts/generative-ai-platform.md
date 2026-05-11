---
created: 2026-04-27
updated: 2026-04-27
tags: [architecture, platform, production]
sources: 1
---

# Generative AI Platform

## Definition

The production infrastructure and architecture for deploying generative AI applications at scale. A genAI platform goes beyond the model itself to include context augmentation, safety guardrails, routing, caching, complex logic execution, write actions, observability, and orchestration. Based on [[chip-huyen]]'s analysis of how companies actually deploy LLM applications.

## Platform Components (Progressive Complexity)

### 1. Context Construction
Giving models access to external information:
- **[[retrieval-augmented-generation|RAG]]** — unstructured documents via term-based (BM25) and embedding-based retrieval
- **Hybrid search** — sequential (cheap retriever → expensive reranker) or ensemble approaches
- **Text-to-SQL** — structured data access
- **Agentic RAG** — models call web search, APIs, or databases as actions
- **Query rewriting** — resolve ambiguity and coreference in multi-turn conversations

### 2. Guardrails
Safety and quality controls:
- **Input**: PII detection, jailbreak prevention, topic filtering
- **Output**: format validation, toxicity detection, hallucination detection (SelfCheckGPT, SAFE), brand-risk monitoring
- **Failure management**: retry logic, parallel calls, human handoff
- **Trade-off**: reliability vs. latency; streaming complicates output guardrails

### 3. Model Router and Gateway
- **Router**: intent classifier → specialized model/solution; next-action predictor
- **Gateway**: unified API for multiple providers; access control; cost management; fallback policies
- **Examples**: Portkey, MLflow AI Gateway, Kong, Cloudflare AI Gateway

### 4. Cache
- **Prompt cache**: reuse overlapping segments (system prompts, long documents). Google Gemini "context cache" offers 75% discount.
- **Exact cache**: identical query deduplication. Fast, reliable.
- **Semantic cache**: embedding-based similarity. Huyen is skeptical due to failure modes and threshold tuning difficulty.

### 5. Complex Logic and Write Actions
- **Complex logic**: loops, branching, iterative refinement (e.g., planning, decomposition)
- **Write actions**: models invoke state-changing operations (send email, update DB)
- **Security**: prompt injection is the key risk when models access data sources

### 6. Observability
- **Metrics**: system (throughput, latency, cost) + model (accuracy, toxicity, hallucination)
  - Latency: TTFT, TBT, TPS, TPOT
- **Logs**: everything — configs, queries, outputs, intermediates
- **Traces**: execution path visualization (Langsmith, etc.)

### 7. Orchestration
Tools: LangChain, LlamaIndex, Flowise, Langflow, Haystack.
**Best practice**: start without an orchestrator; add only when complexity justifies it.

## Related Concepts

- [[ai-engineering]] — the discipline that builds these platforms
- [[retrieval-augmented-generation]] — core context pattern
- [[llm-agents]] — agentic RAG and write actions
- [[how-to-scale-your-model|Model Gateway]] — unified model access
- [[guardrails]] — safety layer
- [[understanding-coding-kv-cache-raschka|Prompt Cache]] — latency/cost optimization
- [[observability]] — monitoring and debugging
- [[answer-ai-source|AI Pipeline Orchestration]] — component chaining

## Sources

- [[generative-ai-platform|Building A Generative AI Platform]] — canonical architecture reference

## Evolution

- **2023**: Early genAI deployments were simple API wrappers around OpenAI.
- **2024**: Companies added RAG, guardrails, and routing. Platform architectures converged on the pattern Huyen describes.
- **2025**: Caching (especially prompt cache) and semantic cache become more prevalent. Multi-model routing is standard. Security concerns (prompt injection) drive investment in guardrails.
