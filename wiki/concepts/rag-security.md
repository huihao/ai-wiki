---
created: 2026-04-27
updated: 2026-04-27
tags: [authorization, guardrails, rag, security]
sources: 1
---

# RAG Security

## Definition

The set of security concerns and mitigations specific to Retrieval-Augmented Generation systems. RAG security addresses risks that arise when LLMs are given access to external data sources, including unauthorized data access, sensitive information disclosure, prompt injection via retrieved content, and data poisoning.

## Key Risks

### Sensitive Information Disclosure
LLMs may retrieve and expose data the user is not authorized to see. Traditional RBAC does not map well to document-granular RAG retrieval.

### Prompt Injection via Retrieval
An attacker who can control or influence the document corpus may inject malicious instructions that the LLM executes.

### Data Poisoning
Compromised or manipulated source documents can cause the RAG system to generate incorrect or harmful responses.

### Over-Retrieval
Retrieving more context than necessary increases the attack surface and may include unintended sensitive information.

## Mitigation Strategies

| Strategy | Mechanism | Trade-offs |
|---|---|---|
| **Fine-Grained Authorization (FGA)** | Post-retrieval filter based on user-document permissions | Adds latency; requires authorization infrastructure |
| **Embedding-based access control** | Encode permissions into embeddings/retrieval | Complex to implement; may reduce recall |
| **Content redaction** | Strip PII/sensitive fields before ingestion | May remove useful context |
| **Query isolation** | Separate retrieval contexts per user/tenant | Infrastructure overhead |
| **Output guardrails** | Scan generated responses for sensitive data | Reactive; may miss novel leaks |
| **Document sandboxing** | Retrieve but restrict what the LLM can see | Limits context utility |

## Related Concepts

- [[retrieval-augmented-generation]] — target architecture
- [[guardrails]] — broader safety framework
- [[supervised-fine-tuning|Fine-Grained Authorization]] — specific mechanism
- [[prompt-engineering|Prompt Injection]] — attack vector
- [[progressive-disclosure|Sensitive Information Disclosure]] — OWASP LLM risk category
- [[libguides-ai-in-medicine-rss|Data Security in AI]] — general domain

## Sources

- [[llama|Build a Secure RAG Agent Using LlamaIndex and Auth0 FGA]] — practical FGA implementation
- [[generative-ai-platform|Building A Generative AI Platform]] — discusses guardrails and input/output filtering

## Evolution

- **2023**: RAG security was largely an afterthought; most implementations assumed all retrieved data was safe to expose.
- **2024**: OWASP adds "Sensitive Information Disclosure" to LLM Top 10. Vendors (Auth0, AWS, Azure) begin offering RAG-specific authorization solutions.
- **2025**: Fine-grained authorization for RAG becomes a recognized requirement in enterprise deployments. The debate shifts from "should we secure RAG?" to "which authorization model works best?"
